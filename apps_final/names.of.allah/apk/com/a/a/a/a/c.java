package com.a.a.a.a;

import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class c
  extends a
{
  final AtomicInteger b;
  final Map<File, Long> c = Collections.synchronizedMap(new HashMap());
  private final int d;
  
  public c(File paramFile, com.a.a.a.a.b.a parama, int paramInt)
  {
    super(paramFile, parama);
    d = paramInt;
    b = new AtomicInteger();
    new Thread(new d(this)).start();
  }
  
  private int a()
  {
    Object localObject1 = null;
    int i;
    if (c.isEmpty())
    {
      i = -1;
      return i;
    }
    Object localObject5;
    for (Object localObject4 = c.entrySet();; localObject4 = localObject5)
    {
      synchronized (c)
      {
        Iterator localIterator = ((Set)localObject4).iterator();
        localObject4 = null;
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if (localObject1 == null)
          {
            localObject1 = (File)localEntry.getKey();
            localObject4 = (Long)localEntry.getValue();
          }
          else
          {
            localObject5 = (Long)localEntry.getValue();
            if (((Long)localObject5).longValue() >= ((Long)localObject4).longValue()) {
              break label207;
            }
            localObject4 = (File)localEntry.getKey();
            localObject1 = localObject5;
            break label213;
          }
        }
        i = 0;
        if (localObject1 == null) {
          break;
        }
        if (((File)localObject1).exists())
        {
          int j = b((File)localObject1);
          i = j;
          if (!((File)localObject1).delete()) {
            break;
          }
          c.remove(localObject1);
          return j;
        }
      }
      c.remove(localObject2);
      return 0;
      label207:
      localObject5 = localObject2;
      Object localObject3 = localObject4;
      localObject4 = localObject5;
      label213:
      localObject5 = localObject3;
      localObject3 = localObject4;
    }
  }
  
  public final File a(String paramString)
  {
    paramString = super.a(paramString);
    Long localLong = Long.valueOf(System.currentTimeMillis());
    paramString.setLastModified(localLong.longValue());
    c.put(paramString, localLong);
    return paramString;
  }
  
  public final void a(File paramFile)
  {
    int j = b(paramFile);
    for (int i = b.get(); i + j > d; i = b.addAndGet(-i))
    {
      i = a();
      if (i == -1) {
        break;
      }
    }
    b.addAndGet(j);
    Long localLong = Long.valueOf(System.currentTimeMillis());
    paramFile.setLastModified(localLong.longValue());
    c.put(paramFile, localLong);
  }
  
  protected abstract int b(File paramFile);
}

/* Location:
 * Qualified Name:     com.a.a.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */