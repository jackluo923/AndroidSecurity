package com.actionbarsherlock.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsListPopupWindow;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.ActionProvider;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.widget.ActivityChooserModel.ActivityChooserModelClient;

// compiled from: ProGuard
class ActivityChooserView extends ViewGroup implements ActivityChooserModelClient {
    private static final boolean IS_HONEYCOMB;
    private final IcsLinearLayout mActivityChooserContent;
    private final Drawable mActivityChooserContentBackground;
    private final ActivityChooserViewAdapter mAdapter;
    private final Callbacks mCallbacks;
    private final Context mContext;
    private int mDefaultActionButtonContentDescription;
    private final FrameLayout mDefaultActivityButton;
    private final ImageView mDefaultActivityButtonImage;
    private final FrameLayout mExpandActivityOverflowButton;
    private final ImageView mExpandActivityOverflowButtonImage;
    private int mInitialActivityCount;
    private boolean mIsAttachedToWindow;
    private boolean mIsSelectingDefaultActivity;
    private final int mListPopupMaxWidth;
    private IcsListPopupWindow mListPopupWindow;
    private final DataSetObserver mModelDataSetOberver;
    private OnDismissListener mOnDismissListener;
    private final OnGlobalLayoutListener mOnGlobalLayoutListener;
    private OnShareActionButtonClickedListener mOnShareActionButtonClickedListener;
    ActionProvider mProvider;

    // compiled from: ProGuard
    class ActivityChooserViewAdapter extends BaseAdapter {
        private static final int ITEM_VIEW_TYPE_ACTIVITY = 0;
        private static final int ITEM_VIEW_TYPE_COUNT = 3;
        private static final int ITEM_VIEW_TYPE_FOOTER = 1;
        public static final int MAX_ACTIVITY_COUNT_DEFAULT = 4;
        public static final int MAX_ACTIVITY_COUNT_UNLIMITED = Integer.MAX_VALUE;
        private ActivityChooserModel mDataModel;
        private boolean mHighlightDefaultActivity;
        private int mMaxActivityCount;
        private boolean mShowDefaultActivity;
        private boolean mShowFooterView;

        private ActivityChooserViewAdapter() {
            this.mMaxActivityCount = 4;
            this.mShowDefaultActivity = true;
        }

        public int getActivityCount() {
            return this.mDataModel.getActivityCount();
        }

        public int getCount() {
            int activityCount = this.mDataModel.getActivityCount();
            if (!(this.mShowDefaultActivity || this.mDataModel.getDefaultActivity() == null)) {
                activityCount--;
            }
            activityCount = Math.min(activityCount, this.mMaxActivityCount);
            return this.mShowFooterView ? activityCount + 1 : activityCount;
        }

        public ActivityChooserModel getDataModel() {
            return this.mDataModel;
        }

        public ResolveInfo getDefaultActivity() {
            return this.mDataModel.getDefaultActivity();
        }

        public int getHistorySize() {
            return this.mDataModel.getHistorySize();
        }

        public Object getItem(int i) {
            switch (getItemViewType(i)) {
                case ITEM_VIEW_TYPE_ACTIVITY:
                    if (!(this.mShowDefaultActivity || this.mDataModel.getDefaultActivity() == null)) {
                        i++;
                    }
                    return this.mDataModel.getActivity(i);
                case ITEM_VIEW_TYPE_FOOTER:
                    return null;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public int getItemViewType(int i) {
            return (this.mShowFooterView && i == getCount() - 1) ? ITEM_VIEW_TYPE_FOOTER : ITEM_VIEW_TYPE_ACTIVITY;
        }

        public int getMaxActivityCount() {
            return this.mMaxActivityCount;
        }

        public boolean getShowDefaultActivity() {
            return this.mShowDefaultActivity;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            switch (getItemViewType(i)) {
                case ITEM_VIEW_TYPE_ACTIVITY:
                    if (view == null || view.getId() != R.id.abs__list_item) {
                        view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.abs__activity_chooser_view_list_item, viewGroup, false);
                    }
                    PackageManager packageManager = ActivityChooserView.this.mContext.getPackageManager();
                    ResolveInfo resolveInfo = (ResolveInfo) getItem(i);
                    ((ImageView) view.findViewById(R.id.abs__icon)).setImageDrawable(resolveInfo.loadIcon(packageManager));
                    ((TextView) view.findViewById(R.id.abs__title)).setText(resolveInfo.loadLabel(packageManager));
                    if (!IS_HONEYCOMB) {
                        return view;
                    }
                    if (this.mShowDefaultActivity && i == 0 && this.mHighlightDefaultActivity) {
                        SetActivated.invoke(view, true);
                        return view;
                    } else {
                        SetActivated.invoke(view, false);
                        return view;
                    }
                case ITEM_VIEW_TYPE_FOOTER:
                    if (view != null && view.getId() == 1) {
                        return view;
                    }
                    view = LayoutInflater.from(ActivityChooserView.this.getContext()).inflate(R.layout.abs__activity_chooser_view_list_item, viewGroup, false);
                    view.setId(ITEM_VIEW_TYPE_FOOTER);
                    ((TextView) view.findViewById(R.id.abs__title)).setText(ActivityChooserView.this.mContext.getString(R.string.abs__activity_chooser_view_see_all));
                    return view;
                default:
                    throw new IllegalArgumentException();
            }
        }

        public int getViewTypeCount() {
            return ITEM_VIEW_TYPE_COUNT;
        }

        public int measureContentWidth() {
            int i = ITEM_VIEW_TYPE_ACTIVITY;
            int i2 = this.mMaxActivityCount;
            this.mMaxActivityCount = Integer.MAX_VALUE;
            int makeMeasureSpec = MeasureSpec.makeMeasureSpec(ITEM_VIEW_TYPE_ACTIVITY, ITEM_VIEW_TYPE_ACTIVITY);
            int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(ITEM_VIEW_TYPE_ACTIVITY, ITEM_VIEW_TYPE_ACTIVITY);
            int count = getCount();
            View view = null;
            int i3 = 0;
            while (i < count) {
                view = getView(i, view, null);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                i3 = Math.max(i3, view.getMeasuredWidth());
                i++;
            }
            this.mMaxActivityCount = i2;
            return i3;
        }

        public void setDataModel(ActivityChooserModel activityChooserModel) {
            ActivityChooserModel dataModel = ActivityChooserView.this.mAdapter.getDataModel();
            if (dataModel != null && ActivityChooserView.this.isShown()) {
                try {
                    dataModel.unregisterObserver(ActivityChooserView.this.mModelDataSetOberver);
                } catch (IllegalStateException e) {
                }
            }
            this.mDataModel = activityChooserModel;
            if (activityChooserModel != null && ActivityChooserView.this.isShown()) {
                try {
                    activityChooserModel.registerObserver(ActivityChooserView.this.mModelDataSetOberver);
                } catch (IllegalStateException e2) {
                }
            }
            notifyDataSetChanged();
        }

        public void setMaxActivityCount(int i) {
            if (this.mMaxActivityCount != i) {
                this.mMaxActivityCount = i;
                notifyDataSetChanged();
            }
        }

        public void setShowDefaultActivity(boolean z, boolean z2) {
            if (this.mShowDefaultActivity != z || this.mHighlightDefaultActivity != z2) {
                this.mShowDefaultActivity = z;
                this.mHighlightDefaultActivity = z2;
                notifyDataSetChanged();
            }
        }

        public void setShowFooterView(boolean z) {
            if (this.mShowFooterView != z) {
                this.mShowFooterView = z;
                notifyDataSetChanged();
            }
        }
    }

    // compiled from: ProGuard
    class Callbacks implements OnClickListener, OnLongClickListener, OnItemClickListener, OnDismissListener {
        private Callbacks() {
        }

        private void notifyOnDismissListener() {
            if (ActivityChooserView.this.mOnDismissListener != null) {
                ActivityChooserView.this.mOnDismissListener.onDismiss();
            }
        }

        public void onClick(View view) {
            if (view == ActivityChooserView.this.mDefaultActivityButton) {
                ActivityChooserView.this.dismissPopup();
                Intent chooseActivity = ActivityChooserView.this.mAdapter.getDataModel().chooseActivity(ActivityChooserView.this.mAdapter.getDataModel().getActivityIndex(ActivityChooserView.this.mAdapter.getDefaultActivity()));
                if (chooseActivity != null) {
                    ActivityChooserView.this.mContext.startActivity(chooseActivity);
                }
            } else if (view == ActivityChooserView.this.mExpandActivityOverflowButton) {
                ActivityChooserView.this.mIsSelectingDefaultActivity = false;
                ActivityChooserView.this.doOnShareActionButtonClicked();
                ActivityChooserView.this.showPopupUnchecked(ActivityChooserView.this.mInitialActivityCount);
            } else {
                throw new IllegalArgumentException();
            }
        }

        public void onDismiss() {
            notifyOnDismissListener();
            if (ActivityChooserView.this.mProvider != null) {
                ActivityChooserView.this.mProvider.subUiVisibilityChanged(false);
            }
        }

        public void onItemClick(AdapterView adapterView, View view, int i, long j) {
            switch (((ActivityChooserViewAdapter) adapterView.getAdapter()).getItemViewType(i)) {
                case IcsToast.LENGTH_SHORT:
                    ActivityChooserView.this.dismissPopup();
                    if (!ActivityChooserView.this.mIsSelectingDefaultActivity) {
                        if (!ActivityChooserView.this.mAdapter.getShowDefaultActivity()) {
                            i++;
                        }
                        Intent chooseActivity = ActivityChooserView.this.mAdapter.getDataModel().chooseActivity(i);
                        if (chooseActivity != null) {
                            ActivityChooserView.this.mContext.startActivity(chooseActivity);
                        }
                    } else if (i > 0) {
                        ActivityChooserView.this.mAdapter.getDataModel().setDefaultActivity(i);
                    }
                case IcsToast.LENGTH_LONG:
                    ActivityChooserView.this.showPopupUnchecked(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                default:
                    throw new IllegalArgumentException();
            }
        }

        public boolean onLongClick(View view) {
            if (view == ActivityChooserView.this.mDefaultActivityButton) {
                if (ActivityChooserView.this.mAdapter.getCount() > 0) {
                    ActivityChooserView.this.mIsSelectingDefaultActivity = true;
                    ActivityChooserView.this.showPopupUnchecked(ActivityChooserView.this.mInitialActivityCount);
                }
                return true;
            } else {
                throw new IllegalArgumentException();
            }
        }
    }

    // compiled from: ProGuard
    public interface OnShareActionButtonClickedListener {
        void onShareActionButtonClicked();
    }

    // compiled from: ProGuard
    class SetActivated {
        private SetActivated() {
        }

        public static void invoke(View view, boolean z) {
            view.setActivated(z);
        }
    }

    static {
        IS_HONEYCOMB = VERSION.SDK_INT >= 11;
    }

    public ActivityChooserView(Context context) {
        this(context, null);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActivityChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mModelDataSetOberver = new DataSetObserver() {
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.mAdapter.notifyDataSetChanged();
            }

            public void onInvalidated() {
                super.onInvalidated();
                ActivityChooserView.this.mAdapter.notifyDataSetInvalidated();
            }
        };
        this.mOnGlobalLayoutListener = new OnGlobalLayoutListener() {
            public void onGlobalLayout() {
                if (!ActivityChooserView.this.isShowingPopup()) {
                    return;
                }
                if (ActivityChooserView.this.isShown()) {
                    ActivityChooserView.this.getListPopupWindow().show();
                    if (ActivityChooserView.this.mProvider != null) {
                        ActivityChooserView.this.mProvider.subUiVisibilityChanged(true);
                    }
                } else {
                    ActivityChooserView.this.getListPopupWindow().dismiss();
                }
            }
        };
        this.mInitialActivityCount = 4;
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SherlockActivityChooserView, i, 0);
        this.mInitialActivityCount = obtainStyledAttributes.getInt(1, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        Drawable drawable = obtainStyledAttributes.getDrawable(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
        obtainStyledAttributes.recycle();
        LayoutInflater.from(this.mContext).inflate(R.layout.abs__activity_chooser_view, this, true);
        this.mCallbacks = new Callbacks(null);
        this.mActivityChooserContent = (IcsLinearLayout) findViewById(R.id.abs__activity_chooser_view_content);
        this.mActivityChooserContentBackground = this.mActivityChooserContent.getBackground();
        this.mDefaultActivityButton = (FrameLayout) findViewById(R.id.abs__default_activity_button);
        this.mDefaultActivityButton.setOnClickListener(this.mCallbacks);
        this.mDefaultActivityButton.setOnLongClickListener(this.mCallbacks);
        this.mDefaultActivityButtonImage = (ImageView) this.mDefaultActivityButton.findViewById(R.id.abs__image);
        this.mExpandActivityOverflowButton = (FrameLayout) findViewById(R.id.abs__expand_activities_button);
        this.mExpandActivityOverflowButton.setOnClickListener(this.mCallbacks);
        this.mExpandActivityOverflowButtonImage = (ImageView) this.mExpandActivityOverflowButton.findViewById(R.id.abs__image);
        this.mExpandActivityOverflowButtonImage.setImageDrawable(drawable);
        this.mAdapter = new ActivityChooserViewAdapter(null);
        this.mAdapter.registerDataSetObserver(new DataSetObserver() {
            public void onChanged() {
                super.onChanged();
                ActivityChooserView.this.updateAppearance();
            }
        });
        Resources resources = context.getResources();
        this.mListPopupMaxWidth = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abs__config_prefDialogWidth));
    }

    private void doOnShareActionButtonClicked() {
        if (this.mOnShareActionButtonClickedListener != null) {
            this.mOnShareActionButtonClickedListener.onShareActionButtonClicked();
        }
    }

    private IcsListPopupWindow getListPopupWindow() {
        if (this.mListPopupWindow == null) {
            this.mListPopupWindow = new IcsListPopupWindow(getContext());
            this.mListPopupWindow.setAdapter(this.mAdapter);
            this.mListPopupWindow.setAnchorView(this);
            this.mListPopupWindow.setModal(true);
            this.mListPopupWindow.setOnItemClickListener(this.mCallbacks);
            this.mListPopupWindow.setOnDismissListener(this.mCallbacks);
        }
        return this.mListPopupWindow;
    }

    private void showPopupUnchecked(int i) {
        if (this.mAdapter.getDataModel() == null) {
            throw new IllegalStateException("No data model. Did you call #setDataModel?");
        }
        getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        boolean z = this.mDefaultActivityButton.getVisibility() == 0;
        int activityCount = this.mAdapter.getActivityCount();
        int i2 = z ? 1 : 0;
        if (i == Integer.MAX_VALUE || activityCount <= i2 + i) {
            this.mAdapter.setShowFooterView(false);
            this.mAdapter.setMaxActivityCount(i);
        } else {
            this.mAdapter.setShowFooterView(true);
            this.mAdapter.setMaxActivityCount(i - 1);
        }
        IcsListPopupWindow listPopupWindow = getListPopupWindow();
        if (!listPopupWindow.isShowing()) {
            if (this.mIsSelectingDefaultActivity || !z) {
                this.mAdapter.setShowDefaultActivity(true, z);
            } else {
                this.mAdapter.setShowDefaultActivity(false, false);
            }
            listPopupWindow.setContentWidth(Math.min(this.mAdapter.measureContentWidth(), this.mListPopupMaxWidth));
            listPopupWindow.show();
            if (this.mProvider != null) {
                this.mProvider.subUiVisibilityChanged(true);
            }
            listPopupWindow.getListView().setContentDescription(this.mContext.getString(R.string.abs__activitychooserview_choose_application));
        }
    }

    private void updateAppearance() {
        if (this.mAdapter.getCount() > 0) {
            this.mExpandActivityOverflowButton.setEnabled(true);
        } else {
            this.mExpandActivityOverflowButton.setEnabled(false);
        }
        int activityCount = this.mAdapter.getActivityCount();
        int historySize = this.mAdapter.getHistorySize();
        if (activityCount <= 0 || historySize <= 0) {
            this.mDefaultActivityButton.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        } else {
            this.mDefaultActivityButton.setVisibility(0);
            ResolveInfo defaultActivity = this.mAdapter.getDefaultActivity();
            PackageManager packageManager = this.mContext.getPackageManager();
            this.mDefaultActivityButtonImage.setImageDrawable(defaultActivity.loadIcon(packageManager));
            if (this.mDefaultActionButtonContentDescription != 0) {
                CharSequence loadLabel = defaultActivity.loadLabel(packageManager);
                this.mDefaultActivityButton.setContentDescription(this.mContext.getString(this.mDefaultActionButtonContentDescription, new Object[]{loadLabel}));
            }
            this.mAdapter.setShowDefaultActivity(false, false);
        }
        if (this.mDefaultActivityButton.getVisibility() == 0) {
            this.mActivityChooserContent.setBackgroundDrawable(this.mActivityChooserContentBackground);
        } else {
            this.mActivityChooserContent.setBackgroundDrawable(null);
            this.mActivityChooserContent.setPadding(0, 0, 0, 0);
        }
    }

    public boolean dismissPopup() {
        if (isShowingPopup()) {
            getListPopupWindow().dismiss();
            ViewTreeObserver viewTreeObserver = getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
            }
        }
        return true;
    }

    public ActivityChooserModel getDataModel() {
        return this.mAdapter.getDataModel();
    }

    public boolean isShowingPopup() {
        return getListPopupWindow().isShowing();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ActivityChooserModel dataModel = this.mAdapter.getDataModel();
        if (dataModel != null) {
            try {
                dataModel.registerObserver(this.mModelDataSetOberver);
            } catch (IllegalStateException e) {
            }
        }
        this.mIsAttachedToWindow = true;
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ActivityChooserModel dataModel = this.mAdapter.getDataModel();
        if (dataModel != null) {
            try {
                dataModel.unregisterObserver(this.mModelDataSetOberver);
            } catch (IllegalStateException e) {
            }
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
        }
        this.mIsAttachedToWindow = false;
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.mActivityChooserContent.layout(0, 0, i3 - i, i4 - i2);
        if (getListPopupWindow().isShowing()) {
            showPopupUnchecked(this.mAdapter.getMaxActivityCount());
        } else {
            dismissPopup();
        }
    }

    protected void onMeasure(int i, int i2) {
        View view = this.mActivityChooserContent;
        if (this.mDefaultActivityButton.getVisibility() != 0) {
            i2 = MeasureSpec.makeMeasureSpec(MeasureSpec.getSize(i2), 1073741824);
        }
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void setActivityChooserModel(ActivityChooserModel activityChooserModel) {
        this.mAdapter.setDataModel(activityChooserModel);
        if (isShowingPopup()) {
            dismissPopup();
            showPopup();
        }
    }

    public void setDefaultActionButtonContentDescription(int i) {
        this.mDefaultActionButtonContentDescription = i;
    }

    public void setExpandActivityOverflowButtonContentDescription(int i) {
        this.mExpandActivityOverflowButtonImage.setContentDescription(this.mContext.getString(i));
    }

    public void setExpandActivityOverflowButtonDrawable(Drawable drawable) {
        this.mExpandActivityOverflowButtonImage.setImageDrawable(drawable);
    }

    public void setInitialActivityCount(int i) {
        this.mInitialActivityCount = i;
    }

    public void setOnDismissListener(OnDismissListener onDismissListener) {
        this.mOnDismissListener = onDismissListener;
    }

    public void setOnShareActionButtonClickedListener(OnShareActionButtonClickedListener onShareActionButtonClickedListener) {
        this.mOnShareActionButtonClickedListener = onShareActionButtonClickedListener;
    }

    public void setProvider(ActionProvider actionProvider) {
        this.mProvider = actionProvider;
    }

    public boolean showPopup() {
        if (isShowingPopup() || !this.mIsAttachedToWindow) {
            return false;
        }
        this.mIsSelectingDefaultActivity = false;
        showPopupUnchecked(this.mInitialActivityCount);
        return true;
    }
}