package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.actionbarsherlock.R.bool;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.view.View_HasStateListenerSupport;
import com.actionbarsherlock.internal.view.View_OnAttachStateChangeListener;
import com.actionbarsherlock.internal.widget.CapitalizingButton;
import com.actionbarsherlock.internal.widget.IcsToast;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class ActionMenuItemView
  extends LinearLayout
  implements View.OnClickListener, View.OnLongClickListener, View_HasStateListenerSupport, ActionMenuView.ActionMenuChildView, MenuView.ItemView
{
  private boolean mAllowTextWithIcon;
  private boolean mExpandedFormat;
  private ImageButton mImageButton;
  private MenuItemImpl mItemData;
  private MenuBuilder.ItemInvoker mItemInvoker;
  private final Set<View_OnAttachStateChangeListener> mListeners = new HashSet();
  private int mMinWidth;
  private CapitalizingButton mTextButton;
  private CharSequence mTitle;
  
  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    mAllowTextWithIcon = ResourcesCompat.getResources_getBoolean(paramContext, R.bool.abs__config_allowActionMenuItemTextWithIcon);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockActionMenuItemView, 0, 0);
    mMinWidth = paramContext.getDimensionPixelSize(0, 0);
    paramContext.recycle();
  }
  
  private void updateTextButtonVisibility()
  {
    int m = 1;
    int k = 0;
    int j;
    label64:
    CapitalizingButton localCapitalizingButton;
    if (!TextUtils.isEmpty(mTextButton.getText()))
    {
      i = 1;
      j = m;
      if (mImageButton.getDrawable() != null)
      {
        if (!mItemData.showsTextAsAction()) {
          break label89;
        }
        j = m;
        if (!mAllowTextWithIcon)
        {
          if (!mExpandedFormat) {
            break label89;
          }
          j = m;
        }
      }
      localCapitalizingButton = mTextButton;
      if ((i & j) == 0) {
        break label94;
      }
    }
    label89:
    label94:
    for (int i = k;; i = 8)
    {
      localCapitalizingButton.setVisibility(i);
      return;
      i = 0;
      break;
      j = 0;
      break label64;
    }
  }
  
  public void addOnAttachStateChangeListener(View_OnAttachStateChangeListener paramView_OnAttachStateChangeListener)
  {
    mListeners.add(paramView_OnAttachStateChangeListener);
  }
  
  public boolean dispatchHoverEvent(MotionEvent paramMotionEvent)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      return onHoverEvent(paramMotionEvent);
    }
    return false;
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    onPopulateAccessibilityEvent(paramAccessibilityEvent);
    return true;
  }
  
  public MenuItemImpl getItemData()
  {
    return mItemData;
  }
  
  public boolean hasText()
  {
    return mTextButton.getVisibility() != 8;
  }
  
  public void initialize(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    mItemData = paramMenuItemImpl;
    setIcon(paramMenuItemImpl.getIcon());
    setTitle(paramMenuItemImpl.getTitleForItemView(this));
    setId(paramMenuItemImpl.getItemId());
    if (paramMenuItemImpl.isVisible()) {}
    for (paramInt = 0;; paramInt = 8)
    {
      setVisibility(paramInt);
      setEnabled(paramMenuItemImpl.isEnabled());
      return;
    }
  }
  
  public boolean needsDividerAfter()
  {
    return hasText();
  }
  
  public boolean needsDividerBefore()
  {
    return (hasText()) && (mItemData.getIcon() == null);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    Iterator localIterator = mListeners.iterator();
    while (localIterator.hasNext()) {
      ((View_OnAttachStateChangeListener)localIterator.next()).onViewAttachedToWindow(this);
    }
  }
  
  public void onClick(View paramView)
  {
    if (mItemInvoker != null) {
      mItemInvoker.invokeItem(mItemData);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Iterator localIterator = mListeners.iterator();
    while (localIterator.hasNext()) {
      ((View_OnAttachStateChangeListener)localIterator.next()).onViewDetachedFromWindow(this);
    }
  }
  
  public void onFinishInflate()
  {
    mImageButton = ((ImageButton)findViewById(R.id.abs__imageButton));
    mTextButton = ((CapitalizingButton)findViewById(R.id.abs__textButton));
    mImageButton.setOnClickListener(this);
    mTextButton.setOnClickListener(this);
    mImageButton.setOnLongClickListener(this);
    setOnClickListener(this);
    setOnLongClickListener(this);
  }
  
  public boolean onLongClick(View paramView)
  {
    if (hasText()) {
      return false;
    }
    paramView = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(paramView);
    getWindowVisibleDisplayFrame(localRect);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = paramView[1];
    int m = j / 2;
    int n = getResourcesgetDisplayMetricswidthPixels;
    localObject = IcsToast.makeText((Context)localObject, mItemData.getTitle(), 0);
    if (k + m < localRect.height()) {
      ((Toast)localObject).setGravity(53, n - paramView[0] - i / 2, j);
    }
    for (;;)
    {
      ((Toast)localObject).show();
      return true;
      ((Toast)localObject).setGravity(81, 0, j);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    int j = getMeasuredWidth();
    if (i == Integer.MIN_VALUE) {}
    for (paramInt1 = Math.min(paramInt1, mMinWidth);; paramInt1 = mMinWidth)
    {
      if ((i != 1073741824) && (mMinWidth > 0) && (j < paramInt1)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      }
      return;
    }
  }
  
  public void onPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      super.onPopulateAccessibilityEvent(paramAccessibilityEvent);
    }
    CharSequence localCharSequence = getContentDescription();
    if (!TextUtils.isEmpty(localCharSequence)) {
      paramAccessibilityEvent.getText().add(localCharSequence);
    }
  }
  
  public boolean prefersCondensedTitle()
  {
    return true;
  }
  
  public void removeOnAttachStateChangeListener(View_OnAttachStateChangeListener paramView_OnAttachStateChangeListener)
  {
    mListeners.remove(paramView_OnAttachStateChangeListener);
  }
  
  public void setCheckable(boolean paramBoolean) {}
  
  public void setChecked(boolean paramBoolean) {}
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    mImageButton.setEnabled(paramBoolean);
    mTextButton.setEnabled(paramBoolean);
  }
  
  public void setExpandedFormat(boolean paramBoolean)
  {
    if (mExpandedFormat != paramBoolean)
    {
      mExpandedFormat = paramBoolean;
      if (mItemData != null) {
        mItemData.actionFormatChanged();
      }
    }
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    mImageButton.setImageDrawable(paramDrawable);
    if (paramDrawable != null) {
      mImageButton.setVisibility(0);
    }
    for (;;)
    {
      updateTextButtonVisibility();
      return;
      mImageButton.setVisibility(8);
    }
  }
  
  public void setItemInvoker(MenuBuilder.ItemInvoker paramItemInvoker)
  {
    mItemInvoker = paramItemInvoker;
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar) {}
  
  public void setTitle(CharSequence paramCharSequence)
  {
    mTitle = paramCharSequence;
    mTextButton.setTextCompat(mTitle);
    setContentDescription(mTitle);
    updateTextButtonVisibility();
  }
  
  public boolean showsIcon()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */