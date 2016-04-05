package com.actionbarsherlock.internal;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.Implementation;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeStartedListener;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.app.ActionBarImpl;
import com.actionbarsherlock.internal.view.StandaloneActionMode;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.Callback;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.view.menu.MenuPresenter.Callback;
import com.actionbarsherlock.internal.widget.ActionBarContainer;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.internal.widget.ActionBarView;
import com.actionbarsherlock.internal.widget.IcsProgressBar;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@ActionBarSherlock.Implementation(api=7)
public class ActionBarSherlockCompat
  extends ActionBarSherlock
  implements MenuItem.OnMenuItemClickListener, MenuBuilder.Callback, MenuPresenter.Callback, com.actionbarsherlock.view.Window.Callback
{
  protected static final int DEFAULT_FEATURES = 0;
  private static final String PANELS_TAG = "sherlock:Panels";
  private ActionBarImpl aActionBar;
  private ActionMode mActionMode;
  private ActionBarContextView mActionModeView;
  private IcsProgressBar mCircularProgressBar;
  private boolean mClosingActionMenu;
  private ViewGroup mContentParent;
  private ViewGroup mDecor;
  private int mFeatures = 0;
  private IcsProgressBar mHorizontalProgressBar;
  private boolean mIsDestroyed = false;
  private boolean mIsTitleReady = false;
  private MenuBuilder mMenu;
  private Bundle mMenuFrozenActionViewState;
  private boolean mMenuIsPrepared;
  private boolean mMenuRefreshContent;
  protected HashMap<android.view.MenuItem, MenuItemImpl> mNativeItemMap;
  private boolean mReserveOverflow;
  private boolean mReserveOverflowSet = false;
  private int mUiOptions = 0;
  private ActionBarView wActionBar;
  
  public ActionBarSherlockCompat(Activity paramActivity, int paramInt)
  {
    super(paramActivity, paramInt);
  }
  
  public static String cleanActivityName(String paramString1, String paramString2)
  {
    String str;
    if (paramString2.charAt(0) == '.') {
      str = paramString1 + paramString2;
    }
    do
    {
      return str;
      str = paramString2;
    } while (paramString2.indexOf('.', 1) != -1);
    return paramString1 + "." + paramString2;
  }
  
  private ViewGroup generateLayout()
  {
    Object localObject = mActivity.getTheme().obtainStyledAttributes(R.styleable.SherlockTheme);
    if (!((TypedArray)localObject).hasValue(59)) {
      throw new IllegalStateException("You must use Theme.Sherlock, Theme.Sherlock.Light, Theme.Sherlock.Light.DarkActionBar, or a derivative.");
    }
    int i;
    if (((TypedArray)localObject).getBoolean(58, false))
    {
      requestFeature(1);
      if (((TypedArray)localObject).getBoolean(60, false)) {
        requestFeature(9);
      }
      if (((TypedArray)localObject).getBoolean(61, false)) {
        requestFeature(10);
      }
      ((TypedArray)localObject).recycle();
      if (hasFeature(1)) {
        break label193;
      }
      if (!hasFeature(9)) {
        break label186;
      }
      i = R.layout.abs__screen_action_bar_overlay;
    }
    for (;;)
    {
      localObject = mActivity.getLayoutInflater().inflate(i, null);
      mDecor.addView((View)localObject, new ViewGroup.LayoutParams(-1, -1));
      localObject = (ViewGroup)mDecor.findViewById(R.id.abs__content);
      if (localObject != null) {
        break label224;
      }
      throw new RuntimeException("Couldn't find content container view");
      if (!((TypedArray)localObject).getBoolean(59, false)) {
        break;
      }
      requestFeature(8);
      break;
      label186:
      i = R.layout.abs__screen_action_bar;
      continue;
      label193:
      if ((hasFeature(10)) && (!hasFeature(1))) {
        i = R.layout.abs__screen_simple_overlay_action_mode;
      } else {
        i = R.layout.abs__screen_simple;
      }
    }
    label224:
    mDecor.setId(-1);
    ((ViewGroup)localObject).setId(16908290);
    if (hasFeature(5))
    {
      IcsProgressBar localIcsProgressBar = getCircularProgressBar(false);
      if (localIcsProgressBar != null) {
        localIcsProgressBar.setIndeterminate(true);
      }
    }
    return (ViewGroup)localObject;
  }
  
  private IcsProgressBar getCircularProgressBar(boolean paramBoolean)
  {
    if (mCircularProgressBar != null) {
      return mCircularProgressBar;
    }
    if ((mContentParent == null) && (paramBoolean)) {
      installDecor();
    }
    mCircularProgressBar = ((IcsProgressBar)mDecor.findViewById(R.id.abs__progress_circular));
    if (mCircularProgressBar != null) {
      mCircularProgressBar.setVisibility(4);
    }
    return mCircularProgressBar;
  }
  
  private int getFeatures()
  {
    return mFeatures;
  }
  
  private IcsProgressBar getHorizontalProgressBar(boolean paramBoolean)
  {
    if (mHorizontalProgressBar != null) {
      return mHorizontalProgressBar;
    }
    if ((mContentParent == null) && (paramBoolean)) {
      installDecor();
    }
    mHorizontalProgressBar = ((IcsProgressBar)mDecor.findViewById(R.id.abs__progress_horizontal));
    if (mHorizontalProgressBar != null) {
      mHorizontalProgressBar.setVisibility(4);
    }
    return mHorizontalProgressBar;
  }
  
  private void hideProgressBars(IcsProgressBar paramIcsProgressBar1, IcsProgressBar paramIcsProgressBar2)
  {
    int i = mFeatures;
    Animation localAnimation = AnimationUtils.loadAnimation(mActivity, 17432577);
    localAnimation.setDuration(1000L);
    if (((i & 0x20) != 0) && (paramIcsProgressBar2.getVisibility() == 0))
    {
      paramIcsProgressBar2.startAnimation(localAnimation);
      paramIcsProgressBar2.setVisibility(4);
    }
    if (((i & 0x4) != 0) && (paramIcsProgressBar1.getVisibility() == 0))
    {
      paramIcsProgressBar1.startAnimation(localAnimation);
      paramIcsProgressBar1.setVisibility(4);
    }
  }
  
  private void initActionBar()
  {
    if (mDecor == null) {
      installDecor();
    }
    if ((aActionBar != null) || (!hasFeature(8)) || (hasFeature(1)) || (mActivity.isChild())) {}
    do
    {
      return;
      aActionBar = new ActionBarImpl(mActivity, mFeatures);
    } while (mIsDelegate);
    wActionBar.setWindowTitle(mActivity.getTitle());
  }
  
  private boolean initializePanelMenu()
  {
    Object localObject = mActivity;
    if (wActionBar != null)
    {
      TypedValue localTypedValue = new TypedValue();
      ((Context)localObject).getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, localTypedValue, true);
      int i = resourceId;
      if (i != 0) {
        localObject = new ContextThemeWrapper((Context)localObject, i);
      }
    }
    for (;;)
    {
      mMenu = new MenuBuilder((Context)localObject);
      mMenu.setCallback(this);
      return true;
    }
  }
  
  private void installDecor()
  {
    if (mDecor == null) {
      mDecor = ((ViewGroup)mActivity.getWindow().getDecorView().findViewById(16908290));
    }
    boolean bool1;
    boolean bool2;
    if (mContentParent == null)
    {
      Object localObject1 = null;
      Object localObject2;
      int i;
      if (mDecor.getChildCount() > 0)
      {
        localObject2 = new ArrayList(1);
        int j = mDecor.getChildCount();
        i = 0;
        for (;;)
        {
          localObject1 = localObject2;
          if (i >= j) {
            break;
          }
          localObject1 = mDecor.getChildAt(0);
          mDecor.removeView((View)localObject1);
          ((List)localObject2).add(localObject1);
          i += 1;
        }
      }
      mContentParent = generateLayout();
      if (localObject1 != null)
      {
        localObject1 = ((List)localObject1).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (View)((Iterator)localObject1).next();
          mContentParent.addView((View)localObject2);
        }
      }
      wActionBar = ((ActionBarView)mDecor.findViewById(R.id.abs__action_bar));
      if (wActionBar != null)
      {
        wActionBar.setWindowCallback(this);
        if (wActionBar.getTitle() == null) {
          wActionBar.setWindowTitle(mActivity.getTitle());
        }
        if (hasFeature(2)) {
          wActionBar.initProgress();
        }
        if (hasFeature(5)) {
          wActionBar.initIndeterminateProgress();
        }
        i = loadUiOptionsFromManifest(mActivity);
        if (i != 0) {
          mUiOptions = i;
        }
        if ((mUiOptions & 0x1) == 0) {
          break label393;
        }
        bool1 = true;
        if (!bool1) {
          break label399;
        }
        bool2 = ResourcesCompat.getResources_getBoolean(mActivity, R.bool.abs__split_action_bar_is_narrow);
        label289:
        localObject1 = (ActionBarContainer)mDecor.findViewById(R.id.abs__split_action_bar);
        if (localObject1 == null) {
          break label423;
        }
        wActionBar.setSplitView((ActionBarContainer)localObject1);
        wActionBar.setSplitActionBar(bool2);
        wActionBar.setSplitWhenNarrow(bool1);
        mActionModeView = ((ActionBarContextView)mDecor.findViewById(R.id.abs__action_context_bar));
        mActionModeView.setSplitView((ActionBarContainer)localObject1);
        mActionModeView.setSplitActionBar(bool2);
        mActionModeView.setSplitWhenNarrow(bool1);
      }
    }
    for (;;)
    {
      mDecor.post(new ActionBarSherlockCompat.1(this));
      return;
      label393:
      bool1 = false;
      break;
      label399:
      bool2 = mActivity.getTheme().obtainStyledAttributes(R.styleable.SherlockTheme).getBoolean(62, false);
      break label289;
      label423:
      if (bool2) {
        Log.e("ActionBarSherlock", "Requested split action bar with incompatible window decor! Ignoring request.");
      }
    }
  }
  
  private boolean isReservingOverflow()
  {
    if (!mReserveOverflowSet)
    {
      mReserveOverflow = ActionMenuPresenter.reserveOverflow(mActivity);
      mReserveOverflowSet = true;
    }
    return mReserveOverflow;
  }
  
  private static int loadUiOptionsFromManifest(Activity paramActivity)
  {
    for (;;)
    {
      try
      {
        str2 = paramActivity.getClass().getName();
        str3 = getApplicationInfopackageName;
        localXmlResourceParser = paramActivity.createPackageContext(str3, 0).getAssets().openXmlResourceParser("AndroidManifest.xml");
        m = localXmlResourceParser.getEventType();
        i = 0;
        j = i;
        if (m != 1)
        {
          k = i;
          if (m == 2) {
            j = i;
          }
        }
      }
      catch (Exception paramActivity)
      {
        String str2;
        String str3;
        XmlResourceParser localXmlResourceParser;
        String str1;
        String str4;
        boolean bool;
        i = 0;
        paramActivity.printStackTrace();
        j = i;
      }
      try
      {
        paramActivity = localXmlResourceParser.getName();
        j = i;
        if ("application".equals(paramActivity))
        {
          j = i;
          k = localXmlResourceParser.getAttributeCount() - 1;
          if (k >= 0)
          {
            j = i;
            if ("uiOptions".equals(localXmlResourceParser.getAttributeName(k)))
            {
              j = i;
              i = localXmlResourceParser.getAttributeIntValue(k, 0);
            }
          }
        }
      }
      catch (Exception paramActivity)
      {
        i = j;
        continue;
      }
      try
      {
        m = localXmlResourceParser.nextToken();
      }
      catch (Exception paramActivity)
      {
        continue;
        k -= 1;
        i = j;
        m = n;
        paramActivity = (Activity)localObject;
        continue;
      }
      k -= 1;
      continue;
      continue;
      k = i;
      j = i;
      if ("activity".equals(paramActivity))
      {
        j = i;
        k = localXmlResourceParser.getAttributeCount() - 1;
        m = 0;
        str1 = null;
        paramActivity = null;
        if (k >= 0)
        {
          j = i;
          str4 = localXmlResourceParser.getAttributeName(k);
          j = i;
          if ("uiOptions".equals(str4))
          {
            j = i;
            localObject = Integer.valueOf(localXmlResourceParser.getAttributeIntValue(k, 0));
            n = m;
            j = i;
            if (localObject == null) {
              break label416;
            }
            j = i;
            if (str1 == null) {
              break label416;
            }
            j = i;
            i = ((Integer)localObject).intValue();
            j = i;
            break label416;
          }
          n = m;
          localObject = paramActivity;
          j = i;
          if (!"name".equals(str4)) {
            continue;
          }
          j = i;
          str1 = cleanActivityName(str3, localXmlResourceParser.getAttributeValue(k));
          j = i;
          bool = str2.equals(str1);
          if (bool)
          {
            n = 1;
            localObject = paramActivity;
            continue;
          }
        }
        j = i;
        if (m != 0) {
          break label401;
        }
        k = i;
      }
      i = k;
    }
    label401:
    return j;
  }
  
  private void onIntChanged(int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 2) || (paramInt1 == 5)) {
      updateProgressBars(paramInt2);
    }
  }
  
  private boolean preparePanel()
  {
    boolean bool3 = false;
    boolean bool2 = false;
    if (mMenuIsPrepared) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          if ((mMenu != null) && (!mMenuRefreshContent)) {
            break label126;
          }
          if (mMenu != null) {
            break;
          }
          bool1 = bool2;
        } while (!initializePanelMenu());
        bool1 = bool2;
      } while (mMenu == null);
      if (wActionBar != null) {
        wActionBar.setMenu(mMenu, this);
      }
      mMenu.stopDispatchingItemsChanged();
      if (callbackCreateOptionsMenu(mMenu)) {
        break;
      }
      mMenu = null;
      bool1 = bool2;
    } while (wActionBar == null);
    wActionBar.setMenu(null, this);
    return false;
    mMenuRefreshContent = false;
    label126:
    mMenu.stopDispatchingItemsChanged();
    if (mMenuFrozenActionViewState != null)
    {
      mMenu.restoreActionViewStates(mMenuFrozenActionViewState);
      mMenuFrozenActionViewState = null;
    }
    if (!callbackPrepareOptionsMenu(mMenu))
    {
      if (wActionBar != null) {
        wActionBar.setMenu(null, this);
      }
      mMenu.startDispatchingItemsChanged();
      return false;
    }
    KeyCharacterMap localKeyCharacterMap = KeyCharacterMap.load(-1);
    MenuBuilder localMenuBuilder = mMenu;
    boolean bool1 = bool3;
    if (localKeyCharacterMap.getKeyboardType() != 1) {
      bool1 = true;
    }
    localMenuBuilder.setQwertyMode(bool1);
    mMenu.startDispatchingItemsChanged();
    mMenuIsPrepared = true;
    return true;
  }
  
  private void reopenMenu(boolean paramBoolean)
  {
    if ((wActionBar != null) && (wActionBar.isOverflowReserved()))
    {
      if ((wActionBar.isOverflowMenuShowing()) && (paramBoolean)) {
        break label61;
      }
      if ((wActionBar.getVisibility() == 0) && (callbackPrepareOptionsMenu(mMenu))) {
        wActionBar.showOverflowMenu();
      }
    }
    return;
    label61:
    wActionBar.hideOverflowMenu();
  }
  
  private void setFeatureInt(int paramInt1, int paramInt2)
  {
    updateInt(paramInt1, paramInt2, false);
  }
  
  private void showProgressBars(IcsProgressBar paramIcsProgressBar1, IcsProgressBar paramIcsProgressBar2)
  {
    int i = mFeatures;
    if (((i & 0x20) != 0) && (paramIcsProgressBar2.getVisibility() == 4)) {
      paramIcsProgressBar2.setVisibility(0);
    }
    if (((i & 0x4) != 0) && (paramIcsProgressBar1.getProgress() < 10000)) {
      paramIcsProgressBar1.setVisibility(0);
    }
  }
  
  private void updateInt(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (mContentParent == null) {}
    while (((1 << paramInt1 & getFeatures()) == 0) && (!paramBoolean)) {
      return;
    }
    onIntChanged(paramInt1, paramInt2);
  }
  
  private void updateProgressBars(int paramInt)
  {
    IcsProgressBar localIcsProgressBar1 = getCircularProgressBar(true);
    IcsProgressBar localIcsProgressBar2 = getHorizontalProgressBar(true);
    int i = mFeatures;
    if (paramInt == -1) {
      if ((i & 0x4) != 0)
      {
        paramInt = localIcsProgressBar2.getProgress();
        if ((localIcsProgressBar2.isIndeterminate()) || (paramInt < 10000))
        {
          paramInt = 0;
          localIcsProgressBar2.setVisibility(paramInt);
        }
      }
      else if ((i & 0x20) != 0)
      {
        localIcsProgressBar1.setVisibility(0);
      }
    }
    label109:
    do
    {
      do
      {
        return;
        paramInt = 4;
        break;
        if (paramInt != -2) {
          break label109;
        }
        if ((i & 0x4) != 0) {
          localIcsProgressBar2.setVisibility(8);
        }
      } while ((i & 0x20) == 0);
      localIcsProgressBar1.setVisibility(8);
      return;
      if (paramInt == -3)
      {
        localIcsProgressBar2.setIndeterminate(true);
        return;
      }
      if (paramInt == -4)
      {
        localIcsProgressBar2.setIndeterminate(false);
        return;
      }
      if ((paramInt >= 0) && (paramInt <= 10000))
      {
        localIcsProgressBar2.setProgress(paramInt + 0);
        if (paramInt < 10000)
        {
          showProgressBars(localIcsProgressBar2, localIcsProgressBar1);
          return;
        }
        hideProgressBars(localIcsProgressBar2, localIcsProgressBar1);
        return;
      }
    } while ((20000 > paramInt) || (paramInt > 30000));
    localIcsProgressBar2.setSecondaryProgress(paramInt - 20000);
    showProgressBars(localIcsProgressBar2, localIcsProgressBar1);
  }
  
  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (mContentParent == null) {
      installDecor();
    }
    mContentParent.addView(paramView, paramLayoutParams);
    initActionBar();
  }
  
  void checkCloseActionMenu(com.actionbarsherlock.view.Menu paramMenu)
  {
    if (mClosingActionMenu) {
      return;
    }
    mClosingActionMenu = true;
    wActionBar.dismissPopupMenus();
    mClosingActionMenu = false;
  }
  
  public boolean dispatchCloseOptionsMenu()
  {
    if (!isReservingOverflow()) {}
    while (wActionBar == null) {
      return false;
    }
    return wActionBar.hideOverflowMenu();
  }
  
  public void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
    if (aActionBar != null) {
      aActionBar.onConfigurationChanged(paramConfiguration);
    }
  }
  
  public boolean dispatchCreateOptionsMenu(android.view.Menu paramMenu)
  {
    return true;
  }
  
  public void dispatchDestroy()
  {
    mIsDestroyed = true;
  }
  
  public void dispatchInvalidateOptionsMenu()
  {
    if (mMenu != null)
    {
      Bundle localBundle = new Bundle();
      mMenu.saveActionViewStates(localBundle);
      if (localBundle.size() > 0) {
        mMenuFrozenActionViewState = localBundle;
      }
      mMenu.stopDispatchingItemsChanged();
      mMenu.clear();
    }
    mMenuRefreshContent = true;
    if (wActionBar != null)
    {
      mMenuIsPrepared = false;
      preparePanel();
    }
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if (paramKeyEvent.getKeyCode() == 4)
    {
      int i = paramKeyEvent.getAction();
      if (mActionMode != null) {
        if (i == 1) {
          mActionMode.finish();
        }
      }
      do
      {
        return true;
        if ((wActionBar == null) || (!wActionBar.hasExpandedActionView())) {
          break;
        }
      } while (i != 1);
      wActionBar.collapseActionView();
      return true;
    }
    return false;
  }
  
  public boolean dispatchMenuOpened(int paramInt, android.view.Menu paramMenu)
  {
    if ((paramInt == 8) || (paramInt == 0))
    {
      if (aActionBar != null) {
        aActionBar.dispatchMenuVisibilityChanged(true);
      }
      return true;
    }
    return false;
  }
  
  public boolean dispatchOpenOptionsMenu()
  {
    if (!isReservingOverflow()) {
      return false;
    }
    return wActionBar.showOverflowMenu();
  }
  
  public boolean dispatchOptionsItemSelected(android.view.MenuItem paramMenuItem)
  {
    throw new IllegalStateException("Native callback invoked. Create a test case and report!");
  }
  
  public void dispatchPanelClosed(int paramInt, android.view.Menu paramMenu)
  {
    if (((paramInt == 8) || (paramInt == 0)) && (aActionBar != null)) {
      aActionBar.dispatchMenuVisibilityChanged(false);
    }
  }
  
  public void dispatchPause()
  {
    if ((wActionBar != null) && (wActionBar.isOverflowMenuShowing())) {
      wActionBar.hideOverflowMenu();
    }
  }
  
  public void dispatchPostCreate(Bundle paramBundle)
  {
    if (mIsDelegate) {
      mIsTitleReady = true;
    }
    if (mDecor == null) {
      initActionBar();
    }
  }
  
  public void dispatchPostResume()
  {
    if (aActionBar != null) {
      aActionBar.setShowHideAnimationEnabled(true);
    }
  }
  
  public boolean dispatchPrepareOptionsMenu(android.view.Menu paramMenu)
  {
    if (mActionMode != null) {}
    for (;;)
    {
      return false;
      mMenuIsPrepared = false;
      if ((preparePanel()) && (!isReservingOverflow()))
      {
        if (mNativeItemMap == null) {
          mNativeItemMap = new HashMap();
        }
        while (mMenu != null)
        {
          return mMenu.bindNativeOverflow(paramMenu, this, mNativeItemMap);
          mNativeItemMap.clear();
        }
      }
    }
  }
  
  public void dispatchRestoreInstanceState(Bundle paramBundle)
  {
    mMenuFrozenActionViewState = ((Bundle)paramBundle.getParcelable("sherlock:Panels"));
  }
  
  public void dispatchSaveInstanceState(Bundle paramBundle)
  {
    if (mMenu != null)
    {
      mMenuFrozenActionViewState = new Bundle();
      mMenu.saveActionViewStates(mMenuFrozenActionViewState);
    }
    paramBundle.putParcelable("sherlock:Panels", mMenuFrozenActionViewState);
  }
  
  public void dispatchStop()
  {
    if (aActionBar != null) {
      aActionBar.setShowHideAnimationEnabled(false);
    }
  }
  
  public void dispatchTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    if (((!mIsDelegate) || (mIsTitleReady)) && (wActionBar != null)) {
      wActionBar.setWindowTitle(paramCharSequence);
    }
  }
  
  public void ensureActionBar()
  {
    if (mDecor == null) {
      initActionBar();
    }
  }
  
  public ActionBar getActionBar()
  {
    initActionBar();
    return aActionBar;
  }
  
  protected Context getThemedContext()
  {
    return aActionBar.getThemedContext();
  }
  
  public boolean hasFeature(int paramInt)
  {
    return (mFeatures & 1 << paramInt) != 0;
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    checkCloseActionMenu(paramMenuBuilder);
  }
  
  public boolean onMenuItemClick(android.view.MenuItem paramMenuItem)
  {
    MenuItemImpl localMenuItemImpl = (MenuItemImpl)mNativeItemMap.get(paramMenuItem);
    if (localMenuItemImpl != null) {
      localMenuItemImpl.invoke();
    }
    for (;;)
    {
      return true;
      Log.e("ActionBarSherlock", "Options item \"" + paramMenuItem + "\" not found in mapping");
    }
  }
  
  public boolean onMenuItemSelected(int paramInt, com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return callbackOptionsItemSelected(paramMenuItem);
  }
  
  public boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, com.actionbarsherlock.view.MenuItem paramMenuItem)
  {
    return callbackOptionsItemSelected(paramMenuItem);
  }
  
  public void onMenuModeChange(MenuBuilder paramMenuBuilder)
  {
    reopenMenu(true);
  }
  
  public boolean onOpenSubMenu(MenuBuilder paramMenuBuilder)
  {
    return true;
  }
  
  public boolean requestFeature(int paramInt)
  {
    if (mContentParent != null) {
      throw new AndroidRuntimeException("requestFeature() must be called before adding content");
    }
    switch (paramInt)
    {
    case 3: 
    case 4: 
    case 6: 
    case 7: 
    default: 
      return false;
    }
    mFeatures |= 1 << paramInt;
    return true;
  }
  
  public void setContentView(int paramInt)
  {
    if (mContentParent == null) {
      installDecor();
    }
    for (;;)
    {
      mActivity.getLayoutInflater().inflate(paramInt, mContentParent);
      android.view.Window.Callback localCallback = mActivity.getWindow().getCallback();
      if (localCallback != null) {
        localCallback.onContentChanged();
      }
      initActionBar();
      return;
      mContentParent.removeAllViews();
    }
  }
  
  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (mContentParent == null) {
      installDecor();
    }
    for (;;)
    {
      mContentParent.addView(paramView, paramLayoutParams);
      paramView = mActivity.getWindow().getCallback();
      if (paramView != null) {
        paramView.onContentChanged();
      }
      initActionBar();
      return;
      mContentParent.removeAllViews();
    }
  }
  
  public void setProgress(int paramInt)
  {
    updateInt(2, paramInt + 0, false);
  }
  
  public void setProgressBarIndeterminate(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = -3;; i = -4)
    {
      updateInt(2, i, false);
      return;
    }
  }
  
  public void setProgressBarIndeterminateVisibility(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = -1;; i = -2)
    {
      updateInt(5, i, false);
      return;
    }
  }
  
  public void setProgressBarVisibility(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = -1;; i = -2)
    {
      updateInt(2, i, false);
      return;
    }
  }
  
  public void setSecondaryProgress(int paramInt)
  {
    updateInt(2, paramInt + 20000, false);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    dispatchTitleChanged(paramCharSequence, 0);
  }
  
  public void setUiOptions(int paramInt)
  {
    mUiOptions = paramInt;
  }
  
  public void setUiOptions(int paramInt1, int paramInt2)
  {
    mUiOptions = (mUiOptions & (paramInt2 ^ 0xFFFFFFFF) | paramInt1 & paramInt2);
  }
  
  public ActionMode startActionMode(ActionMode.Callback paramCallback)
  {
    if (mActionMode != null) {
      mActionMode.finish();
    }
    ActionBarSherlockCompat.ActionModeCallbackWrapper localActionModeCallbackWrapper = new ActionBarSherlockCompat.ActionModeCallbackWrapper(this, paramCallback);
    initActionBar();
    if (aActionBar != null) {}
    for (Object localObject = aActionBar.startActionMode(localActionModeCallbackWrapper);; localObject = null)
    {
      if (localObject != null) {
        mActionMode = ((ActionMode)localObject);
      }
      for (;;)
      {
        if ((mActionMode != null) && ((mActivity instanceof ActionBarSherlock.OnActionModeStartedListener))) {
          ((ActionBarSherlock.OnActionModeStartedListener)mActivity).onActionModeStarted(mActionMode);
        }
        return mActionMode;
        if (mActionModeView == null)
        {
          localObject = (ViewStub)mDecor.findViewById(R.id.abs__action_mode_bar_stub);
          if (localObject != null) {
            mActionModeView = ((ActionBarContextView)((ViewStub)localObject).inflate());
          }
        }
        if (mActionModeView != null)
        {
          mActionModeView.killMode();
          localObject = new StandaloneActionMode(mActivity, mActionModeView, localActionModeCallbackWrapper, true);
          if (paramCallback.onCreateActionMode((ActionMode)localObject, ((ActionMode)localObject).getMenu()))
          {
            ((ActionMode)localObject).invalidate();
            mActionModeView.initForMode((ActionMode)localObject);
            mActionModeView.setVisibility(0);
            mActionMode = ((ActionMode)localObject);
            mActionModeView.sendAccessibilityEvent(32);
          }
          else
          {
            mActionMode = null;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */