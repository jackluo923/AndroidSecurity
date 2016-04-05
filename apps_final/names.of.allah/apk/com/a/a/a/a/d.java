package com.a.a.a.a;

import java.io.File;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

final class d
  implements Runnable
{
  d(c paramc) {}
  
  public final void run()
  {
    int i = 0;
    File[] arrayOfFile = a.a.listFiles();
    if (arrayOfFile != null)
    {
      int k = arrayOfFile.length;
      int j = 0;
      while (i < k)
      {
        File localFile = arrayOfFile[i];
        j += a.b(localFile);
        a.c.put(localFile, Long.valueOf(localFile.lastModified()));
        i += 1;
      }
      a.b.set(j);
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */