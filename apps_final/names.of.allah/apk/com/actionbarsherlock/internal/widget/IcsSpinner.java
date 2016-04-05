package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.SpinnerAdapter;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.styleable;

public class IcsSpinner
  extends IcsAbsSpinner
  implements DialogInterface.OnClickListener
{
  private static final int MAX_ITEMS_MEASURED = 15;
  public static final int MODE_DROPDOWN = 1;
  private boolean mDisableChildrenWhenDisabled;
  int mDropDownWidth;
  private int mGravity;
  private IcsSpinner.SpinnerPopup mPopup;
  private IcsSpinner.DropDownAdapter mTempAdapter;
  private Rect mTempRect = new Rect();
  
  public IcsSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.actionDropDownStyle);
  }
  
  public IcsSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockSpinner, paramInt, 0);
    paramContext = new IcsSpinner.DropdownPopup(this, paramContext, paramAttributeSet, paramInt);
    mDropDownWidth = localTypedArray.getLayoutDimension(4, -2);
    paramContext.setBackgroundDrawable(localTypedArray.getDrawable(2));
    paramInt = localTypedArray.getDimensionPixelOffset(6, 0);
    if (paramInt != 0) {
      paramContext.setVerticalOffset(paramInt);
    }
    paramInt = localTypedArray.getDimensionPixelOffset(5, 0);
    if (paramInt != 0) {
      paramContext.setHorizontalOffset(paramInt);
    }
    mPopup = paramContext;
    mGravity = localTypedArray.getInt(0, 17);
    mPopup.setPromptText(localTypedArray.getString(3));
    mDisableChildrenWhenDisabled = true;
    localTypedArray.recycle();
    if (mTempAdapter != null)
    {
      mPopup.setAdapter(mTempAdapter);
      mTempAdapter = null;
    }
  }
  
  private View makeAndAddView(int paramInt)
  {
    if (!mDataChanged)
    {
      localView = mRecycler.get(paramInt);
      if (localView != null)
      {
        setUpChild(localView);
        return localView;
      }
    }
    View localView = mAdapter.getView(paramInt, null, this);
    setUpChild(localView);
    return localView;
  }
  
  private void setUpChild(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams2 = paramView.getLayoutParams();
    ViewGroup.LayoutParams localLayoutParams1 = localLayoutParams2;
    if (localLayoutParams2 == null) {
      localLayoutParams1 = generateDefaultLayoutParams();
    }
    addViewInLayout(paramView, 0, localLayoutParams1);
    paramView.setSelected(hasFocus());
    if (mDisableChildrenWhenDisabled) {
      paramView.setEnabled(isEnabled());
    }
    int i = ViewGroup.getChildMeasureSpec(mHeightMeasureSpec, mSpinnerPadding.top + mSpinnerPadding.bottom, height);
    paramView.measure(ViewGroup.getChildMeasureSpec(mWidthMeasureSpec, mSpinnerPadding.left + mSpinnerPadding.right, width), i);
    i = mSpinnerPadding.top + (getMeasuredHeight() - mSpinnerPadding.bottom - mSpinnerPadding.top - paramView.getMeasuredHeight()) / 2;
    int j = paramView.getMeasuredHeight();
    paramView.layout(0, i, paramView.getMeasuredWidth() + 0, j + i);
  }
  
  public int getBaseline()
  {
    int j = -1;
    Object localObject2 = null;
    Object localObject1;
    if (getChildCount() > 0) {
      localObject1 = getChildAt(0);
    }
    for (;;)
    {
      int i = j;
      if (localObject1 != null)
      {
        int k = ((View)localObject1).getBaseline();
        i = j;
        if (k >= 0) {
          i = ((View)localObject1).getTop() + k;
        }
      }
      return i;
      localObject1 = localObject2;
      if (mAdapter != null)
      {
        localObject1 = localObject2;
        if (mAdapter.getCount() > 0)
        {
          localObject1 = makeAndAddView(0);
          mRecycler.put(0, (View)localObject1);
          removeAllViewsInLayout();
        }
      }
    }
  }
  
  public CharSequence getPrompt()
  {
    return mPopup.getHintText();
  }
  
  void layout(int paramInt, boolean paramBoolean)
  {
    paramInt = mSpinnerPadding.left;
    int i = getRight() - getLeft() - mSpinnerPadding.left - mSpinnerPadding.right;
    if (mDataChanged) {
      handleDataChanged();
    }
    if (mItemCount == 0)
    {
      resetList();
      return;
    }
    if (mNextSelectedPosition >= 0) {
      setSelectedPositionInt(mNextSelectedPosition);
    }
    recycleAllViews();
    removeAllViewsInLayout();
    mFirstPosition = mSelectedPosition;
    View localView = makeAndAddView(mSelectedPosition);
    int j = localView.getMeasuredWidth();
    switch (mGravity & 0x7)
    {
    }
    for (;;)
    {
      localView.offsetLeftAndRight(paramInt);
      mRecycler.clear();
      invalidate();
      checkSelectionChanged();
      mDataChanged = false;
      mNeedSync = false;
      setNextSelectedPositionInt(mSelectedPosition);
      return;
      paramInt = paramInt + i / 2 - j / 2;
      continue;
      paramInt = paramInt + i - j;
    }
  }
  
  int measureContentWidth(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int n = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i = Math.max(0, getSelectedItemPosition());
    int i2 = Math.min(paramSpinnerAdapter.getCount(), i + 15);
    int j = Math.max(0, i - (15 - (i2 - i)));
    View localView = null;
    int k = 0;
    i = 0;
    if (j < i2)
    {
      int m = paramSpinnerAdapter.getItemViewType(j);
      if (m == i) {
        break label197;
      }
      localView = null;
      i = m;
    }
    label197:
    for (;;)
    {
      localView = paramSpinnerAdapter.getView(j, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(n, i1);
      k = Math.max(k, localView.getMeasuredWidth());
      j += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(mTempRect);
        return mTempRect.left + mTempRect.right + k;
      }
      return k;
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    setSelection(paramInt);
    paramDialogInterface.dismiss();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((mPopup != null) && (mPopup.isShowing())) {
      mPopup.dismiss();
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    mInLayout = true;
    layout(0, false);
    mInLayout = false;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((mPopup != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), measureContentWidth(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public boolean performClick()
  {
    boolean bool2 = super.performClick();
    boolean bool1 = bool2;
    if (!bool2)
    {
      bool2 = true;
      bool1 = bool2;
      if (!mPopup.isShowing())
      {
        mPopup.show();
        bool1 = bool2;
      }
    }
    return bool1;
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    super.setAdapter(paramSpinnerAdapter);
    if (mPopup != null)
    {
      mPopup.setAdapter(new IcsSpinner.DropDownAdapter(paramSpinnerAdapter));
      return;
    }
    mTempAdapter = new IcsSpinner.DropDownAdapter(paramSpinnerAdapter);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    if (mDisableChildrenWhenDisabled)
    {
      int j = getChildCount();
      int i = 0;
      while (i < j)
      {
        getChildAt(i).setEnabled(paramBoolean);
        i += 1;
      }
    }
  }
  
  public void setGravity(int paramInt)
  {
    if (mGravity != paramInt)
    {
      int i = paramInt;
      if ((paramInt & 0x7) == 0) {
        i = paramInt | 0x3;
      }
      mGravity = i;
      requestLayout();
    }
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
  }
  
  public void setPrompt(CharSequence paramCharSequence)
  {
    mPopup.setPromptText(paramCharSequence);
  }
  
  public void setPromptId(int paramInt)
  {
    setPrompt(getContext().getText(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */