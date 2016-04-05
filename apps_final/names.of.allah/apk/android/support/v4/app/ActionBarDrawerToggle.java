package android.support.v4.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.g;
import android.view.MenuItem;
import android.view.View;

public class ActionBarDrawerToggle
  implements g
{
  private static final int ID_HOME = 16908332;
  private static final ActionBarDrawerToggle.ActionBarDrawerToggleImpl IMPL = new ActionBarDrawerToggle.ActionBarDrawerToggleImplBase(null);
  private static final float TOGGLE_DRAWABLE_OFFSET = 0.33333334F;
  private final Activity mActivity;
  private final ActionBarDrawerToggle.Delegate mActivityImpl;
  private final int mCloseDrawerContentDescRes;
  private Drawable mDrawerImage;
  private final int mDrawerImageResource;
  private boolean mDrawerIndicatorEnabled = true;
  private final DrawerLayout mDrawerLayout;
  private final int mOpenDrawerContentDescRes;
  private Object mSetIndicatorInfo;
  private ActionBarDrawerToggle.SlideDrawable mSlider;
  private Drawable mThemeImage;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 18)
    {
      IMPL = new ActionBarDrawerToggle.ActionBarDrawerToggleImplJellybeanMR2(null);
      return;
    }
    if (i >= 11)
    {
      IMPL = new ActionBarDrawerToggle.ActionBarDrawerToggleImplHC(null);
      return;
    }
  }
  
  public ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    mActivity = paramActivity;
    if ((paramActivity instanceof ActionBarDrawerToggle.DelegateProvider)) {}
    for (mActivityImpl = ((ActionBarDrawerToggle.DelegateProvider)paramActivity).getDrawerToggleDelegate();; mActivityImpl = null)
    {
      mDrawerLayout = paramDrawerLayout;
      mDrawerImageResource = paramInt1;
      mOpenDrawerContentDescRes = paramInt2;
      mCloseDrawerContentDescRes = paramInt3;
      mThemeImage = getThemeUpIndicator();
      mDrawerImage = paramActivity.getResources().getDrawable(paramInt1);
      mSlider = new ActionBarDrawerToggle.SlideDrawable(this, mDrawerImage, null);
      mSlider.setOffset(0.33333334F);
      return;
    }
  }
  
  Drawable getThemeUpIndicator()
  {
    if (mActivityImpl != null) {
      return mActivityImpl.getThemeUpIndicator();
    }
    return IMPL.getThemeUpIndicator(mActivity);
  }
  
  public boolean isDrawerIndicatorEnabled()
  {
    return mDrawerIndicatorEnabled;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    mThemeImage = getThemeUpIndicator();
    mDrawerImage = mActivity.getResources().getDrawable(mDrawerImageResource);
    syncState();
  }
  
  public void onDrawerClosed(View paramView)
  {
    mSlider.setPosition(0.0F);
    if (mDrawerIndicatorEnabled) {
      setActionBarDescription(mOpenDrawerContentDescRes);
    }
  }
  
  public void onDrawerOpened(View paramView)
  {
    mSlider.setPosition(1.0F);
    if (mDrawerIndicatorEnabled) {
      setActionBarDescription(mCloseDrawerContentDescRes);
    }
  }
  
  public void onDrawerSlide(View paramView, float paramFloat)
  {
    float f = mSlider.getPosition();
    if (paramFloat > 0.5F) {}
    for (paramFloat = Math.max(f, Math.max(0.0F, paramFloat - 0.5F) * 2.0F);; paramFloat = Math.min(f, paramFloat * 2.0F))
    {
      mSlider.setPosition(paramFloat);
      return;
    }
  }
  
  public void onDrawerStateChanged(int paramInt) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem != null) && (paramMenuItem.getItemId() == 16908332) && (mDrawerIndicatorEnabled))
    {
      if (mDrawerLayout.d()) {
        mDrawerLayout.b();
      }
      for (;;)
      {
        return true;
        mDrawerLayout.a();
      }
    }
    return false;
  }
  
  void setActionBarDescription(int paramInt)
  {
    if (mActivityImpl != null)
    {
      mActivityImpl.setActionBarDescription(paramInt);
      return;
    }
    mSetIndicatorInfo = IMPL.setActionBarDescription(mSetIndicatorInfo, mActivity, paramInt);
  }
  
  void setActionBarUpIndicator(Drawable paramDrawable, int paramInt)
  {
    if (mActivityImpl != null)
    {
      mActivityImpl.setActionBarUpIndicator(paramDrawable, paramInt);
      return;
    }
    mSetIndicatorInfo = IMPL.setActionBarUpIndicator(mSetIndicatorInfo, mActivity, paramDrawable, paramInt);
  }
  
  public void setDrawerIndicatorEnabled(boolean paramBoolean)
  {
    int i;
    if (paramBoolean != mDrawerIndicatorEnabled)
    {
      if (!paramBoolean) {
        break label52;
      }
      ActionBarDrawerToggle.SlideDrawable localSlideDrawable = mSlider;
      if (!mDrawerLayout.c()) {
        break label44;
      }
      i = mCloseDrawerContentDescRes;
      setActionBarUpIndicator(localSlideDrawable, i);
    }
    for (;;)
    {
      mDrawerIndicatorEnabled = paramBoolean;
      return;
      label44:
      i = mOpenDrawerContentDescRes;
      break;
      label52:
      setActionBarUpIndicator(mThemeImage, 0);
    }
  }
  
  public void syncState()
  {
    ActionBarDrawerToggle.SlideDrawable localSlideDrawable;
    if (mDrawerLayout.c())
    {
      mSlider.setPosition(1.0F);
      if (mDrawerIndicatorEnabled)
      {
        localSlideDrawable = mSlider;
        if (!mDrawerLayout.c()) {
          break label63;
        }
      }
    }
    label63:
    for (int i = mCloseDrawerContentDescRes;; i = mOpenDrawerContentDescRes)
    {
      setActionBarUpIndicator(localSlideDrawable, i);
      return;
      mSlider.setPosition(0.0F);
      break;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ActionBarDrawerToggle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */