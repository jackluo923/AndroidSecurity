package com.actionbarsherlock.internal.widget;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.string;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.app.ActionBar.LayoutParams;
import com.actionbarsherlock.app.ActionBar.OnNavigationListener;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.view.menu.ActionMenuItem;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.view.menu.MenuPresenter.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.Window.Callback;

public class ActionBarView
  extends AbsActionBarView
{
  private static final int DEFAULT_CUSTOM_GRAVITY = 19;
  public static final int DISPLAY_DEFAULT = 0;
  private static final int DISPLAY_RELAYOUT_MASK = 31;
  private static final String TAG = "ActionBarView";
  private ActionBar.OnNavigationListener mCallback;
  private ActionBarContextView mContextView;
  private View mCustomNavView;
  private int mDisplayOptions = -1;
  View mExpandedActionView;
  private final View.OnClickListener mExpandedActionViewUpListener = new ActionBarView.2(this);
  private ActionBarView.HomeView mExpandedHomeLayout;
  private ActionBarView.ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
  private ActionBarView.HomeView mHomeLayout;
  private Drawable mIcon;
  private boolean mIncludeTabs;
  private int mIndeterminateProgressStyle;
  private IcsProgressBar mIndeterminateProgressView;
  private boolean mIsCollapsable;
  private boolean mIsCollapsed;
  private int mItemPadding;
  private IcsLinearLayout mListNavLayout;
  private Drawable mLogo;
  private ActionMenuItem mLogoNavItem;
  private final IcsAdapterView.OnItemSelectedListener mNavItemSelectedListener = new ActionBarView.1(this);
  private int mNavigationMode;
  private MenuBuilder mOptionsMenu;
  private int mProgressBarPadding;
  private int mProgressStyle;
  private IcsProgressBar mProgressView;
  private IcsSpinner mSpinner;
  private SpinnerAdapter mSpinnerAdapter;
  private CharSequence mSubtitle;
  private int mSubtitleStyleRes;
  private TextView mSubtitleView;
  private ScrollingTabContainerView mTabScrollView;
  private CharSequence mTitle;
  private LinearLayout mTitleLayout;
  private int mTitleStyleRes;
  private View mTitleUpView;
  private TextView mTitleView;
  private final View.OnClickListener mUpClickListener = new ActionBarView.3(this);
  private boolean mUserTitle;
  Window.Callback mWindowCallback;
  
  public ActionBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBackgroundResource(0);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockActionBar, R.attr.actionBarStyle, 0);
    Object localObject = paramContext.getApplicationInfo();
    PackageManager localPackageManager = paramContext.getPackageManager();
    mNavigationMode = paramAttributeSet.getInt(6, 0);
    mTitle = paramAttributeSet.getText(8);
    mSubtitle = paramAttributeSet.getText(9);
    mLogo = paramAttributeSet.getDrawable(11);
    int i;
    if (mLogo == null)
    {
      if (Build.VERSION.SDK_INT >= 11) {
        break label486;
      }
      if ((paramContext instanceof Activity))
      {
        i = ResourcesCompat.loadLogoFromManifest((Activity)paramContext);
        if (i != 0) {
          mLogo = paramContext.getResources().getDrawable(i);
        }
      }
    }
    for (;;)
    {
      mIcon = paramAttributeSet.getDrawable(10);
      if ((mIcon != null) || ((paramContext instanceof Activity))) {}
      try
      {
        mIcon = localPackageManager.getActivityIcon(((Activity)paramContext).getComponentName());
        if (mIcon == null) {
          mIcon = ((ApplicationInfo)localObject).loadIcon(localPackageManager);
        }
        localObject = LayoutInflater.from(paramContext);
        i = paramAttributeSet.getResourceId(14, R.layout.abs__action_bar_home);
        mHomeLayout = ((ActionBarView.HomeView)((LayoutInflater)localObject).inflate(i, this, false));
        mExpandedHomeLayout = ((ActionBarView.HomeView)((LayoutInflater)localObject).inflate(i, this, false));
        mExpandedHomeLayout.setUp(true);
        mExpandedHomeLayout.setOnClickListener(mExpandedActionViewUpListener);
        mExpandedHomeLayout.setContentDescription(getResources().getText(R.string.abs__action_bar_up_description));
        mTitleStyleRes = paramAttributeSet.getResourceId(0, 0);
        mSubtitleStyleRes = paramAttributeSet.getResourceId(1, 0);
        mProgressStyle = paramAttributeSet.getResourceId(15, 0);
        mIndeterminateProgressStyle = paramAttributeSet.getResourceId(16, 0);
        mProgressBarPadding = paramAttributeSet.getDimensionPixelOffset(17, 0);
        mItemPadding = paramAttributeSet.getDimensionPixelOffset(18, 0);
        setDisplayOptions(paramAttributeSet.getInt(7, 0));
        i = paramAttributeSet.getResourceId(13, 0);
        if (i != 0)
        {
          mCustomNavView = ((LayoutInflater)localObject).inflate(i, this, false);
          mNavigationMode = 0;
          setDisplayOptions(mDisplayOptions | 0x10);
        }
        mContentHeight = paramAttributeSet.getLayoutDimension(4, 0);
        paramAttributeSet.recycle();
        mLogoNavItem = new ActionMenuItem(paramContext, 0, 16908332, 0, 0, mTitle);
        mHomeLayout.setOnClickListener(mUpClickListener);
        mHomeLayout.setClickable(true);
        mHomeLayout.setFocusable(true);
        return;
        label486:
        if ((paramContext instanceof Activity)) {}
        try
        {
          mLogo = localPackageManager.getActivityLogo(((Activity)paramContext).getComponentName());
          if (mLogo != null) {
            continue;
          }
          mLogo = ((ApplicationInfo)localObject).loadLogo(localPackageManager);
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException1)
        {
          for (;;)
          {
            Log.e("ActionBarView", "Activity component name not found!", localNameNotFoundException1);
          }
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        for (;;)
        {
          Log.e("ActionBarView", "Activity component name not found!", localNameNotFoundException2);
        }
      }
    }
  }
  
  private void configPresenters(MenuBuilder paramMenuBuilder)
  {
    if (paramMenuBuilder != null)
    {
      paramMenuBuilder.addMenuPresenter(mActionMenuPresenter);
      paramMenuBuilder.addMenuPresenter(mExpandedMenuPresenter);
      return;
    }
    mActionMenuPresenter.initForMenu(mContext, null);
    mExpandedMenuPresenter.initForMenu(mContext, null);
    mActionMenuPresenter.updateMenuView(true);
    mExpandedMenuPresenter.updateMenuView(true);
  }
  
  private void initTitle()
  {
    boolean bool = true;
    int j;
    int k;
    label202:
    Object localObject;
    int i;
    if (mTitleLayout == null)
    {
      mTitleLayout = ((LinearLayout)LayoutInflater.from(getContext()).inflate(R.layout.abs__action_bar_title_item, this, false));
      mTitleView = ((TextView)mTitleLayout.findViewById(R.id.abs__action_bar_title));
      mSubtitleView = ((TextView)mTitleLayout.findViewById(R.id.abs__action_bar_subtitle));
      mTitleUpView = mTitleLayout.findViewById(R.id.abs__up);
      mTitleLayout.setOnClickListener(mUpClickListener);
      if (mTitleStyleRes != 0) {
        mTitleView.setTextAppearance(mContext, mTitleStyleRes);
      }
      if (mTitle != null) {
        mTitleView.setText(mTitle);
      }
      if (mSubtitleStyleRes != 0) {
        mSubtitleView.setTextAppearance(mContext, mSubtitleStyleRes);
      }
      if (mSubtitle != null)
      {
        mSubtitleView.setText(mSubtitle);
        mSubtitleView.setVisibility(0);
      }
      if ((mDisplayOptions & 0x4) == 0) {
        break label288;
      }
      j = 1;
      if ((mDisplayOptions & 0x2) == 0) {
        break label293;
      }
      k = 1;
      localObject = mTitleUpView;
      if (k != 0) {
        break label304;
      }
      if (j == 0) {
        break label299;
      }
      i = 0;
      label218:
      ((View)localObject).setVisibility(i);
      localObject = mTitleLayout;
      if ((j == 0) || (k != 0)) {
        break label310;
      }
    }
    for (;;)
    {
      ((LinearLayout)localObject).setEnabled(bool);
      addView(mTitleLayout);
      if ((mExpandedActionView != null) || ((TextUtils.isEmpty(mTitle)) && (TextUtils.isEmpty(mSubtitle)))) {
        mTitleLayout.setVisibility(8);
      }
      return;
      label288:
      j = 0;
      break;
      label293:
      k = 0;
      break label202;
      label299:
      i = 4;
      break label218;
      label304:
      i = 8;
      break label218;
      label310:
      bool = false;
    }
  }
  
  private void setTitleImpl(CharSequence paramCharSequence)
  {
    int j = 0;
    mTitle = paramCharSequence;
    LinearLayout localLinearLayout;
    if (mTitleView != null)
    {
      mTitleView.setText(paramCharSequence);
      if ((mExpandedActionView != null) || ((mDisplayOptions & 0x8) == 0) || ((TextUtils.isEmpty(mTitle)) && (TextUtils.isEmpty(mSubtitle)))) {
        break label96;
      }
      i = 1;
      localLinearLayout = mTitleLayout;
      if (i == 0) {
        break label101;
      }
    }
    label96:
    label101:
    for (int i = j;; i = 8)
    {
      localLinearLayout.setVisibility(i);
      if (mLogoNavItem != null) {
        mLogoNavItem.setTitle(paramCharSequence);
      }
      return;
      i = 0;
      break;
    }
  }
  
  public void collapseActionView()
  {
    if (mExpandedMenuPresenter == null) {}
    for (MenuItemImpl localMenuItemImpl = null;; localMenuItemImpl = mExpandedMenuPresenter.mCurrentExpandedItem)
    {
      if (localMenuItemImpl != null) {
        localMenuItemImpl.collapseActionView();
      }
      return;
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ActionBar.LayoutParams(19);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ActionBar.LayoutParams(getContext(), paramAttributeSet);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    ViewGroup.LayoutParams localLayoutParams = paramLayoutParams;
    if (paramLayoutParams == null) {
      localLayoutParams = generateDefaultLayoutParams();
    }
    return localLayoutParams;
  }
  
  public View getCustomNavigationView()
  {
    return mCustomNavView;
  }
  
  public int getDisplayOptions()
  {
    return mDisplayOptions;
  }
  
  public SpinnerAdapter getDropdownAdapter()
  {
    return mSpinnerAdapter;
  }
  
  public int getDropdownSelectedPosition()
  {
    return mSpinner.getSelectedItemPosition();
  }
  
  public int getNavigationMode()
  {
    return mNavigationMode;
  }
  
  public CharSequence getSubtitle()
  {
    return mSubtitle;
  }
  
  public CharSequence getTitle()
  {
    return mTitle;
  }
  
  public boolean hasEmbeddedTabs()
  {
    return mIncludeTabs;
  }
  
  public boolean hasExpandedActionView()
  {
    return (mExpandedMenuPresenter != null) && (mExpandedMenuPresenter.mCurrentExpandedItem != null);
  }
  
  public void initIndeterminateProgress()
  {
    mIndeterminateProgressView = new IcsProgressBar(mContext, null, 0, mIndeterminateProgressStyle);
    mIndeterminateProgressView.setId(R.id.abs__progress_circular);
    addView(mIndeterminateProgressView);
  }
  
  public void initProgress()
  {
    mProgressView = new IcsProgressBar(mContext, null, 0, mProgressStyle);
    mProgressView.setId(R.id.abs__progress_horizontal);
    mProgressView.setMax(10000);
    addView(mProgressView);
  }
  
  public boolean isCollapsed()
  {
    return mIsCollapsed;
  }
  
  public boolean isSplitActionBar()
  {
    return mSplitActionBar;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    mTitleView = null;
    mSubtitleView = null;
    mTitleUpView = null;
    if ((mTitleLayout != null) && (mTitleLayout.getParent() == this)) {
      removeView(mTitleLayout);
    }
    mTitleLayout = null;
    if ((mDisplayOptions & 0x8) != 0) {
      initTitle();
    }
    if ((mTabScrollView != null) && (mIncludeTabs))
    {
      paramConfiguration = mTabScrollView.getLayoutParams();
      if (paramConfiguration != null)
      {
        width = -2;
        height = -1;
      }
      mTabScrollView.setAllowCollapse(true);
    }
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (mActionMenuPresenter != null)
    {
      mActionMenuPresenter.hideOverflowMenu();
      mActionMenuPresenter.hideSubMenus();
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    addView(mHomeLayout);
    if ((mCustomNavView != null) && ((mDisplayOptions & 0x10) != 0))
    {
      ViewParent localViewParent = mCustomNavView.getParent();
      if (localViewParent != this)
      {
        if ((localViewParent instanceof ViewGroup)) {
          ((ViewGroup)localViewParent).removeView(mCustomNavView);
        }
        addView(mCustomNavView);
      }
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int k = getPaddingTop();
    int m = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    if (m <= 0) {
      return;
    }
    Object localObject1;
    if (mExpandedActionView != null)
    {
      localObject1 = mExpandedHomeLayout;
      label47:
      if (((ActionBarView.HomeView)localObject1).getVisibility() == 8) {
        break label905;
      }
      paramInt2 = ((ActionBarView.HomeView)localObject1).getLeftOffset();
    }
    label127:
    label187:
    label190:
    label307:
    label334:
    label346:
    label432:
    label470:
    label608:
    label747:
    label753:
    label879:
    label882:
    label896:
    label905:
    for (paramInt4 = positionChild((View)localObject1, i + paramInt2, k, m) + paramInt2 + i;; paramInt4 = i)
    {
      i = paramInt4;
      int j;
      if (mExpandedActionView == null)
      {
        if ((mTitleLayout == null) || (mTitleLayout.getVisibility() == 8) || ((mDisplayOptions & 0x8) == 0)) {
          break label608;
        }
        j = 1;
        paramInt2 = paramInt4;
        if (j != 0) {
          paramInt2 = paramInt4 + positionChild(mTitleLayout, paramInt4, k, m);
        }
      }
      switch (mNavigationMode)
      {
      default: 
        i = paramInt2;
        paramInt2 = i;
        paramInt3 = paramInt3 - paramInt1 - getPaddingRight();
        paramInt1 = paramInt3;
        if (mMenuView != null)
        {
          paramInt1 = paramInt3;
          if (mMenuView.getParent() == this)
          {
            positionChildInverse(mMenuView, paramInt3, k, m);
            paramInt1 = paramInt3 - mMenuView.getMeasuredWidth();
          }
        }
        if ((mIndeterminateProgressView != null) && (mIndeterminateProgressView.getVisibility() != 8))
        {
          positionChildInverse(mIndeterminateProgressView, paramInt1, k, m);
          paramInt1 -= mIndeterminateProgressView.getMeasuredWidth();
        }
        break;
      }
      for (;;)
      {
        if (mExpandedActionView != null) {
          localObject1 = mExpandedActionView;
        }
        for (;;)
        {
          Object localObject2;
          if (localObject1 != null)
          {
            localObject2 = ((View)localObject1).getLayoutParams();
            if (!(localObject2 instanceof ActionBar.LayoutParams)) {
              break label747;
            }
            localObject2 = (ActionBar.LayoutParams)localObject2;
            if (localObject2 == null) {
              break label753;
            }
            paramInt3 = gravity;
            k = ((View)localObject1).getMeasuredWidth();
            if (localObject2 == null) {
              break label882;
            }
            m = leftMargin;
            j = rightMargin;
            i = topMargin;
            paramInt4 = bottomMargin;
            j = paramInt1 - j;
          }
          for (paramInt1 = paramInt2 + m;; paramInt1 = paramInt2)
          {
            paramInt2 = paramInt3 & 0x7;
            if (paramInt2 == 1)
            {
              m = (getRight() - getLeft() - k) / 2;
              if (m < paramInt1) {
                paramInt2 = 3;
              }
            }
            for (;;)
            {
              switch (paramInt2)
              {
              case 2: 
              case 4: 
              default: 
                paramInt1 = 0;
              case 3: 
                paramInt2 = paramInt3 & 0x70;
                if (paramInt3 == -1) {
                  paramInt2 = 16;
                }
                paramInt3 = 0;
                switch (paramInt2)
                {
                default: 
                  paramInt2 = paramInt3;
                }
                break;
              }
              for (;;)
              {
                ((View)localObject1).layout(paramInt1, paramInt2, ((View)localObject1).getMeasuredWidth() + paramInt1, ((View)localObject1).getMeasuredHeight() + paramInt2);
                if (mProgressView == null) {
                  break;
                }
                mProgressView.bringToFront();
                paramInt1 = mProgressView.getMeasuredHeight() / 2;
                mProgressView.layout(mProgressBarPadding, -paramInt1, mProgressBarPadding + mProgressView.getMeasuredWidth(), paramInt1);
                return;
                localObject1 = mHomeLayout;
                break label47;
                j = 0;
                break label127;
                break label190;
                i = paramInt2;
                if (mListNavLayout == null) {
                  break label187;
                }
                paramInt4 = paramInt2;
                if (j != 0) {
                  paramInt4 = paramInt2 + mItemPadding;
                }
                paramInt2 = paramInt4 + (positionChild(mListNavLayout, paramInt4, k, m) + mItemPadding);
                break label190;
                i = paramInt2;
                if (mTabScrollView == null) {
                  break label187;
                }
                paramInt4 = paramInt2;
                if (j != 0) {
                  paramInt4 = paramInt2 + mItemPadding;
                }
                paramInt2 = paramInt4 + (positionChild(mTabScrollView, paramInt4, k, m) + mItemPadding);
                break label190;
                if (((mDisplayOptions & 0x10) == 0) || (mCustomNavView == null)) {
                  break label896;
                }
                localObject1 = mCustomNavView;
                break label307;
                localObject2 = null;
                break label334;
                paramInt3 = 19;
                break label346;
                if (m + k > j) {
                  paramInt2 = 5;
                }
                break label432;
                if (paramInt3 != -1) {
                  break label879;
                }
                paramInt2 = 3;
                break label432;
                paramInt1 = (getRight() - getLeft() - k) / 2;
                break label470;
                paramInt1 = j - k;
                break label470;
                paramInt2 = getPaddingTop();
                paramInt2 = (getBottom() - getTop() - getPaddingBottom() - paramInt2 - ((View)localObject1).getMeasuredHeight()) / 2;
                continue;
                paramInt2 = getPaddingTop() + i;
                continue;
                paramInt2 = getHeight() - getPaddingBottom() - ((View)localObject1).getMeasuredHeight() - paramInt4;
              }
            }
            j = paramInt1;
            i = 0;
            paramInt4 = 0;
          }
          localObject1 = null;
        }
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i4 = getChildCount();
    int j;
    int i;
    Object localObject1;
    int k;
    if (mIsCollapsable)
    {
      j = 0;
      i = 0;
      while (i < i4)
      {
        localObject1 = getChildAt(i);
        k = j;
        if (((View)localObject1).getVisibility() != 8) {
          if (localObject1 == mMenuView)
          {
            k = j;
            if (mMenuView.getChildCount() == 0) {}
          }
          else
          {
            k = j + 1;
          }
        }
        i += 1;
        j = k;
      }
      if (j == 0)
      {
        setMeasuredDimension(0, 0);
        mIsCollapsed = true;
        return;
      }
    }
    mIsCollapsed = false;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
    }
    if (View.MeasureSpec.getMode(paramInt2) != Integer.MIN_VALUE) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
    }
    int i5 = View.MeasureSpec.getSize(paramInt1);
    label216:
    int i6;
    int i3;
    int n;
    int m;
    label278:
    Object localObject2;
    if (mContentHeight > 0)
    {
      k = mContentHeight;
      i6 = getPaddingTop() + getPaddingBottom();
      paramInt1 = getPaddingLeft();
      paramInt2 = getPaddingRight();
      i3 = k - i6;
      n = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
      paramInt2 = i5 - paramInt1 - paramInt2;
      m = paramInt2 / 2;
      if (mExpandedActionView == null) {
        break label907;
      }
      localObject1 = mExpandedHomeLayout;
      if (((ActionBarView.HomeView)localObject1).getVisibility() == 8) {
        break label1301;
      }
      localObject2 = ((ActionBarView.HomeView)localObject1).getLayoutParams();
      if (width >= 0) {
        break label915;
      }
      paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE);
      label309:
      ((ActionBarView.HomeView)localObject1).measure(paramInt1, View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
      paramInt1 = ((ActionBarView.HomeView)localObject1).getMeasuredWidth();
      paramInt1 = ((ActionBarView.HomeView)localObject1).getLeftOffset() + paramInt1;
      paramInt2 = Math.max(0, paramInt2 - paramInt1);
    }
    label507:
    label540:
    label560:
    label592:
    label655:
    label705:
    label724:
    label747:
    label863:
    label907:
    label915:
    label1163:
    label1169:
    label1177:
    label1185:
    label1191:
    label1286:
    label1289:
    label1296:
    label1301:
    for (paramInt1 = Math.max(0, paramInt2 - paramInt1);; paramInt1 = m)
    {
      j = paramInt2;
      i = m;
      if (mMenuView != null)
      {
        j = paramInt2;
        i = m;
        if (mMenuView.getParent() == this)
        {
          j = measureChildView(mMenuView, paramInt2, n, 0);
          i = Math.max(0, m - mMenuView.getMeasuredWidth());
        }
      }
      paramInt2 = j;
      m = i;
      if (mIndeterminateProgressView != null)
      {
        paramInt2 = j;
        m = i;
        if (mIndeterminateProgressView.getVisibility() != 8)
        {
          paramInt2 = measureChildView(mIndeterminateProgressView, j, n, 0);
          m = Math.max(0, i - mIndeterminateProgressView.getMeasuredWidth());
        }
      }
      if ((mTitleLayout != null) && (mTitleLayout.getVisibility() != 8) && ((mDisplayOptions & 0x8) != 0))
      {
        i = 1;
        if (mExpandedActionView == null) {}
        switch (mNavigationMode)
        {
        default: 
          j = paramInt1;
          paramInt1 = paramInt2;
          paramInt2 = j;
          if (mExpandedActionView != null) {
            localObject1 = mExpandedActionView;
          }
          break;
        }
      }
      for (;;)
      {
        j = paramInt1;
        int i1;
        int i2;
        int i7;
        if (localObject1 != null)
        {
          ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(((View)localObject1).getLayoutParams());
          if (!(localLayoutParams instanceof ActionBar.LayoutParams)) {
            break label1163;
          }
          localObject2 = (ActionBar.LayoutParams)localLayoutParams;
          j = 0;
          i1 = 0;
          if (localObject2 != null)
          {
            j = leftMargin;
            j = rightMargin + j;
            i1 = topMargin + bottomMargin;
          }
          if ((mContentHeight <= 0) || (height == -2)) {
            break label1169;
          }
          n = 1073741824;
          i2 = i3;
          if (height >= 0) {
            i2 = Math.min(height, i3);
          }
          i7 = Math.max(0, i2 - i1);
          if (width == -2) {
            break label1177;
          }
          i1 = 1073741824;
          if (width < 0) {
            break label1185;
          }
          i2 = Math.min(width, paramInt1);
          i3 = Math.max(0, i2 - j);
          if (localObject2 == null) {
            break label1191;
          }
          i2 = gravity;
          if (((i2 & 0x7) != 1) || (width != -1)) {
            break label1289;
          }
        }
        for (m = Math.min(paramInt2, m) * 2;; m = i3)
        {
          ((View)localObject1).measure(View.MeasureSpec.makeMeasureSpec(m, i1), View.MeasureSpec.makeMeasureSpec(i7, n));
          j = paramInt1 - (((View)localObject1).getMeasuredWidth() + j);
          if ((mExpandedActionView == null) && (i != 0))
          {
            measureChildView(mTitleLayout, j, View.MeasureSpec.makeMeasureSpec(mContentHeight, 1073741824), 0);
            Math.max(0, paramInt2 - mTitleLayout.getMeasuredWidth());
          }
          if (mContentHeight <= 0)
          {
            paramInt1 = 0;
            paramInt2 = 0;
            if (paramInt2 < i4)
            {
              i = getChildAt(paramInt2).getMeasuredHeight() + i6;
              if (i <= paramInt1) {
                break label1286;
              }
              paramInt1 = i;
            }
          }
          for (;;)
          {
            paramInt2 += 1;
            break label863;
            k = View.MeasureSpec.getSize(paramInt2);
            break label216;
            localObject1 = mHomeLayout;
            break label278;
            paramInt1 = View.MeasureSpec.makeMeasureSpec(width, 1073741824);
            break label309;
            i = 0;
            break label507;
            if (mListNavLayout == null) {
              break label540;
            }
            if (i != 0) {}
            for (j = mItemPadding * 2;; j = mItemPadding)
            {
              paramInt2 = Math.max(0, paramInt2 - j);
              j = Math.max(0, paramInt1 - j);
              mListNavLayout.measure(View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
              n = mListNavLayout.getMeasuredWidth();
              paramInt1 = Math.max(0, paramInt2 - n);
              paramInt2 = Math.max(0, j - n);
              break;
            }
            if (mTabScrollView == null) {
              break label540;
            }
            if (i != 0) {}
            for (j = mItemPadding * 2;; j = mItemPadding)
            {
              paramInt2 = Math.max(0, paramInt2 - j);
              j = Math.max(0, paramInt1 - j);
              mTabScrollView.measure(View.MeasureSpec.makeMeasureSpec(paramInt2, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
              n = mTabScrollView.getMeasuredWidth();
              paramInt1 = Math.max(0, paramInt2 - n);
              paramInt2 = Math.max(0, j - n);
              break;
            }
            if (((mDisplayOptions & 0x10) == 0) || (mCustomNavView == null)) {
              break label1296;
            }
            localObject1 = mCustomNavView;
            break label560;
            localObject2 = null;
            break label592;
            n = Integer.MIN_VALUE;
            break label655;
            i1 = Integer.MIN_VALUE;
            break label705;
            i2 = paramInt1;
            break label724;
            i2 = 19;
            break label747;
            setMeasuredDimension(i5, paramInt1);
            for (;;)
            {
              if (mContextView != null) {
                mContextView.setContentHeight(getMeasuredHeight());
              }
              if ((mProgressView == null) || (mProgressView.getVisibility() == 8)) {
                break;
              }
              mProgressView.measure(View.MeasureSpec.makeMeasureSpec(i5 - mProgressBarPadding * 2, 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
              return;
              setMeasuredDimension(i5, k);
            }
          }
        }
        localObject1 = null;
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (ActionBarView.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if ((expandedMenuItemId != 0) && (mExpandedMenuPresenter != null) && (mOptionsMenu != null))
    {
      MenuItem localMenuItem = mOptionsMenu.findItem(expandedMenuItemId);
      if (localMenuItem != null) {
        localMenuItem.expandActionView();
      }
    }
    if (isOverflowOpen) {
      postShowOverflowMenu();
    }
  }
  
  public Parcelable onSaveInstanceState()
  {
    ActionBarView.SavedState localSavedState = new ActionBarView.SavedState(super.onSaveInstanceState());
    if ((mExpandedMenuPresenter != null) && (mExpandedMenuPresenter.mCurrentExpandedItem != null)) {
      expandedMenuItemId = mExpandedMenuPresenter.mCurrentExpandedItem.getItemId();
    }
    isOverflowOpen = isOverflowMenuShowing();
    return localSavedState;
  }
  
  public void setCallback(ActionBar.OnNavigationListener paramOnNavigationListener)
  {
    mCallback = paramOnNavigationListener;
  }
  
  public void setCollapsable(boolean paramBoolean)
  {
    mIsCollapsable = paramBoolean;
  }
  
  public void setContextView(ActionBarContextView paramActionBarContextView)
  {
    mContextView = paramActionBarContextView;
  }
  
  public void setCustomNavigationView(View paramView)
  {
    if ((mDisplayOptions & 0x10) != 0) {}
    for (int i = 1;; i = 0)
    {
      if ((mCustomNavView != null) && (i != 0)) {
        removeView(mCustomNavView);
      }
      mCustomNavView = paramView;
      if ((mCustomNavView != null) && (i != 0)) {
        addView(mCustomNavView);
      }
      return;
    }
  }
  
  public void setDisplayOptions(int paramInt)
  {
    int n = 8;
    int j = -1;
    boolean bool2 = true;
    int k;
    label40:
    int i;
    label55:
    boolean bool1;
    label80:
    label122:
    Object localObject;
    label137:
    label161:
    int m;
    if (mDisplayOptions == -1)
    {
      mDisplayOptions = paramInt;
      if ((j & 0x1F) == 0) {
        break label378;
      }
      if ((paramInt & 0x2) == 0) {
        break label305;
      }
      k = 1;
      if ((k == 0) || (mExpandedActionView != null)) {
        break label311;
      }
      i = 0;
      mHomeLayout.setVisibility(i);
      if ((j & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0) {
          break label318;
        }
        bool1 = true;
        mHomeLayout.setUp(bool1);
        if (bool1) {
          setHomeButtonEnabled(true);
        }
      }
      if ((j & 0x1) != 0)
      {
        if ((mLogo == null) || ((paramInt & 0x1) == 0)) {
          break label324;
        }
        i = 1;
        ActionBarView.HomeView localHomeView = mHomeLayout;
        if (i == 0) {
          break label330;
        }
        localObject = mLogo;
        localHomeView.setIcon((Drawable)localObject);
      }
      if ((j & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0) {
          break label338;
        }
        initTitle();
      }
      if ((mTitleLayout != null) && ((j & 0x6) != 0))
      {
        if ((mDisplayOptions & 0x4) == 0) {
          break label349;
        }
        m = 1;
        label188:
        localObject = mTitleUpView;
        i = n;
        if (k == 0)
        {
          if (m == 0) {
            break label355;
          }
          i = 0;
        }
        label210:
        ((View)localObject).setVisibility(i);
        localObject = mTitleLayout;
        if ((k != 0) || (m == 0)) {
          break label361;
        }
        bool1 = bool2;
        label235:
        ((LinearLayout)localObject).setEnabled(bool1);
      }
      if (((j & 0x10) != 0) && (mCustomNavView != null))
      {
        if ((paramInt & 0x10) == 0) {
          break label367;
        }
        addView(mCustomNavView);
      }
      label271:
      requestLayout();
    }
    for (;;)
    {
      if (mHomeLayout.isEnabled()) {
        break label385;
      }
      mHomeLayout.setContentDescription(null);
      return;
      j = mDisplayOptions ^ paramInt;
      break;
      label305:
      k = 0;
      break label40;
      label311:
      i = 8;
      break label55;
      label318:
      bool1 = false;
      break label80;
      label324:
      i = 0;
      break label122;
      label330:
      localObject = mIcon;
      break label137;
      label338:
      removeView(mTitleLayout);
      break label161;
      label349:
      m = 0;
      break label188;
      label355:
      i = 4;
      break label210;
      label361:
      bool1 = false;
      break label235;
      label367:
      removeView(mCustomNavView);
      break label271;
      label378:
      invalidate();
    }
    label385:
    if ((paramInt & 0x4) != 0)
    {
      mHomeLayout.setContentDescription(mContext.getResources().getText(R.string.abs__action_bar_up_description));
      return;
    }
    mHomeLayout.setContentDescription(mContext.getResources().getText(R.string.abs__action_bar_home_description));
  }
  
  public void setDropdownAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    mSpinnerAdapter = paramSpinnerAdapter;
    if (mSpinner != null) {
      mSpinner.setAdapter(paramSpinnerAdapter);
    }
  }
  
  public void setDropdownSelectedPosition(int paramInt)
  {
    mSpinner.setSelection(paramInt);
  }
  
  public void setEmbeddedTabView(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if (mTabScrollView != null) {
      removeView(mTabScrollView);
    }
    mTabScrollView = paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null) {}
    for (boolean bool = true;; bool = false)
    {
      mIncludeTabs = bool;
      if ((mIncludeTabs) && (mNavigationMode == 2))
      {
        addView(mTabScrollView);
        ViewGroup.LayoutParams localLayoutParams = mTabScrollView.getLayoutParams();
        width = -2;
        height = -1;
        paramScrollingTabContainerView.setAllowCollapse(true);
      }
      return;
    }
  }
  
  public void setHomeButtonEnabled(boolean paramBoolean)
  {
    mHomeLayout.setEnabled(paramBoolean);
    mHomeLayout.setFocusable(paramBoolean);
    if (!paramBoolean)
    {
      mHomeLayout.setContentDescription(null);
      return;
    }
    if ((mDisplayOptions & 0x4) != 0)
    {
      mHomeLayout.setContentDescription(mContext.getResources().getText(R.string.abs__action_bar_up_description));
      return;
    }
    mHomeLayout.setContentDescription(mContext.getResources().getText(R.string.abs__action_bar_home_description));
  }
  
  public void setIcon(int paramInt)
  {
    setIcon(mContext.getResources().getDrawable(paramInt));
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    mIcon = paramDrawable;
    if ((paramDrawable != null) && (((mDisplayOptions & 0x1) == 0) || (mLogo == null))) {
      mHomeLayout.setIcon(paramDrawable);
    }
  }
  
  public void setLogo(int paramInt)
  {
    setLogo(mContext.getResources().getDrawable(paramInt));
  }
  
  public void setLogo(Drawable paramDrawable)
  {
    mLogo = paramDrawable;
    if ((paramDrawable != null) && ((mDisplayOptions & 0x1) != 0)) {
      mHomeLayout.setIcon(paramDrawable);
    }
  }
  
  public void setMenu(Menu paramMenu, MenuPresenter.Callback paramCallback)
  {
    if (paramMenu == mOptionsMenu) {
      return;
    }
    if (mOptionsMenu != null)
    {
      mOptionsMenu.removeMenuPresenter(mActionMenuPresenter);
      mOptionsMenu.removeMenuPresenter(mExpandedMenuPresenter);
    }
    paramMenu = (MenuBuilder)paramMenu;
    mOptionsMenu = paramMenu;
    ViewGroup localViewGroup;
    if (mMenuView != null)
    {
      localViewGroup = (ViewGroup)mMenuView.getParent();
      if (localViewGroup != null) {
        localViewGroup.removeView(mMenuView);
      }
    }
    if (mActionMenuPresenter == null)
    {
      mActionMenuPresenter = new ActionMenuPresenter(mContext);
      mActionMenuPresenter.setCallback(paramCallback);
      mActionMenuPresenter.setId(R.id.abs__action_menu_presenter);
      mExpandedMenuPresenter = new ActionBarView.ExpandedActionViewMenuPresenter(this, null);
    }
    paramCallback = new ViewGroup.LayoutParams(-2, -1);
    if (!mSplitActionBar)
    {
      mActionMenuPresenter.setExpandedActionViewsExclusive(ResourcesCompat.getResources_getBoolean(getContext(), R.bool.abs__action_bar_expanded_action_views_exclusive));
      configPresenters(paramMenu);
      paramMenu = (ActionMenuView)mActionMenuPresenter.getMenuView(this);
      localViewGroup = (ViewGroup)paramMenu.getParent();
      if ((localViewGroup != null) && (localViewGroup != this)) {
        localViewGroup.removeView(paramMenu);
      }
      addView(paramMenu, paramCallback);
    }
    for (;;)
    {
      mMenuView = paramMenu;
      return;
      mActionMenuPresenter.setExpandedActionViewsExclusive(false);
      mActionMenuPresenter.setWidthLimit(getContextgetResourcesgetDisplayMetricswidthPixels, true);
      mActionMenuPresenter.setItemLimit(Integer.MAX_VALUE);
      width = -1;
      configPresenters(paramMenu);
      paramMenu = (ActionMenuView)mActionMenuPresenter.getMenuView(this);
      if (mSplitView != null)
      {
        localViewGroup = (ViewGroup)paramMenu.getParent();
        if ((localViewGroup != null) && (localViewGroup != mSplitView)) {
          localViewGroup.removeView(paramMenu);
        }
        paramMenu.setVisibility(getAnimatedVisibility());
        mSplitView.addView(paramMenu, paramCallback);
      }
      else
      {
        paramMenu.setLayoutParams(paramCallback);
      }
    }
  }
  
  public void setNavigationMode(int paramInt)
  {
    int i = mNavigationMode;
    if (paramInt != i) {
      switch (i)
      {
      default: 
        switch (paramInt)
        {
        }
        break;
      }
    }
    for (;;)
    {
      mNavigationMode = paramInt;
      requestLayout();
      return;
      if (mListNavLayout == null) {
        break;
      }
      removeView(mListNavLayout);
      break;
      if ((mTabScrollView == null) || (!mIncludeTabs)) {
        break;
      }
      removeView(mTabScrollView);
      break;
      if (mSpinner == null)
      {
        mSpinner = new IcsSpinner(mContext, null, R.attr.actionDropDownStyle);
        mListNavLayout = ((IcsLinearLayout)LayoutInflater.from(mContext).inflate(R.layout.abs__action_bar_tab_bar_view, null));
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
        gravity = 17;
        mListNavLayout.addView(mSpinner, localLayoutParams);
      }
      if (mSpinner.getAdapter() != mSpinnerAdapter) {
        mSpinner.setAdapter(mSpinnerAdapter);
      }
      mSpinner.setOnItemSelectedListener(mNavItemSelectedListener);
      addView(mListNavLayout);
      continue;
      if ((mTabScrollView != null) && (mIncludeTabs)) {
        addView(mTabScrollView);
      }
    }
  }
  
  public void setSplitActionBar(boolean paramBoolean)
  {
    Object localObject;
    if (mSplitActionBar != paramBoolean)
    {
      if (mMenuView != null)
      {
        localObject = (ViewGroup)mMenuView.getParent();
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(mMenuView);
        }
        if (!paramBoolean) {
          break label89;
        }
        if (mSplitView != null) {
          mSplitView.addView(mMenuView);
        }
      }
      if (mSplitView != null)
      {
        localObject = mSplitView;
        if (!paramBoolean) {
          break label100;
        }
      }
    }
    label89:
    label100:
    for (int i = 0;; i = 8)
    {
      ((ActionBarContainer)localObject).setVisibility(i);
      super.setSplitActionBar(paramBoolean);
      return;
      addView(mMenuView);
      break;
    }
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    int j = 0;
    mSubtitle = paramCharSequence;
    if (mSubtitleView != null)
    {
      mSubtitleView.setText(paramCharSequence);
      TextView localTextView = mSubtitleView;
      if (paramCharSequence == null) {
        break label96;
      }
      i = 0;
      localTextView.setVisibility(i);
      if ((mExpandedActionView != null) || ((mDisplayOptions & 0x8) == 0) || ((TextUtils.isEmpty(mTitle)) && (TextUtils.isEmpty(mSubtitle)))) {
        break label102;
      }
      i = 1;
      label78:
      paramCharSequence = mTitleLayout;
      if (i == 0) {
        break label107;
      }
    }
    label96:
    label102:
    label107:
    for (int i = j;; i = 8)
    {
      paramCharSequence.setVisibility(i);
      return;
      i = 8;
      break;
      i = 0;
      break label78;
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    mUserTitle = true;
    setTitleImpl(paramCharSequence);
  }
  
  public void setWindowCallback(Window.Callback paramCallback)
  {
    mWindowCallback = paramCallback;
  }
  
  public void setWindowTitle(CharSequence paramCharSequence)
  {
    if (!mUserTitle) {
      setTitleImpl(paramCharSequence);
    }
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */