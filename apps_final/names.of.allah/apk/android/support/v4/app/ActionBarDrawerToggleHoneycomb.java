package android.support.v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import android.widget.ImageView;
import java.lang.reflect.Method;

class ActionBarDrawerToggleHoneycomb
{
  private static final String TAG = "ActionBarDrawerToggleHoneycomb";
  private static final int[] THEME_ATTRS = { 16843531 };
  
  public static Drawable getThemeUpIndicator(Activity paramActivity)
  {
    paramActivity = paramActivity.obtainStyledAttributes(THEME_ATTRS);
    Drawable localDrawable = paramActivity.getDrawable(0);
    paramActivity.recycle();
    return localDrawable;
  }
  
  public static Object setActionBarDescription(Object paramObject, Activity paramActivity, int paramInt)
  {
    if (paramObject == null) {
      paramObject = new ActionBarDrawerToggleHoneycomb.SetIndicatorInfo(paramActivity);
    }
    for (;;)
    {
      ActionBarDrawerToggleHoneycomb.SetIndicatorInfo localSetIndicatorInfo = (ActionBarDrawerToggleHoneycomb.SetIndicatorInfo)paramObject;
      if (setHomeAsUpIndicator != null) {}
      try
      {
        paramActivity = paramActivity.getActionBar();
        setHomeActionContentDescription.invoke(paramActivity, new Object[] { Integer.valueOf(paramInt) });
        if (Build.VERSION.SDK_INT <= 19) {
          paramActivity.setSubtitle(paramActivity.getSubtitle());
        }
        return paramObject;
      }
      catch (Exception paramActivity)
      {
        Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", paramActivity);
        return paramObject;
      }
    }
  }
  
  public static Object setActionBarUpIndicator(Object paramObject, Activity paramActivity, Drawable paramDrawable, int paramInt)
  {
    if (paramObject == null) {
      paramObject = new ActionBarDrawerToggleHoneycomb.SetIndicatorInfo(paramActivity);
    }
    for (;;)
    {
      ActionBarDrawerToggleHoneycomb.SetIndicatorInfo localSetIndicatorInfo = (ActionBarDrawerToggleHoneycomb.SetIndicatorInfo)paramObject;
      if (setHomeAsUpIndicator != null) {
        try
        {
          paramActivity = paramActivity.getActionBar();
          setHomeAsUpIndicator.invoke(paramActivity, new Object[] { paramDrawable });
          setHomeActionContentDescription.invoke(paramActivity, new Object[] { Integer.valueOf(paramInt) });
          return paramObject;
        }
        catch (Exception paramActivity)
        {
          Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator via JB-MR2 API", paramActivity);
          return paramObject;
        }
      }
      if (upIndicatorView != null)
      {
        upIndicatorView.setImageDrawable(paramDrawable);
        return paramObject;
      }
      Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator");
      return paramObject;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ActionBarDrawerToggleHoneycomb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */