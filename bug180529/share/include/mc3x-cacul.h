//#define _MULINT_CC
#ifdef _MULINT_CC
int  mulint_cc(unsigned char a,unsigned char b)
{
    int result = 0;
    int bb = b;
    unsigned char i;

    for (i = 0; i < 8u; i++) {
      if (a & 0x0001u) result += bb;
      a = ((unsigned char)a) >> 1u;
      bb <<= 1u;
    } // for i

    return result;
}
#endif
#ifdef _MULINT_IC 
int  mulint_ic(int a,unsigned char b)
{
    int result = 0;
    int bb = b;
    unsigned char i;

    for (i = 0; i < 8u; i++) {
      if (a & 0x0001u) result += bb;
      if (sizeof (a) > 1 && (a & 0x00000100ul)) result += (bb << 8u);
      if (sizeof (a) > 2 && (a & 0x00010000ul)) result += (bb << 16u);
      if (sizeof (a) > 3 && (a & 0x01000000ul)) result += (bb << 24u);
      a = ((unsigned int)a) >> 1u;
      bb <<= 1u;
    } // for i

    return result;
}
#endif
#ifdef _MULLONG_IC
long  mullong_ic(int a,unsigned char b)
{
    long result = 0;
    long bb = b;
    unsigned char i;

    for (i = 0; i < 8u; i++) {
      if (a & 0x0001u) result += bb;
      if (sizeof (a) > 1 && (a & 0x00000100ul)) result += (bb << 8u);
      if (sizeof (a) > 2 && (a & 0x00010000ul)) result += (bb << 16u);
      if (sizeof (a) > 3 && (a & 0x01000000ul)) result += (bb << 24u);
      a = ((unsigned int)a) >> 1u;
      bb <<= 1u;
    } // for i

    return result;
}
#endif
#ifdef _MULLONG_II
long  mullong_ii(int a,int b)
{
    long result = 0;
    long bb = b;
    unsigned char i;

    for (i = 0; i < 8u; i++) {
      if (a & 0x0001u) result += bb;
      if (sizeof (a) > 1 && (a & 0x00000100ul)) result += (bb << 8u);
      if (sizeof (a) > 2 && (a & 0x00010000ul)) result += (bb << 16u);
      if (sizeof (a) > 3 && (a & 0x01000000ul)) result += (bb << 24u);
      a = ((unsigned int)a) >> 1u;
      bb <<= 1u;
    } // for i

    return result;
}
#endif
#ifdef _MULLONG_LC
long  mullong_lc(long a,unsigned char b)
{
    long result = 0;
    long bb = b;
    unsigned char i;

    for (i = 0; i < 8u; i++) {
      if (a & 0x0001u) result += bb;
      if (sizeof (a) > 1 && (a & 0x00000100ul)) result += (bb << 8u);
      if (sizeof (a) > 2 && (a & 0x00010000ul)) result += (bb << 16u);
      if (sizeof (a) > 3 && (a & 0x01000000ul)) result += (bb << 24u);
      a = ((unsigned long)a) >> 1u;
      bb <<= 1u;
    } // for i

    return result;
}
#endif
#ifdef _MULLONG_LI
long  mullong_li(long a,int b)
{
    long result = 0;
    long bb = b;
    unsigned char i;

    for (i = 0; i < 8u; i++) {
      if (a & 0x0001u) result += bb;
      if (sizeof (a) > 1 && (a & 0x00000100ul)) result += (bb << 8u);
      if (sizeof (a) > 2 && (a & 0x00010000ul)) result += (bb << 16u);
      if (sizeof (a) > 3 && (a & 0x01000000ul)) result += (bb << 24u);
      a = ((unsigned long)a) >> 1u;
      bb <<= 1u;
    } // for i

    return result;
}
#endif
#ifdef _DIVUCHAR_IC
unsigned char divuchar_ic(unsigned int a, unsigned char b)
{
  unsigned char result = 0;
  unsigned char mask = 0x01;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned char)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(b & (1UL << (8*sizeof(unsigned char)-1)))) {
    b <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= b) {
      result += mask;
      a -= b;
    } // if
    b >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVUCHAR_II
unsigned char divuchar_ii(unsigned int a, unsigned int b)
{
  unsigned char result = 0;
  unsigned char mask = 0x01;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned char)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(b & (1UL << (8*sizeof(unsigned int)-1)))) {
    b <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= b) {
      result += mask;
      a -= b;
    } // if
    b >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVUCHAR_LI
unsigned char divuchar_li(unsigned long a, unsigned int b)
{
  unsigned char result = 0;
  unsigned long mask = 0x01;
  unsigned long bb = b;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned char)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(bb & (1UL << (8*sizeof(unsigned long)-1)))) {
    bb <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= bb) {
      result += mask;
      a -= bb;
    } // if
    bb >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVUCHAR_LL
unsigned char divuchar_ll(unsigned long a, unsigned long b)
{
  unsigned char result = 0;
  unsigned long mask = 0x01;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned char)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(b & (1UL << (8*sizeof(unsigned long)-1)))) {
    b <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= b) {
      result += mask;
      a -= b;
    } // if
    b >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVUINT_IC
unsigned int divuint_ic(unsigned int a, unsigned char b)
{
  unsigned int result = 0;
  unsigned int mask = 0x01;
  unsigned int bb = b;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned char)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(bb & (1UL << (8*sizeof(unsigned int)-1)))) {
    bb <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= bb) {
      result += mask;
      a -= bb;
    } // if
    bb >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVUINT_LC
unsigned int divuint_lc(unsigned long a, unsigned char b)
{
  unsigned int result = 0;
  unsigned long mask = 0x01;
  unsigned long bb = b;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned int)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(bb & (1UL << (8*sizeof(unsigned long)-1)))) {
    bb <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= bb) {
      result += mask;
      a -= bb;
    } // if
    bb >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVUINT_LI
unsigned int divuint_li(unsigned long a, unsigned int b)
{
  unsigned int result = 0;
  unsigned long mask = 0x01;
  unsigned long bb = b;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned int)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(bb & (1UL << (8*sizeof(unsigned long)-1)))) {
    bb <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= bb) {
      result += mask;
      a -= bb;
    } // if
    bb >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVUINT_LL
unsigned int divuint_ll(unsigned long a, unsigned long b)
{
  unsigned int result = 0;
  unsigned long mask = 0x01;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned int)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(b & (1UL << (8*sizeof(unsigned long)-1)))) {
    b <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= b) {
      result += mask;
      a -= b;
    } // if
    b >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVULONG_LC
unsigned long divulong_lc(unsigned long a, unsigned char b)
{
  unsigned long result = 0;
  unsigned long mask = 0x01;
  unsigned long bb = b;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned long)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(bb & (1UL << (8*sizeof(unsigned long)-1)))) {
    bb <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= bb) {
      result += mask;
      a -= bb;
    } // if
    bb >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
#ifdef _DIVULONG_LI
unsigned long divulong_li(unsigned long a, unsigned int b)
{
  unsigned long result = 0;
  unsigned long mask = 0x01;
  unsigned long bb = b;

  /* prevent endless loop (division by zero exception?!?) */
  if (!b) return (unsigned long)-1;

  /* it would suffice to make b >= a, but that test is
   * more complex and will fail if a has its MSB set */
  while (!(bb & (1UL << (8*sizeof(unsigned long)-1)))) {
    bb <<= 1;
    mask <<= 1;
  } // while

  /* now add up the powers of two (of b) that "fit" into a */
  /* we might stop if (a == 0), but that's an additional test in every iteration... */
  while (mask) {
    if (a >= bb) {
      result += mask;
      a -= bb;
    } // if
    bb >>= 1;
    mask >>= 1;
  } // while

  return result;
}
#endif
