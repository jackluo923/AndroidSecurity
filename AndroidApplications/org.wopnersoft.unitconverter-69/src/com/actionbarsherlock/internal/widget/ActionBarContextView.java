package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator;
import com.actionbarsherlock.internal.nineoldandroids.animation.Animator.AnimatorListener;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet;
import com.actionbarsherlock.internal.nineoldandroids.animation.AnimatorSet.Builder;
import com.actionbarsherlock.internal.nineoldandroids.animation.ObjectAnimator;
import com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineLinearLayout;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.MenuItem;

// compiled from: ProGuard
public class ActionBarContextView extends AbsActionBarView implements AnimatorListener {
    private static final int ANIMATE_IDLE = 0;
    private static final int ANIMATE_IN = 1;
    private static final int ANIMATE_OUT = 2;
    private boolean mAnimateInOnLayout;
    private int mAnimationMode;
    private NineLinearLayout mClose;
    private Animator mCurrentAnimation;
    private View mCustomView;
    private Drawable mSplitBackground;
    private CharSequence mSubtitle;
    private int mSubtitleStyleRes;
    private TextView mSubtitleView;
    private CharSequence mTitle;
    private LinearLayout mTitleLayout;
    private int mTitleStyleRes;
    private TextView mTitleView;

    // compiled from: ProGuard
    class AnonymousClass_1 implements OnClickListener {
        private final /* synthetic */ ActionMode val$mode;

        AnonymousClass_1(ActionMode actionMode) {
            this.val$mode = actionMode;
        }

        public void onClick(View view) {
            this.val$mode.finish();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.actionModeStyle);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SherlockActionMode, i, ANIMATE_IDLE);
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(ANIMATE_OUT));
        this.mTitleStyleRes = obtainStyledAttributes.getResourceId(ANIMATE_IDLE, ANIMATE_IDLE);
        this.mSubtitleStyleRes = obtainStyledAttributes.getResourceId(ANIMATE_IN, ANIMATE_IDLE);
        this.mContentHeight = obtainStyledAttributes.getLayoutDimension(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, ANIMATE_IDLE);
        this.mSplitBackground = obtainStyledAttributes.getDrawable(R.styleable.SherlockTheme_actionBarTabTextStyle);
        obtainStyledAttributes.recycle();
    }

    private void finishAnimation() {
        Animator animator = this.mCurrentAnimation;
        if (animator != null) {
            this.mCurrentAnimation = null;
            animator.end();
        }
    }

    private void initTitle() {
        int i = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        boolean z = ANIMATE_IN;
        if (this.mTitleLayout == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abs__action_bar_title_item, this);
            this.mTitleLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.mTitleView = (TextView) this.mTitleLayout.findViewById(R.id.abs__action_bar_title);
            this.mSubtitleView = (TextView) this.mTitleLayout.findViewById(R.id.abs__action_bar_subtitle);
            if (this.mTitleStyleRes != 0) {
                this.mTitleView.setTextAppearance(this.mContext, this.mTitleStyleRes);
            }
            if (this.mSubtitleStyleRes != 0) {
                this.mSubtitleView.setTextAppearance(this.mContext, this.mSubtitleStyleRes);
            }
        }
        this.mTitleView.setText(this.mTitle);
        this.mSubtitleView.setText(this.mSubtitle);
        int i2 = !TextUtils.isEmpty(this.mTitle);
        if (TextUtils.isEmpty(this.mSubtitle)) {
            z = false;
        }
        this.mSubtitleView.setVisibility(i != 0 ? 0 : 8);
        LinearLayout linearLayout = this.mTitleLayout;
        if (!(i2 == 0 && i == 0)) {
            i = 0;
        }
        linearLayout.setVisibility(i);
        if (this.mTitleLayout.getParent() == null) {
            addView(this.mTitleLayout);
        }
    }

    private Animator makeInAnimation() {
        this.mClose.setTranslationX((float) ((-this.mClose.getWidth()) - ((MarginLayoutParams) this.mClose.getLayoutParams()).leftMargin));
        Animator ofFloat = ObjectAnimator.ofFloat(this.mClose, "translationX", new float[]{0.0f});
        ofFloat.setDuration(200);
        ofFloat.addListener(this);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        Animator animatorSet = new AnimatorSet();
        Builder play = animatorSet.play(ofFloat);
        if (this.mMenuView != null) {
            int childCount = this.mMenuView.getChildCount();
            if (childCount > 0) {
                int i = childCount - 1;
                childCount = 0;
                while (i >= 0) {
                    AnimatorProxy wrap = AnimatorProxy.wrap(this.mMenuView.getChildAt(i));
                    wrap.setScaleY(0.0f);
                    Animator ofFloat2 = ObjectAnimator.ofFloat(wrap, "scaleY", new float[]{0.0f, 1.0f});
                    ofFloat2.setDuration(100);
                    ofFloat2.setStartDelay((long) (childCount * 70));
                    play.with(ofFloat2);
                    i--;
                    childCount++;
                }
            }
        }
        return animatorSet;
    }

    private Animator makeOutAnimation() {
        Animator ofFloat = ObjectAnimator.ofFloat(this.mClose, "translationX", new float[]{(float) ((-this.mClose.getWidth()) - ((MarginLayoutParams) this.mClose.getLayoutParams()).leftMargin)});
        ofFloat.setDuration(200);
        ofFloat.addListener(this);
        ofFloat.setInterpolator(new DecelerateInterpolator());
        Animator animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat);
        return (this.mMenuView == null || this.mMenuView.getChildCount() > 0) ? animatorSet : animatorSet;
    }

    public void closeMode() {
        if (this.mAnimationMode != 2) {
            if (this.mClose == null) {
                killMode();
            } else {
                finishAnimation();
                this.mAnimationMode = 2;
                this.mCurrentAnimation = makeOutAnimation();
                this.mCurrentAnimation.start();
            }
        }
    }

    protected LayoutParams generateDefaultLayoutParams() {
        return new MarginLayoutParams(-1, -2);
    }

    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MarginLayoutParams(getContext(), attributeSet);
    }

    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public boolean hideOverflowMenu() {
        return this.mActionMenuPresenter != null ? this.mActionMenuPresenter.hideOverflowMenu() : false;
    }

    public void initForMode(ActionMode actionMode) {
        if (this.mClose == null) {
            this.mClose = (NineLinearLayout) LayoutInflater.from(this.mContext).inflate(R.layout.abs__action_mode_close_item, this, false);
            addView(this.mClose);
        } else if (this.mClose.getParent() == null) {
            addView(this.mClose);
        }
        this.mClose.findViewById(R.id.abs__action_mode_close_button).setOnClickListener(new AnonymousClass_1(actionMode));
        MenuBuilder menuBuilder = (MenuBuilder) actionMode.getMenu();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.dismissPopupMenus();
        }
        this.mActionMenuPresenter = new ActionMenuPresenter(this.mContext);
        this.mActionMenuPresenter.setReserveOverflow(true);
        LayoutParams layoutParams = new LayoutParams(-2, -1);
        if (this.mSplitActionBar) {
            this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
            this.mActionMenuPresenter.setItemLimit(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
            layoutParams.width = -1;
            layoutParams.height = this.mContentHeight;
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
            this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
            this.mMenuView.setBackgroundDrawable(this.mSplitBackground);
            this.mSplitView.addView(this.mMenuView, layoutParams);
        } else {
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
            this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
            this.mMenuView.setBackgroundDrawable(null);
            addView(this.mMenuView, layoutParams);
        }
        this.mAnimateInOnLayout = true;
    }

    public boolean isOverflowMenuShowing() {
        return this.mActionMenuPresenter != null ? this.mActionMenuPresenter.isOverflowMenuShowing() : false;
    }

    public void killMode() {
        finishAnimation();
        removeAllViews();
        if (this.mSplitView != null) {
            this.mSplitView.removeView(this.mMenuView);
        }
        this.mCustomView = null;
        this.mMenuView = null;
        this.mAnimateInOnLayout = false;
    }

    public void onAnimationCancel(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        if (this.mAnimationMode == 2) {
            killMode();
        }
        this.mAnimationMode = 0;
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationStart(Animator animator) {
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.hideOverflowMenu();
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.setClassName(getClass().getName());
            accessibilityEvent.setPackageName(getContext().getPackageName());
            accessibilityEvent.setContentDescription(this.mTitle);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = i4 - i2 - getPaddingTop() - getPaddingBottom();
        if (this.mClose == null || this.mClose.getVisibility() == 8) {
            i5 = paddingLeft;
        } else {
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.mClose.getLayoutParams();
            paddingLeft += marginLayoutParams.leftMargin;
            i5 = marginLayoutParams.rightMargin + paddingLeft + positionChild(this.mClose, paddingLeft, paddingTop, paddingTop2);
            if (this.mAnimateInOnLayout) {
                this.mAnimationMode = 1;
                this.mCurrentAnimation = makeInAnimation();
                this.mCurrentAnimation.start();
                this.mAnimateInOnLayout = false;
            }
        }
        if (this.mTitleLayout != null && this.mCustomView == null) {
            i5 += positionChild(this.mTitleLayout, i5, paddingTop, paddingTop2);
        }
        if (this.mCustomView != null) {
            i5 += positionChild(this.mCustomView, i5, paddingTop, paddingTop2);
        }
        i5 = i3 - i - getPaddingRight();
        if (this.mMenuView != null) {
            i5 -= positionChildInverse(this.mMenuView, i5, paddingTop, paddingTop2);
        }
    }

    protected void onMeasure(int i, int i2) {
        int i3 = 1073741824;
        if (MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(new StringBuilder(String.valueOf(getClass().getSimpleName())).append(" can only be used ").append("with android:layout_width=\"match_parent\" (or fill_parent)").toString());
        } else if (MeasureSpec.getMode(i2) == 0) {
            throw new IllegalStateException(new StringBuilder(String.valueOf(getClass().getSimpleName())).append(" can only be used ").append("with android:layout_height=\"wrap_content\"").toString());
        } else {
            int size;
            int size2 = MeasureSpec.getSize(i);
            size = this.mContentHeight > 0 ? this.mContentHeight : MeasureSpec.getSize(i2);
            int paddingTop = getPaddingTop() + getPaddingBottom();
            int paddingLeft = size2 - getPaddingLeft() - getPaddingRight();
            int i4 = size - paddingTop;
            int makeMeasureSpec = MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
            if (this.mClose != null) {
                int measureChildView = measureChildView(this.mClose, paddingLeft, makeMeasureSpec, ANIMATE_IDLE);
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) this.mClose.getLayoutParams();
                paddingLeft = measureChildView - marginLayoutParams.rightMargin + marginLayoutParams.leftMargin;
            }
            if (this.mMenuView != null && this.mMenuView.getParent() == this) {
                paddingLeft = measureChildView(this.mMenuView, paddingLeft, makeMeasureSpec, ANIMATE_IDLE);
            }
            if (this.mTitleLayout != null && this.mCustomView == null) {
                paddingLeft = measureChildView(this.mTitleLayout, paddingLeft, makeMeasureSpec, ANIMATE_IDLE);
            }
            if (this.mCustomView != null) {
                LayoutParams layoutParams = this.mCustomView.getLayoutParams();
                makeMeasureSpec = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
                if (layoutParams.width >= 0) {
                    paddingLeft = Math.min(layoutParams.width, paddingLeft);
                }
                if (layoutParams.height == -2) {
                    i3 = Integer.MIN_VALUE;
                }
                this.mCustomView.measure(MeasureSpec.makeMeasureSpec(paddingLeft, makeMeasureSpec), MeasureSpec.makeMeasureSpec(layoutParams.height >= 0 ? Math.min(layoutParams.height, i4) : i4, i3));
            }
            if (this.mContentHeight <= 0) {
                i3 = getChildCount();
                makeMeasureSpec = 0;
                size = 0;
                while (makeMeasureSpec < i3) {
                    paddingLeft = getChildAt(makeMeasureSpec).getMeasuredHeight() + paddingTop;
                    if (paddingLeft <= size) {
                        paddingLeft = size;
                    }
                    makeMeasureSpec++;
                    size = paddingLeft;
                }
                setMeasuredDimension(size2, size);
            } else {
                setMeasuredDimension(size2, size);
            }
        }
    }

    public void setContentHeight(int i) {
        this.mContentHeight = i;
    }

    public void setCustomView(View view) {
        if (this.mCustomView != null) {
            removeView(this.mCustomView);
        }
        this.mCustomView = view;
        if (this.mTitleLayout != null) {
            removeView(this.mTitleLayout);
            this.mTitleLayout = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSplitActionBar(boolean z) {
        if (this.mSplitActionBar != z) {
            if (this.mActionMenuPresenter != null) {
                LayoutParams layoutParams = new LayoutParams(-2, -1);
                ViewGroup viewGroup;
                if (z) {
                    this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                    this.mActionMenuPresenter.setItemLimit(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                    layoutParams.width = -1;
                    layoutParams.height = this.mContentHeight;
                    this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                    this.mMenuView.setBackgroundDrawable(this.mSplitBackground);
                    viewGroup = (ViewGroup) this.mMenuView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.mMenuView);
                    }
                    this.mSplitView.addView(this.mMenuView, layoutParams);
                } else {
                    this.mMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                    this.mMenuView.setBackgroundDrawable(null);
                    viewGroup = (ViewGroup) this.mMenuView.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(this.mMenuView);
                    }
                    addView(this.mMenuView, layoutParams);
                }
            }
            super.setSplitActionBar(z);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        this.mSubtitle = charSequence;
        initTitle();
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        initTitle();
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public boolean showOverflowMenu() {
        return this.mActionMenuPresenter != null ? this.mActionMenuPresenter.showOverflowMenu() : false;
    }
}