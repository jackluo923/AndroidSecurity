package org.codehaus.jackson.sym;

final class CharsToNameCanonicalizer$Bucket
{
  private final int _length;
  private final Bucket _next;
  private final String _symbol;
  
  public CharsToNameCanonicalizer$Bucket(String paramString, Bucket paramBucket)
  {
    _symbol = paramString;
    _next = paramBucket;
    if (paramBucket == null) {}
    for (int i = 1;; i = _length + 1)
    {
      _length = i;
      return;
    }
  }
  
  public String find(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    String str = _symbol;
    for (Bucket localBucket = _next;; localBucket = localBucket.getNext())
    {
      if (str.length() == paramInt2)
      {
        int i = 0;
        if (str.charAt(i) != paramArrayOfChar[(paramInt1 + i)]) {}
        for (;;)
        {
          if (i != paramInt2) {
            break label72;
          }
          return str;
          int j = i + 1;
          i = j;
          if (j < paramInt2) {
            break;
          }
          i = j;
        }
      }
      label72:
      if (localBucket == null) {
        return null;
      }
      str = localBucket.getSymbol();
    }
  }
  
  public Bucket getNext()
  {
    return _next;
  }
  
  public String getSymbol()
  {
    return _symbol;
  }
  
  public int length()
  {
    return _length;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.sym.CharsToNameCanonicalizer.Bucket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */