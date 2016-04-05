package com.actionbarsherlock.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.R.dimen;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.string;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsListPopupWindow;
import com.actionbarsherlock.view.ActionProvider;

class ActivityChooserView
  extends ViewGroup
  implements ActivityChooserModel.ActivityChooserModelClient
{
  private static final boolean IS_HONEYCOMB;
  private final IcsLinearLayout mActivityChooserContent;
  private final Drawable mActivityChooserContentBackground;
  private final ActivityChooserView.ActivityChooserViewAdapter mAdapter;
  private final ActivityChooserView.Callbacks mCallbacks;
  private final Context mContext;
  private int mDefaultActionButtonContentDescription;
  private final FrameLayout mDefaultActivityButton;
  private final ImageView mDefaultActivityButtonImage;
  private final FrameLayout mExpandActivityOverflowButton;
  private final ImageView mExpandActivityOverflowButtonImage;
  private int mInitialActivityCount = 4;
  private boolean mIsAttachedToWindow;
  private boolean mIsSelectingDefaultActivity;
  private final int mListPopupMaxWidth;
  private IcsListPopupWindow mListPopupWindow;
  private final DataSetObserver mModelDataSetOberver = new ActivityChooserView.1(this);
  private PopupWindow.OnDismissListener mOnDismissListener;
  private final ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener = new ActivityChooserView.2(this);
  ActionProvider mProvider;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      IS_HONEYCOMB = bool;
      return;
    }
  }
  
  public ActivityChooserView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    mContext = paramContext;
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockActivityChooserView, paramInt, 0);
    mInitialActivityCount = paramAttributeSet.getInt(1, 4);
    Drawable localDrawable = paramAttributeSet.getDrawable(2);
    paramAttributeSet.recycle();
    LayoutInflater.from(mContext).inflate(R.layout.abs__activity_chooser_view, this, true);
    mCallbacks = new ActivityChooserView.Callbacks(this, null);
    mActivityChooserContent = ((IcsLinearLayout)findViewById(R.id.abs__activity_chooser_view_content));
    mActivityChooserContentBackground = mActivityChooserContent.getBackground();
    mDefaultActivityButton = ((FrameLayout)findViewById(R.id.abs__default_activity_button));
    mDefaultActivityButton.setOnClickListener(mCallbacks);
    mDefaultActivityButton.setOnLongClickListener(mCallbacks);
    mDefaultActivityButtonImage = ((ImageView)mDefaultActivityButton.findViewById(R.id.abs__image));
    mExpandActivityOverflowButton = ((FrameLayout)findViewById(R.id.abs__expand_activities_button));
    mExpandActivityOverflowButton.setOnClickListener(mCallbacks);
    mExpandActivityOverflowButtonImage = ((ImageView)mExpandActivityOverflowButton.findViewById(R.id.abs__image));
    mExpandActivityOverflowButtonImage.setImageDrawable(localDrawable);
    mAdapter = new ActivityChooserView.ActivityChooserViewAdapter(this, null);
    mAdapter.registerDataSetObserver(new ActivityChooserView.3(this));
    paramContext = paramContext.getResources();
    mListPopupMaxWidth = Math.max(getDisplayMetricswidthPixels / 2, paramContext.getDimensionPixelSize(R.dimen.abs__config_prefDialogWidth));
  }
  
  private IcsListPopupWindow getListPopupWindow()
  {
    if (mListPopupWindow == null)
    {
      mListPopupWindow = new IcsListPopupWindow(getContext());
      mListPopupWindow.setAdapter(mAdapter);
      mListPopupWindow.setAnchorView(this);
      mListPopupWindow.setModal(true);
      mListPopupWindow.setOnItemClickListener(mCallbacks);
      mListPopupWindow.setOnDismissListener(mCallbacks);
    }
    return mListPopupWindow;
  }
  
  private void showPopupUnchecked(int paramInt)
  {
    if (mAdapter.getDataModel() == null) {
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }
    getViewTreeObserver().addOnGlobalLayoutListener(mOnGlobalLayoutListener);
    boolean bool;
    int i;
    label61:
    label94:
    IcsListPopupWindow localIcsListPopupWindow;
    if (mDefaultActivityButton.getVisibility() == 0)
    {
      bool = true;
      int j = mAdapter.getActivityCount();
      if (!bool) {
        break label189;
      }
      i = 1;
      if ((paramInt == Integer.MAX_VALUE) || (j <= i + paramInt)) {
        break label194;
      }
      mAdapter.setShowFooterView(true);
      mAdapter.setMaxActivityCount(paramInt - 1);
      localIcsListPopupWindow = getListPopupWindow();
      if (!localIcsListPopupWindow.isShowing())
      {
        if ((!mIsSelectingDefaultActivity) && (bool)) {
          break label213;
        }
        mAdapter.setShowDefaultActivity(true, bool);
      }
    }
    for (;;)
    {
      localIcsListPopupWindow.setContentWidth(Math.min(mAdapter.measureContentWidth(), mListPopupMaxWidth));
      localIcsListPopupWindow.show();
      if (mProvider != null) {
        mProvider.subUiVisibilityChanged(true);
      }
      localIcsListPopupWindow.getListView().setContentDescription(mContext.getString(R.string.abs__activitychooserview_choose_application));
      return;
      bool = false;
      break;
      label189:
      i = 0;
      break label61;
      label194:
      mAdapter.setShowFooterView(false);
      mAdapter.setMaxActivityCount(paramInt);
      break label94;
      label213:
      mAdapter.setShowDefaultActivity(false, false);
    }
  }
  
  private void updateAppearance()
  {
    if (mAdapter.getCount() > 0)
    {
      mExpandActivityOverflowButton.setEnabled(true);
      int i = mAdapter.getActivityCount();
      int j = mAdapter.getHistorySize();
      if ((i <= 0) || (j <= 0)) {
        break label163;
      }
      mDefaultActivityButton.setVisibility(0);
      Object localObject = mAdapter.getDefaultActivity();
      PackageManager localPackageManager = mContext.getPackageManager();
      mDefaultActivityButtonImage.setImageDrawable(((ResolveInfo)localObject).loadIcon(localPackageManager));
      if (mDefaultActionButtonContentDescription != 0)
      {
        localObject = ((ResolveInfo)localObject).loadLabel(localPackageManager);
        localObject = mContext.getString(mDefaultActionButtonContentDescription, new Object[] { localObject });
        mDefaultActivityButton.setContentDescription((CharSequence)localObject);
      }
      mAdapter.setShowDefaultActivity(false, false);
    }
    for (;;)
    {
      if (mDefaultActivityButton.getVisibility() != 0) {
        break label175;
      }
      mActivityChooserContent.setBackgroundDrawable(mActivityChooserContentBackground);
      return;
      mExpandActivityOverflowButton.setEnabled(false);
      break;
      label163:
      mDefaultActivityButton.setVisibility(8);
    }
    label175:
    mActivityChooserContent.setBackgroundDrawable(null);
    mActivityChooserContent.setPadding(0, 0, 0, 0);
  }
  
  public boolean dismissPopup()
  {
    if (isShowingPopup())
    {
      getListPopupWindow().dismiss();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(mOnGlobalLayoutListener);
      }
    }
    return true;
  }
  
  public ActivityChooserModel getDataModel()
  {
    return mAdapter.getDataModel();
  }
  
  public boolean isShowingPopup()
  {
    return getListPopupWindow().isShowing();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ActivityChooserModel localActivityChooserModel = mAdapter.getDataModel();
    if (localActivityChooserModel != null) {}
    try
    {
      localActivityChooserModel.registerObserver(mModelDataSetOberver);
      mIsAttachedToWindow = true;
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = mAdapter.getDataModel();
    if (localObject != null) {}
    try
    {
      ((ActivityChooserModel)localObject).unregisterObserver(mModelDataSetOberver);
      localObject = getViewTreeObserver();
      if (((ViewTreeObserver)localObject).isAlive()) {
        ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(mOnGlobalLayoutListener);
      }
      mIsAttachedToWindow = false;
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mActivityChooserContent.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (getListPopupWindow().isShowing())
    {
      showPopupUnchecked(mAdapter.getMaxActivityCount());
      return;
    }
    dismissPopup();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    IcsLinearLayout localIcsLinearLayout = mActivityChooserContent;
    int i = paramInt2;
    if (mDefaultActivityButton.getVisibility() != 0) {
      i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    }
    measureChild(localIcsLinearLayout, paramInt1, i);
    setMeasuredDimension(localIcsLinearLayout.getMeasuredWidth(), localIcsLinearLayout.getMeasuredHeight());
  }
  
  public void setActivityChooserModel(ActivityChooserModel paramActivityChooserModel)
  {
    mAdapter.setDataModel(paramActivityChooserModel);
    if (isShowingPopup())
    {
      dismissPopup();
      showPopup();
    }
  }
  
  public void setDefaultActionButtonContentDescription(int paramInt)
  {
    mDefaultActionButtonContentDescription = paramInt;
  }
  
  public void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = mContext.getString(paramInt);
    mExpandActivityOverflowButtonImage.setContentDescription(str);
  }
  
  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    mExpandActivityOverflowButtonImage.setImageDrawable(paramDrawable);
  }
  
  public void setInitialActivityCount(int paramInt)
  {
    mInitialActivityCount = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    mOnDismissListener = paramOnDismissListener;
  }
  
  public void setProvider(ActionProvider paramActionProvider)
  {
    mProvider = paramActionProvider;
  }
  
  public boolean showPopup()
  {
    if ((isShowingPopup()) || (!mIsAttachedToWindow)) {
      return false;
    }
    mIsSelectingDefaultActivity = false;
    showPopupUnchecked(mInitialActivityCount);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */