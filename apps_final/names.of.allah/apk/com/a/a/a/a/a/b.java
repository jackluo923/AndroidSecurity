package com.a.a.a.a.a;

import com.a.a.a.a.b.a;
import com.a.a.a.a.c;
import com.a.a.c.d;
import java.io.File;

public final class b
  extends c
{
  public b(File paramFile)
  {
    this(paramFile, new com.a.a.a.a.b.b(), 2097152);
  }
  
  public b(File paramFile, a parama, int paramInt)
  {
    super(paramFile, parama, paramInt);
    if (paramInt < 2097152) {
      d.c("You set too small disc cache size (less than %1$d Mb)", new Object[] { Integer.valueOf(2) });
    }
  }
  
  protected final int b(File paramFile)
  {
    return (int)paramFile.length();
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */