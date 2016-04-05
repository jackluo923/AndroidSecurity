package com.a.a.a.b.a;

import android.graphics.Bitmap;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class b
  extends com.a.a.a.b.b<String, Bitmap>
{
  private final Map<String, Bitmap> a = Collections.synchronizedMap(new LinkedHashMap(10, 1.1F, true));
  
  public b(int paramInt)
  {
    super(paramInt);
  }
  
  private Bitmap d()
  {
    Bitmap localBitmap = null;
    synchronized (a)
    {
      Iterator localIterator = a.entrySet().iterator();
      if (localIterator.hasNext())
      {
        localBitmap = (Bitmap)((Map.Entry)localIterator.next()).getValue();
        localIterator.remove();
      }
      return localBitmap;
    }
  }
  
  public final void b()
  {
    a.clear();
    super.b();
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.b.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */