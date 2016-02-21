package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.view.NineViewGroup;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;

// compiled from: ProGuard
public abstract class AbsActionBarView extends NineViewGroup {
    private static final int FADE_DURATION = 200;
    private static final Interpolator sAlphaInterpolator;
    protected ActionMenuPresenter mActionMenuPresenter;
    protected int mContentHeight;
    final Context mContext;
    protected ActionMenuView mMenuView;
    protected boolean mSplitActionBar;
    protected ActionBarContainer mSplitView;
    protected boolean mSplitWhenNarrow;
    protected final VisibilityAnimListener mVisAnimListener;
    protected Animator mVisibilityAnim;

    // compiled from: ProGuard
    public class VisibilityAnimListener implements AnimatorListener {
        private boolean mCanceled;
        int mFinalVisibility;

        protected VisibilityAnimListener() {
            this.mCanceled = false;
        }

        public void onAnimationCancel(Animator animator) {
            this.mCanceled = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.mCanceled) {
                AbsActionBarView.this.mVisibilityAnim = null;
                AbsActionBarView.this.setVisibility(this.mFinalVisibility);
                if (AbsActionBarView.this.mSplitView != null && AbsActionBarView.this.mMenuView != null) {
                    AbsActionBarView.this.mMenuView.setVisibility(this.mFinalVisibility);
                }
            }
        }

        public void onAnimationRepeat(Animator animator) {
        }

        public void onAnimationStart(Animator animator) {
            AbsActionBarView.this.setVisibility(0);
            AbsActionBarView.this.mVisibilityAnim = animator;
            this.mCanceled = false;
        }

        public com.actionbarsherlock.internal.widget.AbsActionBarView.VisibilityAnimListener withFinalVisibility(int i) {
            this.mFinalVisibility = i;
            return this;
        }
    }

    static {
        sAlphaInterpolator = new DecelerateInterpolator();
    }

    public AbsActionBarView(Context context) {
        super(context);
        this.mVisAnimListener = new VisibilityAnimListener();
        this.mContext = context;
    }

    public AbsActionBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mVisAnimListener = new VisibilityAnimListener();
        this.mContext = context;
    }

    public AbsActionBarView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mVisAnimListener = new VisibilityAnimListener();
        this.mContext = context;
    }

    public void animateToVisibility(int i) {
        if (this.mVisibilityAnim != null) {
            this.mVisibilityAnim.cancel();
        }
        Animator ofFloat;
        AnimatorSet animatorSet;
        Animator ofFloat2;
        if (i == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
                if (!(this.mSplitView == null || this.mMenuView == null)) {
                    this.mMenuView.setAlpha(0.0f);
                }
            }
            ofFloat = ObjectAnimator.ofFloat(this, "alpha", new float[]{1.0f});
            ofFloat.setDuration(200);
            ofFloat.setInterpolator(sAlphaInterpolator);
            if (this.mSplitView == null || this.mMenuView == null) {
                ofFloat.addListener(this.mVisAnimListener.withFinalVisibility(i));
                ofFloat.start();
            } else {
                animatorSet = new AnimatorSet();
                ofFloat2 = ObjectAnimator.ofFloat(this.mMenuView, "alpha", new float[]{1.0f});
                ofFloat2.setDuration(200);
                animatorSet.addListener(this.mVisAnimListener.withFinalVisibility(i));
                animatorSet.play(ofFloat).with(ofFloat2);
                animatorSet.start();
            }
        } else {
            ofFloat = ObjectAnimator.ofFloat(this, "alpha", new float[]{0.0f});
            ofFloat.setDuration(200);
            ofFloat.setInterpolator(sAlphaInterpolator);
            if (this.mSplitView == null || this.mMenuView == null) {
                ofFloat.addListener(this.mVisAnimListener.withFinalVisibility(i));
                ofFloat.start();
            } else {
                animatorSet = new AnimatorSet();
                ofFloat2 = ObjectAnimator.ofFloat(this.mMenuView, "alpha", new float[]{0.0f});
                ofFloat2.setDuration(200);
                animatorSet.addListener(this.mVisAnimListener.withFinalVisibility(i));
                animatorSet.play(ofFloat).with(ofFloat2);
                animatorSet.start();
            }
        }
    }

    public void dismissPopupMenus() {
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.dismissPopupMenus();
        }
    }

    public int getAnimatedVisibility() {
        return this.mVisibilityAnim != null ? this.mVisAnimListener.mFinalVisibility : getVisibility();
    }

    public int getContentHeight() {
        return this.mContentHeight;
    }

    public boolean hideOverflowMenu() {
        return this.mActionMenuPresenter != null ? this.mActionMenuPresenter.hideOverflowMenu() : false;
    }

    public boolean isOverflowMenuShowing() {
        return this.mActionMenuPresenter != null ? this.mActionMenuPresenter.isOverflowMenuShowing() : false;
    }

    public boolean isOverflowReserved() {
        return this.mActionMenuPresenter != null && this.mActionMenuPresenter.isOverflowReserved();
    }

    protected int measureChildView(View view, int i, int i2, int i3) {
        view.measure(MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return Math.max(0, i - view.getMeasuredWidth() - i3);
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        } else if (this.mMenuView != null) {
            this.mMenuView.onConfigurationChanged(configuration);
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.SherlockActionBar, R.attr.actionBarStyle, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, 0));
        obtainStyledAttributes.recycle();
        if (this.mSplitWhenNarrow) {
            setSplitActionBar(ResourcesCompat.getResources_getBoolean(getContext(), R.bool.abs__split_action_bar_is_narrow));
        }
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.onConfigurationChanged(configuration);
        }
    }

    protected int positionChild(View view, int i, int i2, int i3) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = (i3 - measuredHeight) / 2 + i2;
        view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        return measuredWidth;
    }

    protected int positionChildInverse(View view, int i, int i2, int i3) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = (i3 - measuredHeight) / 2 + i2;
        view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        return measuredWidth;
    }

    public void postShowOverflowMenu() {
        post(new Runnable() {
            public void run() {
                AbsActionBarView.this.showOverflowMenu();
            }
        });
    }

    public void setContentHeight(int i) {
        this.mContentHeight = i;
        requestLayout();
    }

    public void setSplitActionBar(boolean z) {
        this.mSplitActionBar = z;
    }

    public void setSplitView(ActionBarContainer actionBarContainer) {
        this.mSplitView = actionBarContainer;
    }

    public void setSplitWhenNarrow(boolean z) {
        this.mSplitWhenNarrow = z;
    }

    public void setVisibility(int i) {
        if (this.mVisibilityAnim != null) {
            this.mVisibilityAnim.end();
        }
        super.setVisibility(i);
    }

    public boolean showOverflowMenu() {
        return this.mActionMenuPresenter != null ? this.mActionMenuPresenter.showOverflowMenu() : false;
    }
}