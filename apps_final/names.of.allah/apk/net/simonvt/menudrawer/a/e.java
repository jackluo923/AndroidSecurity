package net.simonvt.menudrawer.a;

import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;

final class e
{
  public Method a;
  public Method b;
  public ImageView c;
  
  e(Activity paramActivity)
  {
    for (;;)
    {
      Object localObject;
      try
      {
        a = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", new Class[] { Drawable.class });
        b = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", new Class[] { Integer.TYPE });
        return;
      }
      catch (Throwable localThrowable)
      {
        paramActivity = paramActivity.findViewById(16908332);
        if (paramActivity == null) {
          continue;
        }
        localObject = (ViewGroup)paramActivity.getParent();
        if (((ViewGroup)localObject).getChildCount() != 2) {
          continue;
        }
        paramActivity = ((ViewGroup)localObject).getChildAt(0);
        localObject = ((ViewGroup)localObject).getChildAt(1);
        if (paramActivity.getId() != 16908332) {
          break label113;
        }
      }
      paramActivity = (Activity)localObject;
      label113:
      while ((paramActivity instanceof ImageView))
      {
        c = ((ImageView)paramActivity);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */