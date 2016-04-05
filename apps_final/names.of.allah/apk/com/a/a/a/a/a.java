package com.a.a.a.a;

import java.io.File;

public abstract class a
  implements b
{
  protected File a;
  private com.a.a.a.a.b.a b;
  
  public a(File paramFile, com.a.a.a.a.b.a parama)
  {
    if (paramFile == null) {
      throw new IllegalArgumentException(String.format("\"%s\" argument must be not null", new Object[] { "cacheDir" }));
    }
    if (parama == null) {
      throw new IllegalArgumentException(String.format("\"%s\" argument must be not null", new Object[] { "fileNameGenerator" }));
    }
    a = paramFile;
    b = parama;
  }
  
  public File a(String paramString)
  {
    paramString = b.a(paramString);
    return new File(a, paramString);
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */