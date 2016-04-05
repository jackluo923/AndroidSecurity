package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.R.attr;

public class IcsListPopupWindow
{
  private static final int EXPAND_LIST_TIMEOUT = 250;
  public static final int POSITION_PROMPT_ABOVE = 0;
  public static final int POSITION_PROMPT_BELOW = 1;
  private ListAdapter mAdapter;
  private Context mContext;
  private View mDropDownAnchorView;
  private int mDropDownHeight = -2;
  private int mDropDownHorizontalOffset;
  private IcsListPopupWindow.DropDownListView mDropDownList;
  private Drawable mDropDownListHighlight;
  private int mDropDownVerticalOffset;
  private boolean mDropDownVerticalOffsetSet;
  private int mDropDownWidth = -2;
  private Handler mHandler = new Handler();
  private final IcsListPopupWindow.ListSelectorHider mHideSelector = new IcsListPopupWindow.ListSelectorHider(this, null);
  private AdapterView.OnItemClickListener mItemClickListener;
  private AdapterView.OnItemSelectedListener mItemSelectedListener;
  private int mListItemExpandMaximum = Integer.MAX_VALUE;
  private boolean mModal;
  private DataSetObserver mObserver;
  private final PopupWindowCompat mPopup;
  private int mPromptPosition = 0;
  private View mPromptView;
  private final IcsListPopupWindow.ResizePopupRunnable mResizePopupRunnable = new IcsListPopupWindow.ResizePopupRunnable(this, null);
  private final IcsListPopupWindow.PopupScrollListener mScrollListener = new IcsListPopupWindow.PopupScrollListener(this, null);
  private Rect mTempRect = new Rect();
  private final IcsListPopupWindow.PopupTouchInterceptor mTouchInterceptor = new IcsListPopupWindow.PopupTouchInterceptor(this, null);
  
  public IcsListPopupWindow(Context paramContext)
  {
    this(paramContext, null, R.attr.listPopupWindowStyle);
  }
  
  public IcsListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    mContext = paramContext;
    mPopup = new PopupWindowCompat(paramContext, paramAttributeSet, paramInt);
    mPopup.setInputMethodMode(1);
  }
  
  public IcsListPopupWindow(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    mContext = paramContext;
    if (Build.VERSION.SDK_INT < 11) {}
    for (mPopup = new PopupWindowCompat(new ContextThemeWrapper(paramContext, paramInt2), paramAttributeSet, paramInt1);; mPopup = new PopupWindowCompat(paramContext, paramAttributeSet, paramInt1, paramInt2))
    {
      mPopup.setInputMethodMode(1);
      return;
    }
  }
  
  private int buildDropDown()
  {
    boolean bool2 = true;
    Object localObject2;
    boolean bool1;
    Object localObject1;
    View localView;
    LinearLayout.LayoutParams localLayoutParams;
    label204:
    int i;
    int j;
    if (mDropDownList == null)
    {
      localObject2 = mContext;
      if (!mModal)
      {
        bool1 = true;
        mDropDownList = new IcsListPopupWindow.DropDownListView((Context)localObject2, bool1);
        if (mDropDownListHighlight != null) {
          mDropDownList.setSelector(mDropDownListHighlight);
        }
        mDropDownList.setAdapter(mAdapter);
        mDropDownList.setOnItemClickListener(mItemClickListener);
        mDropDownList.setFocusable(true);
        mDropDownList.setFocusableInTouchMode(true);
        mDropDownList.setOnItemSelectedListener(new IcsListPopupWindow.1(this));
        mDropDownList.setOnScrollListener(mScrollListener);
        if (mItemSelectedListener != null) {
          mDropDownList.setOnItemSelectedListener(mItemSelectedListener);
        }
        localObject1 = mDropDownList;
        localView = mPromptView;
        if (localView == null) {
          break label513;
        }
        localObject2 = new LinearLayout((Context)localObject2);
        ((LinearLayout)localObject2).setOrientation(1);
        localLayoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0F);
        switch (mPromptPosition)
        {
        default: 
          localView.measure(View.MeasureSpec.makeMeasureSpec(mDropDownWidth, Integer.MIN_VALUE), 0);
          localObject1 = (LinearLayout.LayoutParams)localView.getLayoutParams();
          i = localView.getMeasuredHeight();
          j = topMargin;
          i = bottomMargin + (i + j);
          localObject1 = localObject2;
        }
      }
    }
    for (;;)
    {
      mPopup.setContentView((View)localObject1);
      for (;;)
      {
        label260:
        localObject1 = mPopup.getBackground();
        int k;
        if (localObject1 != null)
        {
          ((Drawable)localObject1).getPadding(mTempRect);
          j = mTempRect.top;
          k = mTempRect.bottom;
          if (!mDropDownVerticalOffsetSet) {
            mDropDownVerticalOffset = (-mTempRect.top);
          }
          j += k;
        }
        for (;;)
        {
          if (mPopup.getInputMethodMode() == 2) {}
          for (bool1 = bool2;; bool1 = false)
          {
            k = getMaxAvailableHeight(mDropDownAnchorView, mDropDownVerticalOffset, bool1);
            if (mDropDownHeight != -1) {
              break label464;
            }
            return k + j;
            bool1 = false;
            break;
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            ((LinearLayout)localObject2).addView(localView);
            break label204;
            ((LinearLayout)localObject2).addView(localView);
            ((LinearLayout)localObject2).addView((View)localObject1, localLayoutParams);
            break label204;
            mPopup.getContentView();
            localObject1 = mPromptView;
            if (localObject1 == null) {
              break label507;
            }
            localObject2 = (LinearLayout.LayoutParams)((View)localObject1).getLayoutParams();
            i = ((View)localObject1).getMeasuredHeight();
            j = topMargin;
            i = bottomMargin + (i + j);
            break label260;
          }
          label464:
          int m = measureHeightOfChildren(0, 0, -1, k - i, -1);
          k = i;
          if (m > 0) {
            k = i + j;
          }
          return m + k;
          j = 0;
        }
        label507:
        i = 0;
      }
      label513:
      i = 0;
    }
  }
  
  private int getMaxAvailableHeight(View paramView, int paramInt, boolean paramBoolean)
  {
    Rect localRect = new Rect();
    paramView.getWindowVisibleDisplayFrame(localRect);
    int[] arrayOfInt = new int[2];
    paramView.getLocationOnScreen(arrayOfInt);
    int i = bottom;
    if (paramBoolean) {
      i = getContextgetResourcesgetDisplayMetricsheightPixels;
    }
    i = Math.max(i - (arrayOfInt[1] + paramView.getHeight()) - paramInt, arrayOfInt[1] - top + paramInt);
    paramInt = i;
    if (mPopup.getBackground() != null)
    {
      mPopup.getBackground().getPadding(mTempRect);
      paramInt = i - (mTempRect.top + mTempRect.bottom);
    }
    return paramInt;
  }
  
  private boolean isInputMethodNotNeeded()
  {
    return mPopup.getInputMethodMode() == 2;
  }
  
  private int measureHeightOfChildren(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    int i1 = 0;
    Object localObject = mAdapter;
    int i;
    if (localObject == null)
    {
      i = mDropDownList.getListPaddingTop() + mDropDownList.getListPaddingBottom();
      return i;
    }
    int i2 = mDropDownList.getListPaddingTop() + mDropDownList.getListPaddingBottom();
    if ((mDropDownList.getDividerHeight() > 0) && (mDropDownList.getDivider() != null)) {}
    int j;
    int n;
    for (int k = mDropDownList.getDividerHeight();; k = 0)
    {
      j = i2;
      i = i1;
      n = paramInt2;
      int m = paramInt3;
      if (paramInt3 == -1)
      {
        m = ((ListAdapter)localObject).getCount() - 1;
        n = paramInt2;
        i = i1;
        j = i2;
      }
      if (n > m) {
        break label266;
      }
      localObject = mAdapter.getView(n, null, mDropDownList);
      if (mDropDownList.getCacheColorHint() != 0) {
        ((View)localObject).setDrawingCacheBackgroundColor(mDropDownList.getCacheColorHint());
      }
      measureScrapChild((View)localObject, n, paramInt1);
      paramInt2 = j;
      if (n > 0) {
        paramInt2 = j + k;
      }
      paramInt3 = ((View)localObject).getMeasuredHeight() + paramInt2;
      if (paramInt3 < paramInt4) {
        break label237;
      }
      if ((paramInt5 >= 0) && (n > paramInt5) && (i > 0) && (paramInt3 != paramInt4)) {
        break;
      }
      return paramInt4;
    }
    label237:
    if ((paramInt5 >= 0) && (n >= paramInt5)) {}
    for (paramInt2 = paramInt3;; paramInt2 = i)
    {
      n += 1;
      j = paramInt3;
      i = paramInt2;
      break;
      label266:
      return j;
    }
  }
  
  private void measureScrapChild(View paramView, int paramInt1, int paramInt2)
  {
    AbsListView.LayoutParams localLayoutParams2 = (AbsListView.LayoutParams)paramView.getLayoutParams();
    AbsListView.LayoutParams localLayoutParams1 = localLayoutParams2;
    if (localLayoutParams2 == null)
    {
      localLayoutParams1 = new AbsListView.LayoutParams(-1, -2, 0);
      paramView.setLayoutParams(localLayoutParams1);
    }
    paramInt2 = ViewGroup.getChildMeasureSpec(paramInt2, mDropDownList.getPaddingLeft() + mDropDownList.getPaddingRight(), width);
    paramInt1 = height;
    if (paramInt1 > 0) {}
    for (paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824);; paramInt1 = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      paramView.measure(paramInt2, paramInt1);
      return;
    }
  }
  
  public void clearListSelection()
  {
    IcsListPopupWindow.DropDownListView localDropDownListView = mDropDownList;
    if (localDropDownListView != null)
    {
      IcsListPopupWindow.DropDownListView.access$502(localDropDownListView, true);
      localDropDownListView.requestLayout();
    }
  }
  
  public void dismiss()
  {
    mPopup.dismiss();
    if (mPromptView != null)
    {
      ViewParent localViewParent = mPromptView.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(mPromptView);
      }
    }
    mPopup.setContentView(null);
    mDropDownList = null;
    mHandler.removeCallbacks(mResizePopupRunnable);
  }
  
  public ListView getListView()
  {
    return mDropDownList;
  }
  
  public boolean isShowing()
  {
    return mPopup.isShowing();
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (mObserver == null) {
      mObserver = new IcsListPopupWindow.PopupDataSetObserver(this, null);
    }
    for (;;)
    {
      mAdapter = paramListAdapter;
      if (mAdapter != null) {
        paramListAdapter.registerDataSetObserver(mObserver);
      }
      if (mDropDownList != null) {
        mDropDownList.setAdapter(mAdapter);
      }
      return;
      if (mAdapter != null) {
        mAdapter.unregisterDataSetObserver(mObserver);
      }
    }
  }
  
  public void setAnchorView(View paramView)
  {
    mDropDownAnchorView = paramView;
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    mPopup.setBackgroundDrawable(paramDrawable);
  }
  
  public void setContentWidth(int paramInt)
  {
    Drawable localDrawable = mPopup.getBackground();
    if (localDrawable != null)
    {
      localDrawable.getPadding(mTempRect);
      mDropDownWidth = (mTempRect.left + mTempRect.right + paramInt);
      return;
    }
    mDropDownWidth = paramInt;
  }
  
  public void setHorizontalOffset(int paramInt)
  {
    mDropDownHorizontalOffset = paramInt;
  }
  
  public void setInputMethodMode(int paramInt)
  {
    mPopup.setInputMethodMode(paramInt);
  }
  
  public void setModal(boolean paramBoolean)
  {
    mModal = true;
    mPopup.setFocusable(paramBoolean);
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    mPopup.setOnDismissListener(paramOnDismissListener);
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    mItemClickListener = paramOnItemClickListener;
  }
  
  public void setPromptPosition(int paramInt)
  {
    mPromptPosition = paramInt;
  }
  
  public void setSelection(int paramInt)
  {
    IcsListPopupWindow.DropDownListView localDropDownListView = mDropDownList;
    if ((isShowing()) && (localDropDownListView != null))
    {
      IcsListPopupWindow.DropDownListView.access$502(localDropDownListView, false);
      localDropDownListView.setSelection(paramInt);
      if (localDropDownListView.getChoiceMode() != 0) {
        localDropDownListView.setItemChecked(paramInt, true);
      }
    }
  }
  
  public void setVerticalOffset(int paramInt)
  {
    mDropDownVerticalOffset = paramInt;
    mDropDownVerticalOffsetSet = true;
  }
  
  public void show()
  {
    int n = 0;
    int k = 0;
    int m = -1;
    int j = buildDropDown();
    boolean bool = isInputMethodNotNeeded();
    int i;
    if (mPopup.isShowing())
    {
      label53:
      PopupWindowCompat localPopupWindowCompat;
      if (mDropDownWidth == -1)
      {
        i = -1;
        if (mDropDownHeight != -1) {
          break label177;
        }
        if (!bool) {
          break label140;
        }
        if (!bool) {
          break label151;
        }
        localPopupWindowCompat = mPopup;
        if (mDropDownWidth != -1) {
          break label145;
        }
        k = m;
        label75:
        localPopupWindowCompat.setWindowLayoutMode(k, 0);
      }
      for (;;)
      {
        mPopup.setOutsideTouchable(true);
        mPopup.update(mDropDownAnchorView, mDropDownHorizontalOffset, mDropDownVerticalOffset, i, j);
        return;
        if (mDropDownWidth == -2)
        {
          i = mDropDownAnchorView.getWidth();
          break;
        }
        i = mDropDownWidth;
        break;
        label140:
        j = -1;
        break label53;
        label145:
        k = 0;
        break label75;
        label151:
        localPopupWindowCompat = mPopup;
        if (mDropDownWidth == -1) {
          k = -1;
        }
        localPopupWindowCompat.setWindowLayoutMode(k, -1);
        continue;
        label177:
        if (mDropDownHeight != -2) {
          j = mDropDownHeight;
        }
      }
    }
    if (mDropDownWidth == -1)
    {
      i = -1;
      label204:
      if (mDropDownHeight != -1) {
        break label354;
      }
      j = -1;
    }
    for (;;)
    {
      mPopup.setWindowLayoutMode(i, j);
      mPopup.setOutsideTouchable(true);
      mPopup.setTouchInterceptor(mTouchInterceptor);
      mPopup.showAsDropDown(mDropDownAnchorView, mDropDownHorizontalOffset, mDropDownVerticalOffset);
      mDropDownList.setSelection(-1);
      if ((!mModal) || (mDropDownList.isInTouchMode())) {
        clearListSelection();
      }
      if (mModal) {
        break;
      }
      mHandler.post(mHideSelector);
      return;
      if (mDropDownWidth == -2)
      {
        mPopup.setWidth(mDropDownAnchorView.getWidth());
        i = 0;
        break label204;
      }
      mPopup.setWidth(mDropDownWidth);
      i = 0;
      break label204;
      label354:
      if (mDropDownHeight == -2)
      {
        mPopup.setHeight(j);
        j = n;
      }
      else
      {
        mPopup.setHeight(mDropDownHeight);
        j = n;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */