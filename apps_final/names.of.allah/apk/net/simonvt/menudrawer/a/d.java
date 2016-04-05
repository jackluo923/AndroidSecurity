package net.simonvt.menudrawer.a;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import java.lang.reflect.Method;

public final class d
{
  private static final int[] a = { 16843531 };
  
  public static Drawable a(Activity paramActivity)
  {
    paramActivity = paramActivity.obtainStyledAttributes(a);
    Drawable localDrawable = paramActivity.getDrawable(0);
    paramActivity.recycle();
    return localDrawable;
  }
  
  public static void a(Object paramObject, Activity paramActivity, int paramInt)
  {
    paramObject = (e)paramObject;
    if (a != null) {}
    try
    {
      paramActivity = paramActivity.getActionBar();
      b.invoke(paramActivity, new Object[] { Integer.valueOf(paramInt) });
      return;
    }
    catch (Throwable paramObject) {}
  }
  
  public static void a(Object paramObject, Activity paramActivity, Drawable paramDrawable, int paramInt)
  {
    paramObject = (e)paramObject;
    if (a != null) {}
    for (;;)
    {
      try
      {
        paramActivity = paramActivity.getActionBar();
        a.invoke(paramActivity, new Object[] { paramDrawable });
        b.invoke(paramActivity, new Object[] { Integer.valueOf(paramInt) });
        return;
      }
      catch (Throwable paramObject) {}
      if (c != null)
      {
        c.setImageDrawable(paramDrawable);
        return;
      }
    }
  }
  
  public static Object b(Activity paramActivity)
  {
    return new e(paramActivity);
  }
  
  public static void c(Activity paramActivity)
  {
    paramActivity = paramActivity.getActionBar();
    if (paramActivity != null) {
      paramActivity.setDisplayHomeAsUpEnabled(true);
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */