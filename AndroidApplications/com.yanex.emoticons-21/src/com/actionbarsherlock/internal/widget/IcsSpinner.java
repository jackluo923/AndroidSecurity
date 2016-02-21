package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import com.actionbarsherlock.R;

public class IcsSpinner extends IcsAbsSpinner implements OnClickListener {
    private static final int MAX_ITEMS_MEASURED = 15;
    public static final int MODE_DROPDOWN = 1;
    private boolean mDisableChildrenWhenDisabled;
    int mDropDownWidth;
    private int mGravity;
    private SpinnerPopup mPopup;
    private DropDownAdapter mTempAdapter;
    private Rect mTempRect;

    class DropDownAdapter implements ListAdapter, SpinnerAdapter {
        private SpinnerAdapter mAdapter;
        private ListAdapter mListAdapter;

        public DropDownAdapter(SpinnerAdapter spinnerAdapter) {
            this.mAdapter = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.mListAdapter = (ListAdapter) spinnerAdapter;
            }
        }

        public boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.mListAdapter;
            return listAdapter != null ? listAdapter.areAllItemsEnabled() : true;
        }

        public int getCount() {
            return this.mAdapter == null ? 0 : this.mAdapter.getCount();
        }

        public View getDropDownView(int i, View view, ViewGroup viewGroup) {
            return this.mAdapter == null ? null : this.mAdapter.getDropDownView(i, view, viewGroup);
        }

        public Object getItem(int i) {
            return this.mAdapter == null ? null : this.mAdapter.getItem(i);
        }

        public long getItemId(int i) {
            return this.mAdapter == null ? -1 : this.mAdapter.getItemId(i);
        }

        public int getItemViewType(int i) {
            return 0;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            return getDropDownView(i, view, viewGroup);
        }

        public int getViewTypeCount() {
            return MODE_DROPDOWN;
        }

        public boolean hasStableIds() {
            return this.mAdapter != null && this.mAdapter.hasStableIds();
        }

        public boolean isEmpty() {
            return getCount() == 0;
        }

        public boolean isEnabled(int i) {
            ListAdapter listAdapter = this.mListAdapter;
            return listAdapter != null ? listAdapter.isEnabled(i) : true;
        }

        public void registerDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            if (this.mAdapter != null) {
                this.mAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    interface SpinnerPopup {
        void dismiss();

        CharSequence getHintText();

        boolean isShowing();

        void setAdapter(ListAdapter listAdapter);

        void setPromptText(CharSequence charSequence);

        void show();
    }

    class DropdownPopup extends IcsListPopupWindow implements SpinnerPopup {
        private ListAdapter mAdapter;
        private CharSequence mHintText;

        class AnonymousClass_1 implements OnItemClickListener {
            final /* synthetic */ IcsSpinner val$this$0;

            AnonymousClass_1(IcsSpinner icsSpinner) {
                this.val$this$0 = icsSpinner;
            }

            public void onItemClick(AdapterView adapterView, View view, int i, long j) {
                DropdownPopup.this.this$0.setSelection(i);
                DropdownPopup.this.dismiss();
            }
        }

        public DropdownPopup(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, 0, i);
            setAnchorView(IcsSpinner.this);
            setModal(true);
            setPromptPosition(0);
            setOnItemClickListener(new AnonymousClass_1(IcsSpinner.this));
        }

        public CharSequence getHintText() {
            return this.mHintText;
        }

        public void setAdapter(ListAdapter listAdapter) {
            super.setAdapter(listAdapter);
            this.mAdapter = listAdapter;
        }

        public void setPromptText(CharSequence charSequence) {
            this.mHintText = charSequence;
        }

        public void show() {
            int paddingLeft = IcsSpinner.this.getPaddingLeft();
            if (IcsSpinner.this.mDropDownWidth == -2) {
                int width = IcsSpinner.this.getWidth();
                setContentWidth(Math.max(IcsSpinner.this.measureContentWidth((SpinnerAdapter) this.mAdapter, IcsSpinner.this.getBackground()), width - paddingLeft - IcsSpinner.this.getPaddingRight()));
            } else if (IcsSpinner.this.mDropDownWidth == -1) {
                setContentWidth(IcsSpinner.this.getWidth() - paddingLeft - IcsSpinner.this.getPaddingRight());
            } else {
                setContentWidth(IcsSpinner.this.mDropDownWidth);
            }
            Drawable background = IcsSpinner.this.getBackground();
            int i = 0;
            if (background != null) {
                background.getPadding(IcsSpinner.this.mTempRect);
                i = -IcsSpinner.this.mTempRect.left;
            }
            setHorizontalOffset(i + paddingLeft);
            setInputMethodMode(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
            super.show();
            getListView().setChoiceMode(MODE_DROPDOWN);
            setSelection(IcsSpinner.this.getSelectedItemPosition());
        }
    }

    public IcsSpinner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionDropDownStyle);
    }

    public IcsSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SherlockSpinner, i, 0);
        SpinnerPopup dropdownPopup = new DropdownPopup(context, attributeSet, i);
        this.mDropDownWidth = obtainStyledAttributes.getLayoutDimension(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER);
        dropdownPopup.setBackgroundDrawable(obtainStyledAttributes.getDrawable(IcsLinearLayout.SHOW_DIVIDER_MIDDLE));
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(FragmentManagerImpl.ANIM_STYLE_FADE_EXIT, 0);
        if (dimensionPixelOffset != 0) {
            dropdownPopup.setVerticalOffset(dimensionPixelOffset);
        }
        dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER, 0);
        if (dimensionPixelOffset != 0) {
            dropdownPopup.setHorizontalOffset(dimensionPixelOffset);
        }
        this.mPopup = dropdownPopup;
        this.mGravity = obtainStyledAttributes.getInt(0, 17);
        this.mPopup.setPromptText(obtainStyledAttributes.getString(FragmentManagerImpl.ANIM_STYLE_CLOSE_ENTER));
        this.mDisableChildrenWhenDisabled = true;
        obtainStyledAttributes.recycle();
        if (this.mTempAdapter != null) {
            this.mPopup.setAdapter(this.mTempAdapter);
            this.mTempAdapter = null;
        }
    }

    private View makeAndAddView(int i) {
        View view;
        if (!this.mDataChanged) {
            view = this.mRecycler.get(i);
            if (view != null) {
                setUpChild(view);
                return view;
            }
        }
        view = this.mAdapter.getView(i, null, this);
        setUpChild(view);
        return view;
    }

    private void setUpChild(View view) {
        LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = generateDefaultLayoutParams();
        }
        addViewInLayout(view, 0, layoutParams);
        view.setSelected(hasFocus());
        if (this.mDisableChildrenWhenDisabled) {
            view.setEnabled(isEnabled());
        }
        view.measure(ViewGroup.getChildMeasureSpec(this.mWidthMeasureSpec, this.mSpinnerPadding.left + this.mSpinnerPadding.right, layoutParams.width), ViewGroup.getChildMeasureSpec(this.mHeightMeasureSpec, this.mSpinnerPadding.top + this.mSpinnerPadding.bottom, layoutParams.height));
        int measuredHeight = this.mSpinnerPadding.top + (((getMeasuredHeight() - this.mSpinnerPadding.bottom) - this.mSpinnerPadding.top) - view.getMeasuredHeight()) / 2;
        view.layout(0, measuredHeight, view.getMeasuredWidth() + 0, view.getMeasuredHeight() + measuredHeight);
    }

    public int getBaseline() {
        View view = null;
        if (getChildCount() > 0) {
            view = getChildAt(0);
        } else if (this.mAdapter != null && this.mAdapter.getCount() > 0) {
            view = makeAndAddView(0);
            this.mRecycler.put(0, view);
            removeAllViewsInLayout();
        }
        if (view == null) {
            return -1;
        }
        int baseline = view.getBaseline();
        return baseline >= 0 ? view.getTop() + baseline : -1;
    }

    public CharSequence getPrompt() {
        return this.mPopup.getHintText();
    }

    void layout(int i, boolean z) {
        int i2 = this.mSpinnerPadding.left;
        int right = getRight() - getLeft() - this.mSpinnerPadding.left - this.mSpinnerPadding.right;
        if (this.mDataChanged) {
            handleDataChanged();
        }
        if (this.mItemCount == 0) {
            resetList();
        } else {
            if (this.mNextSelectedPosition >= 0) {
                setSelectedPositionInt(this.mNextSelectedPosition);
            }
            recycleAllViews();
            removeAllViewsInLayout();
            this.mFirstPosition = this.mSelectedPosition;
            View makeAndAddView = makeAndAddView(this.mSelectedPosition);
            int measuredWidth = makeAndAddView.getMeasuredWidth();
            switch (this.mGravity & 7) {
                case MODE_DROPDOWN:
                    i2 = i2 + right / 2 - measuredWidth / 2;
                    break;
                case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
                    i2 = i2 + right - measuredWidth;
                    break;
            }
            makeAndAddView.offsetLeftAndRight(i2);
            this.mRecycler.clear();
            invalidate();
            checkSelectionChanged();
            this.mDataChanged = false;
            this.mNeedSync = false;
            setNextSelectedPositionInt(this.mSelectedPosition);
        }
    }

    int measureContentWidth(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        if (spinnerAdapter == null) {
            return 0;
        }
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
        int max = Math.max(0, getSelectedItemPosition());
        int min = Math.min(spinnerAdapter.getCount(), max + 15);
        int i = Math.max(0, max - 15 - min - max);
        View view = null;
        int i2 = 0;
        boolean z = false;
        while (i < min) {
            View view2;
            int itemViewType = spinnerAdapter.getItemViewType(i);
            if (itemViewType != max) {
                view2 = null;
            } else {
                itemViewType = max;
                view2 = view;
            }
            view = spinnerAdapter.getView(i, view2, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
            i++;
            max = itemViewType;
        }
        if (drawable == null) {
            return i2;
        }
        drawable.getPadding(this.mTempRect);
        return this.mTempRect.left + this.mTempRect.right + i2;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        setSelection(i);
        dialogInterface.dismiss();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mPopup != null && this.mPopup.isShowing()) {
            this.mPopup.dismiss();
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.mInLayout = true;
        layout(0, false);
        this.mInLayout = false;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mPopup != null && MeasureSpec.getMode(i) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), measureContentWidth(getAdapter(), getBackground())), MeasureSpec.getSize(i)), getMeasuredHeight());
        }
    }

    public boolean performClick() {
        boolean performClick = super.performClick();
        if (!performClick) {
            performClick = true;
            if (!this.mPopup.isShowing()) {
                this.mPopup.show();
            }
        }
        return performClick;
    }

    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        super.setAdapter(spinnerAdapter);
        if (this.mPopup != null) {
            this.mPopup.setAdapter(new DropDownAdapter(spinnerAdapter));
        } else {
            this.mTempAdapter = new DropDownAdapter(spinnerAdapter);
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (this.mDisableChildrenWhenDisabled) {
            int childCount = getChildCount();
            int i = 0;
            while (i < childCount) {
                getChildAt(i).setEnabled(z);
                i++;
            }
        }
    }

    public void setGravity(int i) {
        if (this.mGravity != i) {
            if ((i & 7) == 0) {
                i |= 3;
            }
            this.mGravity = i;
            requestLayout();
        }
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
    }

    public void setPrompt(CharSequence charSequence) {
        this.mPopup.setPromptText(charSequence);
    }

    public void setPromptId(int i) {
        setPrompt(getContext().getText(i));
    }
}