#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

typedef uint64_t SNAKEVAL;
extern SNAKEVAL our_code_starts_here();
extern void error(uint64_t err_code, SNAKEVAL val);
extern SNAKEVAL print(SNAKEVAL val);
extern SNAKEVAL input();
extern SNAKEVAL equal(SNAKEVAL val1, SNAKEVAL val2);

const uint64_t NUM_TAG_MASK     = 0x0000000000000001;
const uint64_t BOOL_TAG_MASK    = 0x0000000000000007;
const uint64_t TUPLE_TAG_MASK   = 0x0000000000000007;
const uint64_t CLOSURE_TAG_MASK = 0x0000000000000007;
const uint64_t NUM_TAG          = 0x0000000000000000;
const uint64_t BOOL_TAG         = 0x0000000000000007;
const uint64_t TUPLE_TAG        = 0x0000000000000001;
const uint64_t CLOSURE_TAG      = 0x0000000000000005;
const uint64_t BOOL_TRUE        = 0xFFFFFFFFFFFFFFFF;
const uint64_t BOOL_FALSE       = 0x7FFFFFFFFFFFFFFF;
const uint64_t NIL              = ((uint64_t)NULL | TUPLE_TAG);

const int64_t MAX_SNAKE_INT = 4611686018427387903;
const int64_t MIN_SNAKE_INT = -4611686018427387904;

const uint64_t ERR_COMP_NOT_NUM     = 1;
const uint64_t ERR_ARITH_NOT_NUM    = 2;
const uint64_t ERR_LOGIC_NOT_BOOL   = 3;
const uint64_t ERR_IF_NOT_BOOL      = 4;
const uint64_t ERR_OVERFLOW         = 5;
const uint64_t ERR_GET_NOT_TUPLE    = 6;
const uint64_t ERR_GET_LOW_INDEX    = 7;
const uint64_t ERR_GET_HIGH_INDEX   = 8;
const uint64_t ERR_GET_NOT_NUM      = 9;
const uint64_t ERR_NIL_DEREF        = 10;
const uint64_t ERR_OUT_OF_MEMORY    = 11;
const uint64_t ERR_SET_NOT_TUPLE    = 12;
const uint64_t ERR_SET_LOW_INDEX    = 13;
const uint64_t ERR_SET_NOT_NUM      = 14;
const uint64_t ERR_SET_HIGH_INDEX   = 15;
const uint64_t ERR_CALL_NOT_CLOSURE = 16;
const uint64_t ERR_CALL_ARITY_ERR   = 17;
const uint64_t ERR_INDEX_NOT_NUMBER = 18;
const uint64_t ERR_LET_TUPLE_MISMATCH = 19;

typedef struct equal_cache {
  SNAKEVAL left;
  SNAKEVAL right;
} equal_cache;

int ensure_cache(equal_cache** p_cache, int last, int size, int needed) {
  int minneeded = last + needed;
  if (minneeded >= size) {
    int doubled = size * 2;
    int newsize = (doubled > minneeded) ? doubled : minneeded;
    equal_cache* newcache = (equal_cache*)realloc(*p_cache, size * 2 * sizeof(equal_cache));
    if (newcache != NULL) {
      *p_cache = newcache;
      return newsize;
    } else {
      fprintf(stderr, "Internal error while trying to compute equality\n");
      return 0;
    }
  }
  return size;
}

SNAKEVAL equal(SNAKEVAL val1, SNAKEVAL val2) {
  int size = 100;
  equal_cache* cache = (equal_cache*)calloc(size, sizeof(equal_cache));
  int cur = 0;
  int last = 1;
  SNAKEVAL ans = BOOL_TRUE;
  cache[cur].left = val1;
  cache[cur].right = val2;
  while (cur < last) {
    val1 = cache[cur].left;
    val2 = cache[cur].right;
    cur++;
    if (val1 == val2) { continue; }
    if (val1 == NIL || val2 == NIL) { ans = BOOL_FALSE; break; }
    int found_cached = -1;
    for (int i = 0; i < cur - 1; i++) {
      if (cache[i].left == val1 && cache[i].right == val2) {
        found_cached = i;
        break;
      }
    }
    if (found_cached > -1) { continue; }
    if ((val1 & TUPLE_TAG_MASK) == TUPLE_TAG && (val2 & TUPLE_TAG_MASK) == TUPLE_TAG) {
      uint64_t *tup1 = (uint64_t*)(val1 - TUPLE_TAG);
      uint64_t *tup2 = (uint64_t*)(val2 - TUPLE_TAG);
      if (tup1[0] != tup2[0]) { ans = BOOL_FALSE; break; }
      size = ensure_cache(&cache, last, size, tup1[0]);
      if (size == 0) {
        free(cache);
        return BOOL_FALSE;
      }
      for (int i = 1; i <= tup1[0] >> 1; i++) {
        cache[last].left = tup1[i];
        cache[last].right = tup2[i];
        last++;
      }
      continue;
    }
    ans = BOOL_FALSE;
    break;
  }
  free(cache);
  return ans;
}

int tupleCounter = 0;
void printHelp(FILE *out, SNAKEVAL val) {
  if (val == NIL) {
    fprintf(out, "nil");
  }
  else if((val & NUM_TAG_MASK) == NUM_TAG) {
    fprintf(out, "%lld", ((int64_t)val) >> 1);
  }
  else if(val == BOOL_TRUE) {
    fprintf(out, "true");
  }
  else if(val == BOOL_FALSE) {
    fprintf(out, "false");
  }
  else if ((val & CLOSURE_TAG_MASK) == CLOSURE_TAG) {
    fprintf(out, "<function>");
  }
  else if ((val & TUPLE_TAG_MASK) == TUPLE_TAG) {
    uint64_t* addr = (uint64_t*)(val - TUPLE_TAG);
    if ((*addr & 0x8000000000000000) != 0) {
      fprintf(out, "<cyclic tuple %d>", (int)(*addr & 0x7FFFFFFFFFFFFFFF));
      return;
    }
    int temp = (int)addr[0];
    int len = temp >> 1;
    *(addr) = 0x8000000000000000 | (++tupleCounter);
    fprintf(out, "(");
    for (int i = 1; i <= len; i++) {
      if (i > 1) fprintf(out, ", ");
      printHelp(out, addr[i]);
    }
    if (len == 1) fprintf(out, ",");
    fprintf(out, ")");
    // Unmark this tuple: restore its length
    *(addr) = temp; // length is encoded
  }
  else {
    fprintf(out, "Unknown value: %#018llx", val);
  }
}


SNAKEVAL input() {
  char line[60];
  char *end;
  size_t len = 0;

  scanf("%58s", line);

  int64_t num = strtol(line, &end, 10);
  if (*end != '\0') {
    if (strcmp(end, "false") == 0) {
      return BOOL_FALSE;
    }
    else if (strcmp(end, "true") == 0) {
      return BOOL_TRUE;
    } else {
      fprintf(stderr, "Invalid input to program %c\n", *end);
      exit(1);
    }
  }
  if (num > MAX_SNAKE_INT) {
    // fprintf(stderr, "Number %ld is not supported is this language, over max", num);
    error(5, (SNAKEVAL)(num << 1));
  } else if (num < MIN_SNAKE_INT) {
    // fprintf(stderr, "Number %ld is not supported is this language, under min", num);
    error(5, (SNAKEVAL)(num << 1));
  }
  // printf("%ld", num);
  return (SNAKEVAL)(num << 1);
}

SNAKEVAL print(SNAKEVAL val) {
  printHelp(stdout, val);
  printf("\n");
  fflush(stdout);
  return val;
}


void error(uint64_t code, SNAKEVAL val) {
  switch (code) {
  case ERR_COMP_NOT_NUM:
    fprintf(stderr, "Error: comparison expected a number, got "); printHelp(stderr, val);
    break;
  case ERR_ARITH_NOT_NUM:
    fprintf(stderr, "Error: arithmetic expected a number, got "); printHelp(stderr, val);
    break;
  case ERR_LOGIC_NOT_BOOL:
    fprintf(stderr, "Error: logic expected a boolean, got "); printHelp(stderr, val);
    break;
  case ERR_IF_NOT_BOOL:
    fprintf(stderr, "Error: if expected a boolean, got "); printHelp(stderr, val);
    break;
  case ERR_OVERFLOW:
    fprintf(stderr, "Error: Integer overflowed with value, got "); printHelp(stderr, val);
    break;
  case ERR_GET_NOT_TUPLE:
    fprintf(stderr, "Error: get expected tuple, got "); printHelp(stderr, val);
    break;
  case ERR_GET_LOW_INDEX:
    fprintf(stderr, "Error: index too small to get, got %lld\n", (uint64_t)val);
    break;
  case ERR_GET_HIGH_INDEX:
    fprintf(stderr, "Error: index too large to get, got %lld\n", (uint64_t)val);
    break;
  case ERR_GET_NOT_NUM:
    fprintf(stderr, "Error: get expected numeric index, got "); printHelp(stderr, val);
    break;
  case ERR_NIL_DEREF:
    fprintf(stderr, "Error: tried to access component of nil\n");
    break;
  case ERR_OUT_OF_MEMORY:
    fprintf(stderr, "Error: out of memory\n");
    break;
  case ERR_SET_NOT_TUPLE:
    fprintf(stderr, "Error: set expected tuple\n");
    break;
  case ERR_SET_LOW_INDEX:
    fprintf(stderr, "Error: index too small to set\n");
    break;
  case ERR_SET_HIGH_INDEX:
    fprintf(stderr, "Error: index too large to set\n");
    break;
  case ERR_SET_NOT_NUM:
    fprintf(stderr, "Error: set expected numeric index, got "); printHelp(stderr, val);
    break;
  case ERR_CALL_NOT_CLOSURE:
    fprintf(stderr, "Error: tried to call a non-closure value: "); printHelp(stderr, val);
    break;
  case ERR_CALL_ARITY_ERR:
    fprintf(stderr, "Error: arity mismatch in call\n");
    break;
  case ERR_INDEX_NOT_NUMBER:
    fprintf(stderr, "Error: index is not a number: "); printHelp(stderr, val);
    break;
  case ERR_LET_TUPLE_MISMATCH:
    fprintf(stderr, "Error: let bindings is less arity than tuple arity: "); printHelp(stderr, val);
    break;
  default:
    fprintf(stderr, "Error: Unknown error code: %lld, val: ", code); printHelp(stderr, val);
  }
  exit(code); /* Terminates the program. */
}

int main(int argc, char** argv) {

  SNAKEVAL result = our_code_starts_here(); 
  print(result);
  return 0;
}
