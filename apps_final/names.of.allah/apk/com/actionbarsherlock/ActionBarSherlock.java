package com.actionbarsherlock;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.ActionBarSherlockCompat;
import com.actionbarsherlock.internal.ActionBarSherlockNative;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.MenuInflater;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public abstract class ActionBarSherlock
{
  private static final Class<?>[] CONSTRUCTOR_ARGS = { Activity.class, Integer.TYPE };
  public static final boolean DEBUG = false;
  public static final int FLAG_DELEGATE = 1;
  private static final HashMap<ActionBarSherlock.Implementation, Class<? extends ActionBarSherlock>> IMPLEMENTATIONS = new HashMap();
  protected static final String TAG = "ActionBarSherlock";
  protected final Activity mActivity;
  protected final boolean mIsDelegate;
  protected MenuInflater mMenuInflater;
  
  static
  {
    registerImplementation(ActionBarSherlockCompat.class);
    registerImplementation(ActionBarSherlockNative.class);
  }
  
  public ActionBarSherlock(Activity paramActivity, int paramInt)
  {
    mActivity = paramActivity;
    if ((paramInt & 0x1) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      mIsDelegate = bool;
      return;
    }
  }
  
  public static void registerImplementation(Class<? extends ActionBarSherlock> paramClass)
  {
    if (!paramClass.isAnnotationPresent(ActionBarSherlock.Implementation.class)) {
      throw new IllegalArgumentException("Class " + paramClass.getSimpleName() + " is not annotated with @Implementation");
    }
    if (IMPLEMENTATIONS.containsValue(paramClass)) {
      return;
    }
    ActionBarSherlock.Implementation localImplementation = (ActionBarSherlock.Implementation)paramClass.getAnnotation(ActionBarSherlock.Implementation.class);
    IMPLEMENTATIONS.put(localImplementation, paramClass);
  }
  
  public static boolean unregisterImplementation(Class<? extends ActionBarSherlock> paramClass)
  {
    return IMPLEMENTATIONS.values().remove(paramClass);
  }
  
  public static ActionBarSherlock wrap(Activity paramActivity)
  {
    return wrap(paramActivity, 0);
  }
  
  public static ActionBarSherlock wrap(Activity paramActivity, int paramInt)
  {
    int j = 0;
    Object localObject = new HashMap(IMPLEMENTATIONS);
    Iterator localIterator = ((HashMap)localObject).keySet().iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
    } while (((ActionBarSherlock.Implementation)localIterator.next()).dpi() != 213);
    for (int i = 1;; i = 0)
    {
      int k;
      if (i != 0)
      {
        if (getResourcesgetDisplayMetricsdensityDpi == 213) {}
        for (i = 1;; i = 0)
        {
          localIterator = ((HashMap)localObject).keySet().iterator();
          while (localIterator.hasNext())
          {
            k = ((ActionBarSherlock.Implementation)localIterator.next()).dpi();
            if (((i != 0) && (k != 213)) || ((i == 0) && (k == 213))) {
              localIterator.remove();
            }
          }
        }
      }
      localIterator = ((HashMap)localObject).keySet().iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
      } while (((ActionBarSherlock.Implementation)localIterator.next()).api() == -1);
      for (i = 1;; i = 0)
      {
        if (i != 0)
        {
          k = Build.VERSION.SDK_INT;
          localIterator = ((HashMap)localObject).keySet().iterator();
          i = j;
          while (localIterator.hasNext())
          {
            j = ((ActionBarSherlock.Implementation)localIterator.next()).api();
            if (j > k) {
              localIterator.remove();
            } else if (j > i) {
              i = j;
            }
          }
          localIterator = ((HashMap)localObject).keySet().iterator();
          while (localIterator.hasNext()) {
            if (((ActionBarSherlock.Implementation)localIterator.next()).api() != i) {
              localIterator.remove();
            }
          }
        }
        if (((HashMap)localObject).size() > 1) {
          throw new IllegalStateException("More than one implementation matches configuration.");
        }
        if (((HashMap)localObject).isEmpty()) {
          throw new IllegalStateException("No implementations match configuration.");
        }
        localObject = (Class)((HashMap)localObject).values().iterator().next();
        try
        {
          paramActivity = (ActionBarSherlock)((Class)localObject).getConstructor(CONSTRUCTOR_ARGS).newInstance(new Object[] { paramActivity, Integer.valueOf(paramInt) });
          return paramActivity;
        }
        catch (NoSuchMethodException paramActivity)
        {
          throw new RuntimeException(paramActivity);
        }
        catch (IllegalArgumentException paramActivity)
        {
          throw new RuntimeException(paramActivity);
        }
        catch (InstantiationException paramActivity)
        {
          throw new RuntimeException(paramActivity);
        }
        catch (IllegalAccessException paramActivity)
        {
          throw new RuntimeException(paramActivity);
        }
        catch (InvocationTargetException paramActivity)
        {
          throw new RuntimeException(paramActivity);
        }
      }
    }
  }
  
  public abstract void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  protected final boolean callbackCreateOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    boolean bool = true;
    if ((mActivity instanceof ActionBarSherlock.OnCreatePanelMenuListener)) {
      bool = ((ActionBarSherlock.OnCreatePanelMenuListener)mActivity).onCreatePanelMenu(0, paramMenu);
    }
    while (!(mActivity instanceof ActionBarSherlock.OnCreateOptionsMenuListener)) {
      return bool;
    }
    return ((ActionBarSherlock.OnCreateOptionsMenuListener)mActivity).onCreateOptionsMenu(paramMenu);
  }
  
  protected final boolean callbackOptionsItemSelected(com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    if ((mActivity instanceof ActionBarSherlock.OnMenuItemSelectedListener)) {
      return ((ActionBarSherlock.OnMenuItemSelectedListener)mActivity).onMenuItemSelected(0, paramMenuItem);
    }
    if ((mActivity instanceof ActionBarSherlock.OnOptionsItemSelectedListener)) {
      return ((ActionBarSherlock.OnOptionsItemSelectedListener)mActivity).onOptionsItemSelected(paramMenuItem);
    }
    return false;
  }
  
  protected final boolean callbackPrepareOptionsMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    boolean bool = true;
    if ((mActivity instanceof ActionBarSherlock.OnPreparePanelListener)) {
      bool = ((ActionBarSherlock.OnPreparePanelListener)mActivity).onPreparePanel(0, null, paramMenu);
    }
    while (!(mActivity instanceof ActionBarSherlock.OnPrepareOptionsMenuListener)) {
      return bool;
    }
    return ((ActionBarSherlock.OnPrepareOptionsMenuListener)mActivity).onPrepareOptionsMenu(paramMenu);
  }
  
  public boolean dispatchCloseOptionsMenu()
  {
    return false;
  }
  
  public void dispatchConfigurationChanged(Configuration paramConfiguration) {}
  
  public abstract boolean dispatchCreateOptionsMenu(android.view.Menu paramMenu);
  
  public void dispatchDestroy() {}
  
  public abstract void dispatchInvalidateOptionsMenu();
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public boolean dispatchMenuOpened(int paramInt, android.view.Menu paramMenu)
  {
    return false;
  }
  
  public boolean dispatchOpenOptionsMenu()
  {
    return false;
  }
  
  public abstract boolean dispatchOptionsItemSelected(android.view.MenuItem paramMenuItem);
  
  public void dispatchPanelClosed(int paramInt, android.view.Menu paramMenu) {}
  
  public void dispatchPause() {}
  
  public void dispatchPostCreate(Bundle paramBundle) {}
  
  public void dispatchPostResume() {}
  
  public abstract boolean dispatchPrepareOptionsMenu(android.view.Menu paramMenu);
  
  public void dispatchRestoreInstanceState(Bundle paramBundle) {}
  
  public void dispatchSaveInstanceState(Bundle paramBundle) {}
  
  public void dispatchStop() {}
  
  public void dispatchTitleChanged(CharSequence paramCharSequence, int paramInt) {}
  
  public void ensureActionBar() {}
  
  public abstract ActionBar getActionBar();
  
  public MenuInflater getMenuInflater()
  {
    if (mMenuInflater == null) {
      if (getActionBar() == null) {
        break label38;
      }
    }
    label38:
    for (mMenuInflater = new MenuInflater(getThemedContext(), mActivity);; mMenuInflater = new MenuInflater(mActivity)) {
      return mMenuInflater;
    }
  }
  
  protected abstract Context getThemedContext();
  
  public abstract boolean hasFeature(int paramInt);
  
  public abstract boolean requestFeature(int paramInt);
  
  public abstract void setContentView(int paramInt);
  
  public void setContentView(View paramView)
  {
    setContentView(paramView, new ViewGroup.LayoutParams(-1, -1));
  }
  
  public abstract void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract void setProgress(int paramInt);
  
  public abstract void setProgressBarIndeterminate(boolean paramBoolean);
  
  public abstract void setProgressBarIndeterminateVisibility(boolean paramBoolean);
  
  public abstract void setProgressBarVisibility(boolean paramBoolean);
  
  public abstract void setSecondaryProgress(int paramInt);
  
  public void setTitle(int paramInt)
  {
    setTitle(mActivity.getString(paramInt));
  }
  
  public abstract void setTitle(CharSequence paramCharSequence);
  
  public abstract void setUiOptions(int paramInt);
  
  public abstract void setUiOptions(int paramInt1, int paramInt2);
  
  public abstract ActionMode startActionMode(ActionMode.Callback paramCallback);
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.ActionBarSherlock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */