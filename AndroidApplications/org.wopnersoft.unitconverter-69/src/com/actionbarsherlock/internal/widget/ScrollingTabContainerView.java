package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.actionbarsherlock.R;
import com.actionbarsherlock.app.ActionBar.Tab;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineHorizontalScrollView;
import com.actionbarsherlock.internal.widget.IcsAdapterView.OnItemSelectedListener;
import com.actionbarsherlock.view.MenuItem;

// compiled from: ProGuard
public class ScrollingTabContainerView extends NineHorizontalScrollView implements OnItemSelectedListener {
    private static final int FADE_DURATION = 200;
    private static final Interpolator sAlphaInterpolator;
    private boolean mAllowCollapse;
    private int mContentHeight;
    private LayoutInflater mInflater;
    int mMaxTabWidth;
    private int mSelectedTabIndex;
    private TabClickListener mTabClickListener;
    private IcsLinearLayout mTabLayout;
    Runnable mTabSelector;
    private IcsSpinner mTabSpinner;
    protected final VisibilityAnimListener mVisAnimListener;
    protected Animator mVisibilityAnim;

    // compiled from: ProGuard
    class AnonymousClass_1 implements Runnable {
        private final /* synthetic */ View val$tabView;

        AnonymousClass_1(View view) {
            this.val$tabView = view;
        }

        public void run() {
            ScrollingTabContainerView.this.smoothScrollTo(this.val$tabView.getLeft() - (ScrollingTabContainerView.this.getWidth() - this.val$tabView.getWidth()) / 2, 0);
            ScrollingTabContainerView.this.mTabSelector = null;
        }
    }

    // compiled from: ProGuard
    class TabAdapter extends BaseAdapter {
        private TabAdapter() {
        }

        public int getCount() {
            return ScrollingTabContainerView.this.mTabLayout.getChildCount();
        }

        public Object getItem(int i) {
            return ((com.actionbarsherlock.internal.widget.ScrollingTabContainerView.TabView) ScrollingTabContainerView.this.mTabLayout.getChildAt(i)).getTab();
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                return ScrollingTabContainerView.this.createTabView((Tab) getItem(i), true);
            }
            ((com.actionbarsherlock.internal.widget.ScrollingTabContainerView.TabView) view).bindTab((Tab) getItem(i));
            return view;
        }
    }

    // compiled from: ProGuard
    class TabClickListener implements OnClickListener {
        private TabClickListener() {
        }

        public void onClick(View view) {
            ((com.actionbarsherlock.internal.widget.ScrollingTabContainerView.TabView) view).getTab().select();
            int childCount = ScrollingTabContainerView.this.mTabLayout.getChildCount();
            int i = 0;
            while (i < childCount) {
                View childAt = ScrollingTabContainerView.this.mTabLayout.getChildAt(i);
                childAt.setSelected(childAt == view);
                i++;
            }
        }
    }

    // compiled from: ProGuard
    public class TabView extends LinearLayout {
        private View mCustomView;
        private ImageView mIconView;
        private ScrollingTabContainerView mParent;
        private Tab mTab;
        private CapitalizingTextView mTextView;

        public TabView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public void bindTab(Tab tab) {
            this.mTab = tab;
            update();
        }

        public Tab getTab() {
            return this.mTab;
        }

        public void init(ScrollingTabContainerView scrollingTabContainerView, Tab tab, boolean z) {
            this.mParent = scrollingTabContainerView;
            this.mTab = tab;
            if (z) {
                setGravity(R.styleable.SherlockTheme_actionModePopupWindowStyle);
            }
            update();
        }

        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (this.mParent.mMaxTabWidth > 0 && getMeasuredWidth() > this.mParent.mMaxTabWidth) {
                super.onMeasure(MeasureSpec.makeMeasureSpec(this.mParent.mMaxTabWidth, 1073741824), i2);
            }
        }

        public void update() {
            Tab tab = this.mTab;
            View customView = tab.getCustomView();
            if (customView != null) {
                ViewParent parent = customView.getParent();
                if (parent != this) {
                    if (parent != null) {
                        ((ViewGroup) parent).removeView(customView);
                    }
                    addView(customView);
                }
                this.mCustomView = customView;
                if (this.mTextView != null) {
                    this.mTextView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                }
                if (this.mIconView != null) {
                    this.mIconView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                    this.mIconView.setImageDrawable(null);
                }
            } else {
                if (this.mCustomView != null) {
                    removeView(this.mCustomView);
                    this.mCustomView = null;
                }
                Drawable icon = tab.getIcon();
                CharSequence text = tab.getText();
                if (icon != null) {
                    if (this.mIconView == null) {
                        View imageView = new ImageView(getContext());
                        LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams.gravity = 16;
                        imageView.setLayoutParams(layoutParams);
                        addView(imageView, 0);
                        this.mIconView = imageView;
                    }
                    this.mIconView.setImageDrawable(icon);
                    this.mIconView.setVisibility(0);
                } else if (this.mIconView != null) {
                    this.mIconView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                    this.mIconView.setImageDrawable(null);
                }
                if (text != null) {
                    if (this.mTextView == null) {
                        customView = new CapitalizingTextView(getContext(), null, R.attr.actionBarTabTextStyle);
                        customView.setEllipsize(TruncateAt.END);
                        LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams2.gravity = 16;
                        customView.setLayoutParams(layoutParams2);
                        addView(customView);
                        this.mTextView = customView;
                    }
                    this.mTextView.setTextCompat(text);
                    this.mTextView.setVisibility(0);
                } else if (this.mTextView != null) {
                    this.mTextView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                    this.mTextView.setText(null);
                }
                if (this.mIconView != null) {
                    this.mIconView.setContentDescription(tab.getContentDescription());
                }
            }
        }
    }

    // compiled from: ProGuard
    public class VisibilityAnimListener implements AnimatorListener {
        private boolean mCanceled;
        private int mFinalVisibility;

        protected VisibilityAnimListener() {
            this.mCanceled = false;
        }

        public void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.mCanceled) {
                ScrollingTabContainerView.this.mVisibilityAnim = null;
                ScrollingTabContainerView.this.setVisibility(this.mFinalVisibility);
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
            ScrollingTabContainerView.this.setVisibility(0);
            ScrollingTabContainerView.this.mVisibilityAnim = animator;
            this.mCanceled = false;
        }

        public com.actionbarsherlock.internal.widget.ScrollingTabContainerView.VisibilityAnimListener withFinalVisibility(int i) {
            this.mFinalVisibility = i;
            return this;
        }
    }

    static {
        sAlphaInterpolator = new DecelerateInterpolator();
    }

    public ScrollingTabContainerView(Context context) {
        super(context);
        this.mVisAnimListener = new VisibilityAnimListener();
        setHorizontalScrollBarEnabled(false);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.SherlockActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, 0));
        obtainStyledAttributes.recycle();
        this.mInflater = LayoutInflater.from(context);
        this.mTabLayout = createTabLayout();
        addView(this.mTabLayout, new LayoutParams(-2, -1));
    }

    private IcsSpinner createSpinner() {
        IcsSpinner icsSpinner = new IcsSpinner(getContext(), null, R.attr.actionDropDownStyle);
        icsSpinner.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        icsSpinner.setOnItemSelectedListener(this);
        return icsSpinner;
    }

    private IcsLinearLayout createTabLayout() {
        TabsLinearLayout tabsLinearLayout = (TabsLinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.abs__action_bar_tab_bar_view, null);
        tabsLinearLayout.setMeasureWithLargestChildEnabled(true);
        tabsLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        return tabsLinearLayout;
    }

    private TabView createTabView(Tab tab, boolean z) {
        TabView tabView = (TabView) this.mInflater.inflate(R.layout.abs__action_bar_tab, null);
        tabView.init(this, tab, z);
        if (z) {
            tabView.setBackgroundDrawable(null);
            tabView.setLayoutParams(new AbsListView.LayoutParams(-1, this.mContentHeight));
        } else {
            tabView.setFocusable(true);
            if (this.mTabClickListener == null) {
                this.mTabClickListener = new TabClickListener(null);
            }
            tabView.setOnClickListener(this.mTabClickListener);
        }
        return tabView;
    }

    private boolean isCollapsed() {
        return this.mTabSpinner != null && this.mTabSpinner.getParent() == this;
    }

    private void performCollapse() {
        if (!isCollapsed()) {
            if (this.mTabSpinner == null) {
                this.mTabSpinner = createSpinner();
            }
            removeView(this.mTabLayout);
            addView(this.mTabSpinner, new LayoutParams(-2, -1));
            if (this.mTabSpinner.getAdapter() == null) {
                this.mTabSpinner.setAdapter(new TabAdapter(null));
            }
            if (this.mTabSelector != null) {
                removeCallbacks(this.mTabSelector);
                this.mTabSelector = null;
            }
            this.mTabSpinner.setSelection(this.mSelectedTabIndex);
        }
    }

    private boolean performExpand() {
        if (isCollapsed()) {
            removeView(this.mTabSpinner);
            addView(this.mTabLayout, new LayoutParams(-2, -1));
            setTabSelected(this.mTabSpinner.getSelectedItemPosition());
        }
        return false;
    }

    public void addTab(Tab tab, int i, boolean z) {
        View createTabView = createTabView(tab, false);
        this.mTabLayout.addView(createTabView, i, new LinearLayout.LayoutParams(0, -1, 1.0f));
        if (this.mTabSpinner != null) {
            ((TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            createTabView.setSelected(true);
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void addTab(Tab tab, boolean z) {
        View createTabView = createTabView(tab, false);
        this.mTabLayout.addView(createTabView, new LinearLayout.LayoutParams(0, -1, 1.0f));
        if (this.mTabSpinner != null) {
            ((TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (z) {
            createTabView.setSelected(true);
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void animateToTab(int i) {
        View childAt = this.mTabLayout.getChildAt(i);
        if (this.mTabSelector != null) {
            removeCallbacks(this.mTabSelector);
        }
        this.mTabSelector = new AnonymousClass_1(childAt);
        post(this.mTabSelector);
    }

    public void animateToVisibility(int i) {
        if (this.mVisibilityAnim != null) {
            this.mVisibilityAnim.cancel();
        }
        ObjectAnimator ofFloat;
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            ofFloat = ObjectAnimator.ofFloat(this, "alpha", new float[]{1.0f});
            ofFloat.setDuration(200);
            ofFloat.setInterpolator(sAlphaInterpolator);
            ofFloat.addListener(this.mVisAnimListener.withFinalVisibility(i));
            ofFloat.start();
        } else {
            ofFloat = ObjectAnimator.ofFloat(this, "alpha", new float[]{0.0f});
            ofFloat.setDuration(200);
            ofFloat.setInterpolator(sAlphaInterpolator);
            ofFloat.addListener(this.mVisAnimListener.withFinalVisibility(i));
            ofFloat.start();
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mTabSelector != null) {
            post(this.mTabSelector);
        }
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.SherlockActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, 0));
        obtainStyledAttributes.recycle();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mTabSelector != null) {
            removeCallbacks(this.mTabSelector);
        }
    }

    public void onItemSelected(IcsAdapterView icsAdapterView, View view, int i, long j) {
        ((TabView) view).getTab().select();
    }

    public void onMeasure(int i, int i2) {
        boolean z;
        boolean z2 = 1;
        int mode = MeasureSpec.getMode(i);
        z = mode == 1073741824;
        setFillViewport(z);
        int childCount = this.mTabLayout.getChildCount();
        if (childCount <= 1 || !(mode == 1073741824 || mode == Integer.MIN_VALUE)) {
            this.mMaxTabWidth = -1;
        } else if (childCount > 2) {
            this.mMaxTabWidth = (int) (((float) MeasureSpec.getSize(i)) * 0.4f);
        } else {
            this.mMaxTabWidth = MeasureSpec.getSize(i) / 2;
        }
        mode = MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824);
        if (z || !this.mAllowCollapse) {
            z2 = false;
        }
        if (measuredWidth != 0) {
            this.mTabLayout.measure(0, mode);
            if (this.mTabLayout.getMeasuredWidth() > MeasureSpec.getSize(i)) {
                performCollapse();
            } else {
                performExpand();
            }
        } else {
            performExpand();
        }
        int measuredWidth2 = getMeasuredWidth();
        super.onMeasure(i, mode);
        int measuredWidth3 = getMeasuredWidth();
        if (z && measuredWidth2 != measuredWidth3) {
            setTabSelected(this.mSelectedTabIndex);
        }
    }

    public void onNothingSelected(IcsAdapterView icsAdapterView) {
    }

    public void removeAllTabs() {
        this.mTabLayout.removeAllViews();
        if (this.mTabSpinner != null) {
            ((TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void removeTabAt(int i) {
        this.mTabLayout.removeViewAt(i);
        if (this.mTabSpinner != null) {
            ((TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }

    public void setAllowCollapse(boolean z) {
        this.mAllowCollapse = z;
    }

    public void setContentHeight(int i) {
        this.mContentHeight = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.mSelectedTabIndex = i;
        int childCount = this.mTabLayout.getChildCount();
        int i2 = 0;
        while (i2 < childCount) {
            boolean z;
            View childAt = this.mTabLayout.getChildAt(i2);
            z = i2 == i;
            childAt.setSelected(z);
            if (z) {
                animateToTab(i);
            }
            i2++;
        }
    }

    public void updateTab(int i) {
        ((TabView) this.mTabLayout.getChildAt(i)).update();
        if (this.mTabSpinner != null) {
            ((TabAdapter) this.mTabSpinner.getAdapter()).notifyDataSetChanged();
        }
        if (this.mAllowCollapse) {
            requestLayout();
        }
    }
}