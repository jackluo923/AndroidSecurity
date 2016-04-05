package com.a.a.b.d;

public enum d
{
  private String h;
  private String i;
  
  private d(String paramString)
  {
    h = paramString;
    i = (paramString + "://");
  }
  
  public static d a(String paramString)
  {
    if (paramString != null)
    {
      d[] arrayOfd = values();
      int m = arrayOfd.length;
      int k = 0;
      while (k < m)
      {
        d locald = arrayOfd[k];
        if (locald.d(paramString)) {
          return locald;
        }
        k += 1;
      }
    }
    return g;
  }
  
  private boolean d(String paramString)
  {
    return paramString.startsWith(i);
  }
  
  public final String b(String paramString)
  {
    return i + paramString;
  }
  
  public final String c(String paramString)
  {
    if (!d(paramString)) {
      throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", new Object[] { paramString, h }));
    }
    return paramString.substring(i.length());
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */