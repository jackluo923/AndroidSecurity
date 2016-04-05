package com.a.a.c;

import android.widget.ImageView;
import java.lang.reflect.Field;

public final class a
{
  public static int a(Object paramObject, String paramString)
  {
    try
    {
      paramString = ImageView.class.getDeclaredField(paramString);
      paramString.setAccessible(true);
      int i = ((Integer)paramString.get(paramObject)).intValue();
      if ((i > 0) && (i < Integer.MAX_VALUE)) {
        return i;
      }
    }
    catch (Exception paramObject)
    {
      d.a((Throwable)paramObject);
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.a.a.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */