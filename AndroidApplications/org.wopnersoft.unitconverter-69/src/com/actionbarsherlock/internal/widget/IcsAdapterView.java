package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewDebug.CapturedViewProperty;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityRecord;
import android.widget.Adapter;
import android.widget.AdapterView.OnItemClickListener;
import com.actionbarsherlock.view.MenuItem;

// compiled from: ProGuard
public abstract class IcsAdapterView extends ViewGroup {
    public static final int INVALID_POSITION = -1;
    public static final long INVALID_ROW_ID = Long.MIN_VALUE;
    public static final int ITEM_VIEW_TYPE_HEADER_OR_FOOTER = -2;
    public static final int ITEM_VIEW_TYPE_IGNORE = -1;
    static final int SYNC_FIRST_POSITION = 1;
    static final int SYNC_MAX_DURATION_MILLIS = 100;
    static final int SYNC_SELECTED_POSITION = 0;
    boolean mBlockLayoutRequests;
    boolean mDataChanged;
    private boolean mDesiredFocusableInTouchModeState;
    private boolean mDesiredFocusableState;
    private View mEmptyView;
    @ExportedProperty(category = "scrolling")
    int mFirstPosition;
    boolean mInLayout;
    @ExportedProperty(category = "list")
    int mItemCount;
    private int mLayoutHeight;
    boolean mNeedSync;
    @ExportedProperty(category = "list")
    int mNextSelectedPosition;
    long mNextSelectedRowId;
    int mOldItemCount;
    int mOldSelectedPosition;
    long mOldSelectedRowId;
    OnItemClickListener mOnItemClickListener;
    OnItemLongClickListener mOnItemLongClickListener;
    OnItemSelectedListener mOnItemSelectedListener;
    @ExportedProperty(category = "list")
    int mSelectedPosition;
    long mSelectedRowId;
    private SelectionNotifier mSelectionNotifier;
    int mSpecificTop;
    long mSyncHeight;
    int mSyncMode;
    int mSyncPosition;
    long mSyncRowId;

    // compiled from: ProGuard
    public interface OnItemSelectedListener {
        void onItemSelected(IcsAdapterView icsAdapterView, View view, int i, long j);

        void onNothingSelected(IcsAdapterView icsAdapterView);
    }

    // compiled from: ProGuard
    public class AdapterContextMenuInfo implements ContextMenuInfo {
        public long id;
        public int position;
        public View targetView;

        public AdapterContextMenuInfo(View view, int i, long j) {
            this.targetView = view;
            this.position = i;
            this.id = j;
        }
    }

    // compiled from: ProGuard
    class AdapterDataSetObserver extends DataSetObserver {
        private Parcelable mInstanceState;

        AdapterDataSetObserver() {
            this.mInstanceState = null;
        }

        public void clearSavedState() {
            this.mInstanceState = null;
        }

        public void onChanged() {
            IcsAdapterView.this.mDataChanged = true;
            IcsAdapterView.this.mOldItemCount = IcsAdapterView.this.mItemCount;
            IcsAdapterView.this.mItemCount = IcsAdapterView.this.getAdapter().getCount();
            if (!IcsAdapterView.this.getAdapter().hasStableIds() || this.mInstanceState == null || IcsAdapterView.this.mOldItemCount != 0 || IcsAdapterView.this.mItemCount <= 0) {
                IcsAdapterView.this.rememberSyncState();
            } else {
                IcsAdapterView.this.onRestoreInstanceState(this.mInstanceState);
                this.mInstanceState = null;
            }
            IcsAdapterView.this.checkFocus();
            IcsAdapterView.this.requestLayout();
        }

        public void onInvalidated() {
            IcsAdapterView.this.mDataChanged = true;
            if (IcsAdapterView.this.getAdapter().hasStableIds()) {
                this.mInstanceState = IcsAdapterView.this.onSaveInstanceState();
            }
            IcsAdapterView.this.mOldItemCount = IcsAdapterView.this.mItemCount;
            IcsAdapterView.this.mItemCount = 0;
            IcsAdapterView.this.mSelectedPosition = -1;
            IcsAdapterView.this.mSelectedRowId = Long.MIN_VALUE;
            IcsAdapterView.this.mNextSelectedPosition = -1;
            IcsAdapterView.this.mNextSelectedRowId = Long.MIN_VALUE;
            IcsAdapterView.this.mNeedSync = false;
            IcsAdapterView.this.checkFocus();
            IcsAdapterView.this.requestLayout();
        }
    }

    // compiled from: ProGuard
    public interface OnItemLongClickListener {
        boolean onItemLongClick(IcsAdapterView icsAdapterView, View view, int i, long j);
    }

    // compiled from: ProGuard
    class SelectionNotifier implements Runnable {
        private SelectionNotifier() {
        }

        public void run() {
            if (!IcsAdapterView.this.mDataChanged) {
                IcsAdapterView.this.fireOnSelected();
            } else if (IcsAdapterView.this.getAdapter() != null) {
                IcsAdapterView.this.post(this);
            }
        }
    }

    public IcsAdapterView(Context context) {
        super(context);
        this.mFirstPosition = 0;
        this.mSyncRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        this.mInLayout = false;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        this.mBlockLayoutRequests = false;
    }

    public IcsAdapterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFirstPosition = 0;
        this.mSyncRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        this.mInLayout = false;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        this.mBlockLayoutRequests = false;
    }

    public IcsAdapterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mFirstPosition = 0;
        this.mSyncRowId = Long.MIN_VALUE;
        this.mNeedSync = false;
        this.mInLayout = false;
        this.mNextSelectedPosition = -1;
        this.mNextSelectedRowId = Long.MIN_VALUE;
        this.mSelectedPosition = -1;
        this.mSelectedRowId = Long.MIN_VALUE;
        this.mOldSelectedPosition = -1;
        this.mOldSelectedRowId = Long.MIN_VALUE;
        this.mBlockLayoutRequests = false;
    }

    private void fireOnSelected() {
        if (this.mOnItemSelectedListener != null) {
            int selectedItemPosition = getSelectedItemPosition();
            if (selectedItemPosition >= 0) {
                View selectedView = getSelectedView();
                this.mOnItemSelectedListener.onItemSelected(this, selectedView, selectedItemPosition, getAdapter().getItemId(selectedItemPosition));
            } else {
                this.mOnItemSelectedListener.onNothingSelected(this);
            }
        }
    }

    private boolean isScrollableForAccessibility() {
        Adapter adapter = getAdapter();
        if (adapter == null) {
            return false;
        }
        int count = adapter.getCount();
        if (count <= 0) {
            return false;
        }
        return getFirstVisiblePosition() > 0 || getLastVisiblePosition() < count - 1;
    }

    private void updateEmptyStatus(boolean z) {
        if (isInFilterMode()) {
            z = false;
        }
        if (z) {
            if (this.mEmptyView != null) {
                this.mEmptyView.setVisibility(0);
                setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            } else {
                setVisibility(0);
            }
            if (this.mDataChanged) {
                onLayout(false, getLeft(), getTop(), getRight(), getBottom());
            }
        } else {
            if (this.mEmptyView != null) {
                this.mEmptyView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
            setVisibility(0);
        }
    }

    public void addView(View view) {
        throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
    }

    public void addView(View view, int i) {
        throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
    }

    public void addView(View view, int i, LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
    }

    public void addView(View view, LayoutParams layoutParams) {
        throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
    }

    protected boolean canAnimate() {
        return super.canAnimate() && this.mItemCount > 0;
    }

    void checkFocus() {
        boolean z;
        boolean z2 = false;
        Adapter adapter = getAdapter();
        int i = adapter == null || adapter.getCount() == 0;
        int i2 = i == 0 || isInFilterMode();
        z = i2 != 0 && this.mDesiredFocusableInTouchModeState;
        super.setFocusableInTouchMode(z);
        z = i2 != 0 && this.mDesiredFocusableState;
        super.setFocusable(z);
        if (this.mEmptyView != null) {
            if (adapter == null || adapter.isEmpty()) {
                z2 = true;
            }
            updateEmptyStatus(z2);
        }
    }

    void checkSelectionChanged() {
        if (this.mSelectedPosition != this.mOldSelectedPosition || this.mSelectedRowId != this.mOldSelectedRowId) {
            selectionChanged();
            this.mOldSelectedPosition = this.mSelectedPosition;
            this.mOldSelectedRowId = this.mSelectedRowId;
        }
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        View selectedView = getSelectedView();
        return selectedView != null && selectedView.getVisibility() == 0 && selectedView.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    protected void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    protected void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    int findSyncPosition() {
        int i = this.mItemCount;
        if (i == 0) {
            return -1;
        }
        long j = this.mSyncRowId;
        int i2 = this.mSyncPosition;
        if (j == Long.MIN_VALUE) {
            return -1;
        }
        i2 = Math.min(i - 1, Math.max(0, i2));
        long uptimeMillis = SystemClock.uptimeMillis() + 100;
        Adapter adapter = getAdapter();
        if (adapter == null) {
            return -1;
        }
        int i3 = i2;
        int i4 = i2;
        int i5 = i2;
        boolean z = false;
        while (SystemClock.uptimeMillis() <= uptimeMillis) {
            if (adapter.getItemId(i5) != j) {
                int i6;
                int i7;
                i6 = i3 == i + -1;
                i7 = i4 == 0;
                if (i6 != 0 && i7 != 0) {
                    break;
                } else if (i7 != 0 || (i != 0 && i6 == 0)) {
                    i2 = i3 + 1;
                    i3 = i2;
                    i5 = i2;
                    z = false;
                } else if (i6 != 0 || (i == 0 && i7 == 0)) {
                    i2 = i4 - 1;
                    i4 = i2;
                    i5 = i2;
                    z = true;
                }
            } else {
                return i5;
            }
        }
        return -1;
    }

    public abstract Adapter getAdapter();

    @CapturedViewProperty
    public int getCount() {
        return this.mItemCount;
    }

    public View getEmptyView() {
        return this.mEmptyView;
    }

    public int getFirstVisiblePosition() {
        return this.mFirstPosition;
    }

    public Object getItemAtPosition(int i) {
        Adapter adapter = getAdapter();
        return (adapter == null || i < 0) ? null : adapter.getItem(i);
    }

    public long getItemIdAtPosition(int i) {
        Adapter adapter = getAdapter();
        return (adapter == null || i < 0) ? INVALID_ROW_ID : adapter.getItemId(i);
    }

    public int getLastVisiblePosition() {
        return this.mFirstPosition + getChildCount() - 1;
    }

    public final OnItemClickListener getOnItemClickListener() {
        return this.mOnItemClickListener;
    }

    public final OnItemLongClickListener getOnItemLongClickListener() {
        return this.mOnItemLongClickListener;
    }

    public final OnItemSelectedListener getOnItemSelectedListener() {
        return this.mOnItemSelectedListener;
    }

    public int getPositionForView(View view) {
        int i = ITEM_VIEW_TYPE_IGNORE;
        while (true) {
            try {
                View view2 = (View) view.getParent();
                if (view2.equals(this)) {
                    int childCount = getChildCount();
                    int i2 = 0;
                    while (i2 < childCount) {
                        if (getChildAt(i2).equals(view)) {
                            return i2 + this.mFirstPosition;
                        }
                        i2++;
                    }
                    return i;
                } else {
                    view = view2;
                }
            } catch (ClassCastException e) {
                return i;
            }
        }
    }

    public Object getSelectedItem() {
        Adapter adapter = getAdapter();
        int selectedItemPosition = getSelectedItemPosition();
        return (adapter == null || adapter.getCount() <= 0 || selectedItemPosition < 0) ? null : adapter.getItem(selectedItemPosition);
    }

    @CapturedViewProperty
    public long getSelectedItemId() {
        return this.mNextSelectedRowId;
    }

    @CapturedViewProperty
    public int getSelectedItemPosition() {
        return this.mNextSelectedPosition;
    }

    public abstract View getSelectedView();

    void handleDataChanged() {
        int findSyncPosition;
        int i = this.mItemCount;
        boolean z;
        if (i > 0) {
            boolean z2;
            if (this.mNeedSync) {
                this.mNeedSync = false;
                findSyncPosition = findSyncPosition();
                if (findSyncPosition >= 0 && lookForSelectablePosition(findSyncPosition, true) == findSyncPosition) {
                    setNextSelectedPositionInt(findSyncPosition);
                    z2 = true;
                    if (i == 0) {
                        findSyncPosition = getSelectedItemPosition();
                        if (findSyncPosition >= i) {
                            findSyncPosition = i - 1;
                        }
                        if (findSyncPosition < 0) {
                            findSyncPosition = 0;
                        }
                        i = lookForSelectablePosition(findSyncPosition, true);
                        findSyncPosition = i >= 0 ? lookForSelectablePosition(findSyncPosition, false) : i;
                        if (findSyncPosition >= 0) {
                            setNextSelectedPositionInt(findSyncPosition);
                            checkSelectionChanged();
                            z = true;
                        }
                    }
                    findSyncPosition = i;
                }
            }
            z2 = false;
            if (i == 0) {
                findSyncPosition = getSelectedItemPosition();
                if (findSyncPosition >= i) {
                    findSyncPosition = i - 1;
                }
                if (findSyncPosition < 0) {
                    findSyncPosition = 0;
                }
                i = lookForSelectablePosition(findSyncPosition, true);
                if (i >= 0) {
                }
                if (findSyncPosition >= 0) {
                    setNextSelectedPositionInt(findSyncPosition);
                    checkSelectionChanged();
                    z = true;
                }
            }
            findSyncPosition = i;
        } else {
            z = false;
        }
        if (findSyncPosition == 0) {
            this.mSelectedPosition = -1;
            this.mSelectedRowId = Long.MIN_VALUE;
            this.mNextSelectedPosition = -1;
            this.mNextSelectedRowId = Long.MIN_VALUE;
            this.mNeedSync = false;
            checkSelectionChanged();
        }
    }

    boolean isInFilterMode() {
        return false;
    }

    int lookForSelectablePosition(int i, boolean z) {
        return i;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.mSelectionNotifier);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setScrollable(isScrollableForAccessibility());
        View selectedView = getSelectedView();
        if (selectedView != null) {
            accessibilityEvent.setEnabled(selectedView.isEnabled());
        }
        accessibilityEvent.setCurrentItemIndex(getSelectedItemPosition());
        accessibilityEvent.setFromIndex(getFirstVisiblePosition());
        accessibilityEvent.setToIndex(getLastVisiblePosition());
        accessibilityEvent.setItemCount(getCount());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setScrollable(isScrollableForAccessibility());
        View selectedView = getSelectedView();
        if (selectedView != null) {
            accessibilityNodeInfo.setEnabled(selectedView.isEnabled());
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mLayoutHeight = getHeight();
    }

    public boolean onRequestSendAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        if (!super.onRequestSendAccessibilityEvent(view, accessibilityEvent)) {
            return false;
        }
        AccessibilityRecord obtain = AccessibilityEvent.obtain();
        onInitializeAccessibilityEvent(obtain);
        view.dispatchPopulateAccessibilityEvent(obtain);
        accessibilityEvent.appendRecord(obtain);
        return true;
    }

    public boolean performItemClick(View view, int i, long j) {
        if (this.mOnItemClickListener == null) {
            return false;
        }
        playSoundEffect(0);
        if (view != null) {
            view.sendAccessibilityEvent(SYNC_FIRST_POSITION);
        }
        this.mOnItemClickListener.onItemClick(null, view, i, j);
        return true;
    }

    void rememberSyncState() {
        if (getChildCount() > 0) {
            this.mNeedSync = true;
            this.mSyncHeight = (long) this.mLayoutHeight;
            View childAt;
            if (this.mSelectedPosition >= 0) {
                childAt = getChildAt(this.mSelectedPosition - this.mFirstPosition);
                this.mSyncRowId = this.mNextSelectedRowId;
                this.mSyncPosition = this.mNextSelectedPosition;
                if (childAt != null) {
                    this.mSpecificTop = childAt.getTop();
                }
                this.mSyncMode = 0;
            } else {
                childAt = getChildAt(0);
                Adapter adapter = getAdapter();
                if (this.mFirstPosition < 0 || this.mFirstPosition >= adapter.getCount()) {
                    this.mSyncRowId = -1;
                } else {
                    this.mSyncRowId = adapter.getItemId(this.mFirstPosition);
                }
                this.mSyncPosition = this.mFirstPosition;
                if (childAt != null) {
                    this.mSpecificTop = childAt.getTop();
                }
                this.mSyncMode = 1;
            }
        }
    }

    public void removeAllViews() {
        throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
    }

    public void removeView(View view) {
        throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
    }

    public void removeViewAt(int i) {
        throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
    }

    void selectionChanged() {
        if (this.mOnItemSelectedListener != null) {
            if (this.mInLayout || this.mBlockLayoutRequests) {
                if (this.mSelectionNotifier == null) {
                    this.mSelectionNotifier = new SelectionNotifier(null);
                }
                post(this.mSelectionNotifier);
            } else {
                fireOnSelected();
            }
        }
        if (this.mSelectedPosition != -1 && isShown() && !isInTouchMode()) {
            sendAccessibilityEvent(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        }
    }

    public abstract void setAdapter(Adapter adapter);

    public void setEmptyView(View view) {
        boolean z;
        this.mEmptyView = view;
        Adapter adapter = getAdapter();
        z = adapter == null || adapter.isEmpty();
        updateEmptyStatus(z);
    }

    public void setFocusable(boolean z) {
        boolean z2 = true;
        Adapter adapter = getAdapter();
        int i = adapter == null || adapter.getCount() == 0;
        this.mDesiredFocusableState = z;
        if (!z) {
            this.mDesiredFocusableInTouchModeState = false;
        }
        if (!(z && (i == 0 || isInFilterMode()))) {
            z2 = false;
        }
        super.setFocusable(z2);
    }

    public void setFocusableInTouchMode(boolean z) {
        boolean z2 = true;
        Adapter adapter = getAdapter();
        int i = adapter == null || adapter.getCount() == 0;
        this.mDesiredFocusableInTouchModeState = z;
        if (z) {
            this.mDesiredFocusableState = true;
        }
        if (!(z && (i == 0 || isInFilterMode()))) {
            z2 = false;
        }
        super.setFocusableInTouchMode(z2);
    }

    void setNextSelectedPositionInt(int i) {
        this.mNextSelectedPosition = i;
        this.mNextSelectedRowId = getItemIdAtPosition(i);
        if (this.mNeedSync && this.mSyncMode == 0 && i >= 0) {
            this.mSyncPosition = i;
            this.mSyncRowId = this.mNextSelectedRowId;
        }
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.mOnItemClickListener = onItemClickListener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        if (!isLongClickable()) {
            setLongClickable(true);
        }
        this.mOnItemLongClickListener = onItemLongClickListener;
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.mOnItemSelectedListener = onItemSelectedListener;
    }

    void setSelectedPositionInt(int i) {
        this.mSelectedPosition = i;
        this.mSelectedRowId = getItemIdAtPosition(i);
    }

    public abstract void setSelection(int i);
}