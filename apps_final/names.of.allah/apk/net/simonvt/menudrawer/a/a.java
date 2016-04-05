package net.simonvt.menudrawer.a;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.widget.ImageView;

public final class a
{
  public Activity a;
  public Object b;
  public boolean c;
  
  public a(Activity paramActivity)
  {
    a = paramActivity;
    try
    {
      paramActivity.getClass().getMethod("getSupportActionBar", new Class[0]);
      c = true;
      if ((c) && (Build.VERSION.SDK_INT < 14)) {
        paramActivity = new c(a);
      }
      for (;;)
      {
        b = paramActivity;
        return;
        if (Build.VERSION.SDK_INT >= 11) {
          paramActivity = d.b(a);
        } else {
          paramActivity = null;
        }
      }
    }
    catch (NoSuchMethodException paramActivity)
    {
      for (;;) {}
    }
  }
  
  public final void a(Drawable paramDrawable, int paramInt)
  {
    if ((c) && (Build.VERSION.SDK_INT < 14))
    {
      localObject = b;
      localActivity = a;
      localObject = (c)localObject;
      if (a != null)
      {
        a.setImageDrawable(paramDrawable);
        if (paramInt != 0) {
          break label61;
        }
        paramDrawable = null;
        a.setContentDescription(paramDrawable);
      }
    }
    label61:
    while (Build.VERSION.SDK_INT < 11) {
      for (;;)
      {
        Object localObject;
        Activity localActivity;
        return;
        paramDrawable = localActivity.getString(paramInt);
      }
    }
    d.a(b, a, paramDrawable, paramInt);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */