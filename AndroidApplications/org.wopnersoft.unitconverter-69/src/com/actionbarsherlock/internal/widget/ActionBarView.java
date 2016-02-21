package com.actionbarsherlock.internal.widget;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.ActionBar.OnNavigationListener;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.view.menu.ActionMenuItem;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.ActionMenuView;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.view.menu.MenuPresenter;
import com.actionbarsherlock.internal.view.menu.MenuView;
import com.actionbarsherlock.internal.view.menu.SubMenuBuilder;
import com.actionbarsherlock.internal.widget.IcsAdapterView.OnItemSelectedListener;
import com.actionbarsherlock.view.CollapsibleActionView;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.Window.Callback;

// compiled from: ProGuard
public class ActionBarView extends AbsActionBarView {
    private static final int DEFAULT_CUSTOM_GRAVITY = 19;
    public static final int DISPLAY_DEFAULT = 0;
    private static final int DISPLAY_RELAYOUT_MASK = 31;
    private static final String TAG = "ActionBarView";
    private OnNavigationListener mCallback;
    private ActionBarContextView mContextView;
    private View mCustomNavView;
    private int mDisplayOptions;
    View mExpandedActionView;
    private final OnClickListener mExpandedActionViewUpListener;
    private HomeView mExpandedHomeLayout;
    private ExpandedActionViewMenuPresenter mExpandedMenuPresenter;
    private HomeView mHomeLayout;
    private Drawable mIcon;
    private boolean mIncludeTabs;
    private int mIndeterminateProgressStyle;
    private IcsProgressBar mIndeterminateProgressView;
    private boolean mIsCollapsable;
    private boolean mIsCollapsed;
    private int mItemPadding;
    private IcsLinearLayout mListNavLayout;
    private Drawable mLogo;
    private ActionMenuItem mLogoNavItem;
    private final OnItemSelectedListener mNavItemSelectedListener;
    private int mNavigationMode;
    private MenuBuilder mOptionsMenu;
    private int mProgressBarPadding;
    private int mProgressStyle;
    private IcsProgressBar mProgressView;
    private IcsSpinner mSpinner;
    private SpinnerAdapter mSpinnerAdapter;
    private CharSequence mSubtitle;
    private int mSubtitleStyleRes;
    private TextView mSubtitleView;
    private ScrollingTabContainerView mTabScrollView;
    private CharSequence mTitle;
    private LinearLayout mTitleLayout;
    private int mTitleStyleRes;
    private View mTitleUpView;
    private TextView mTitleView;
    private final OnClickListener mUpClickListener;
    private boolean mUserTitle;
    Callback mWindowCallback;

    // compiled from: ProGuard
    class ExpandedActionViewMenuPresenter implements MenuPresenter {
        MenuItemImpl mCurrentExpandedItem;
        MenuBuilder mMenu;

        private ExpandedActionViewMenuPresenter() {
        }

        public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            if (ActionBarView.this.mExpandedActionView instanceof CollapsibleActionView) {
                ((CollapsibleActionView) ActionBarView.this.mExpandedActionView).onActionViewCollapsed();
            }
            ActionBarView.this.removeView(ActionBarView.this.mExpandedActionView);
            ActionBarView.this.removeView(ActionBarView.this.mExpandedHomeLayout);
            ActionBarView.this.mExpandedActionView = null;
            if ((ActionBarView.this.mDisplayOptions & 2) != 0) {
                ActionBarView.this.mHomeLayout.setVisibility(DISPLAY_DEFAULT);
            }
            if ((ActionBarView.this.mDisplayOptions & 8) != 0) {
                if (ActionBarView.this.mTitleLayout == null) {
                    ActionBarView.this.initTitle();
                } else {
                    ActionBarView.this.mTitleLayout.setVisibility(DISPLAY_DEFAULT);
                }
            }
            if (ActionBarView.this.mTabScrollView != null && ActionBarView.this.mNavigationMode == 2) {
                ActionBarView.this.mTabScrollView.setVisibility(DISPLAY_DEFAULT);
            }
            if (ActionBarView.this.mSpinner != null && ActionBarView.this.mNavigationMode == 1) {
                ActionBarView.this.mSpinner.setVisibility(DISPLAY_DEFAULT);
            }
            if (!(ActionBarView.this.mCustomNavView == null || (ActionBarView.this.mDisplayOptions & 16) == 0)) {
                ActionBarView.this.mCustomNavView.setVisibility(DISPLAY_DEFAULT);
            }
            ActionBarView.this.mExpandedHomeLayout.setIcon(null);
            this.mCurrentExpandedItem = null;
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(false);
            return true;
        }

        public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
            ActionBarView.this.mExpandedActionView = menuItemImpl.getActionView();
            ActionBarView.this.mExpandedHomeLayout.setIcon(ActionBarView.this.mIcon.getConstantState().newDrawable());
            this.mCurrentExpandedItem = menuItemImpl;
            if (ActionBarView.this.mExpandedActionView.getParent() != ActionBarView.this) {
                ActionBarView.this.addView(ActionBarView.this.mExpandedActionView);
            }
            if (ActionBarView.this.mExpandedHomeLayout.getParent() != ActionBarView.this) {
                ActionBarView.this.addView(ActionBarView.this.mExpandedHomeLayout);
            }
            ActionBarView.this.mHomeLayout.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            if (ActionBarView.this.mTitleLayout != null) {
                ActionBarView.this.mTitleLayout.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
            if (ActionBarView.this.mTabScrollView != null) {
                ActionBarView.this.mTabScrollView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
            if (ActionBarView.this.mSpinner != null) {
                ActionBarView.this.mSpinner.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
            if (ActionBarView.this.mCustomNavView != null) {
                ActionBarView.this.mCustomNavView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
            ActionBarView.this.requestLayout();
            menuItemImpl.setActionViewExpanded(true);
            if (ActionBarView.this.mExpandedActionView instanceof CollapsibleActionView) {
                ((CollapsibleActionView) ActionBarView.this.mExpandedActionView).onActionViewExpanded();
            }
            return true;
        }

        public boolean flagActionItems() {
            return false;
        }

        public int getId() {
            return DISPLAY_DEFAULT;
        }

        public MenuView getMenuView(ViewGroup viewGroup) {
            return null;
        }

        public void initForMenu(Context context, MenuBuilder menuBuilder) {
            if (!(this.mMenu == null || this.mCurrentExpandedItem == null)) {
                this.mMenu.collapseItemActionView(this.mCurrentExpandedItem);
            }
            this.mMenu = menuBuilder;
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
        }

        public Parcelable onSaveInstanceState() {
            return null;
        }

        public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
            return false;
        }

        public void setCallback(MenuPresenter.Callback callback) {
        }

        public void updateMenuView(boolean z) {
            boolean z2 = DISPLAY_DEFAULT;
            if (this.mCurrentExpandedItem != null) {
                if (this.mMenu != null) {
                    int size = this.mMenu.size();
                    int i = 0;
                    while (i < size) {
                        if (this.mMenu.getItem(i) == this.mCurrentExpandedItem) {
                            z2 = 1;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (i == 0) {
                    collapseItemActionView(this.mMenu, this.mCurrentExpandedItem);
                }
            }
        }
    }

    // compiled from: ProGuard
    public class HomeView extends FrameLayout {
        private ImageView mIconView;
        private View mUpView;
        private int mUpWidth;

        public HomeView(Context context) {
            this(context, null);
        }

        public HomeView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public boolean dispatchHoverEvent(MotionEvent motionEvent) {
            return onHoverEvent(motionEvent);
        }

        public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            onPopulateAccessibilityEvent(accessibilityEvent);
            return true;
        }

        public int getLeftOffset() {
            return this.mUpView.getVisibility() == 8 ? this.mUpWidth : DISPLAY_DEFAULT;
        }

        protected void onFinishInflate() {
            this.mUpView = findViewById(R.id.abs__up);
            this.mIconView = (ImageView) findViewById(R.id.abs__home);
        }

        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            LayoutParams layoutParams;
            int measuredHeight;
            int measuredWidth;
            int i5;
            int i6 = DISPLAY_DEFAULT;
            int i7 = (i4 - i2) / 2;
            if (this.mUpView.getVisibility() != 8) {
                layoutParams = (LayoutParams) this.mUpView.getLayoutParams();
                measuredHeight = this.mUpView.getMeasuredHeight();
                measuredWidth = this.mUpView.getMeasuredWidth();
                int i8 = i7 - measuredHeight / 2;
                this.mUpView.layout(DISPLAY_DEFAULT, i8, measuredWidth, measuredHeight + i8);
                i5 = layoutParams.rightMargin + layoutParams.leftMargin + measuredWidth;
                i += i5;
                i6 = i5;
            }
            layoutParams = (LayoutParams) this.mIconView.getLayoutParams();
            measuredHeight = this.mIconView.getMeasuredHeight();
            measuredWidth = this.mIconView.getMeasuredWidth();
            i6 += Math.max(layoutParams.leftMargin, (i3 - i) / 2 - measuredWidth / 2);
            i5 = Math.max(layoutParams.topMargin, i7 - measuredHeight / 2);
            this.mIconView.layout(i6, i5, measuredWidth + i6, measuredHeight + i5);
        }

        protected void onMeasure(int i, int i2) {
            int i3;
            measureChildWithMargins(this.mUpView, i, DISPLAY_DEFAULT, i2, 0);
            LayoutParams layoutParams = (LayoutParams) this.mUpView.getLayoutParams();
            this.mUpWidth = layoutParams.leftMargin + this.mUpView.getMeasuredWidth() + layoutParams.rightMargin;
            i3 = this.mUpView.getVisibility() == 8 ? 0 : this.mUpWidth;
            int measuredHeight = layoutParams.topMargin + this.mUpView.getMeasuredHeight() + layoutParams.bottomMargin;
            measureChildWithMargins(this.mIconView, i, i3, i2, 0);
            layoutParams = (LayoutParams) this.mIconView.getLayoutParams();
            int measuredWidth = i3 + layoutParams.leftMargin + this.mIconView.getMeasuredWidth() + layoutParams.rightMargin;
            measuredHeight = Math.max(measuredHeight, layoutParams.bottomMargin + layoutParams.topMargin + this.mIconView.getMeasuredHeight());
            int mode = MeasureSpec.getMode(i);
            int mode2 = MeasureSpec.getMode(i2);
            int size = MeasureSpec.getSize(i);
            int size2 = MeasureSpec.getSize(i2);
            switch (mode) {
                case Integer.MIN_VALUE:
                    size = Math.min(measuredWidth, size);
                    break;
                case 1073741824:
                    break;
                default:
                    size = measuredWidth;
                    break;
            }
            switch (mode2) {
                case Integer.MIN_VALUE:
                    size2 = Math.min(measuredHeight, size2);
                    break;
                case 1073741824:
                    break;
                default:
                    size2 = measuredHeight;
                    break;
            }
            setMeasuredDimension(size, size2);
        }

        public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            if (VERSION.SDK_INT >= 14) {
                super.onPopulateAccessibilityEvent(accessibilityEvent);
            }
            CharSequence contentDescription = getContentDescription();
            if (!TextUtils.isEmpty(contentDescription)) {
                accessibilityEvent.getText().add(contentDescription);
            }
        }

        public void setIcon(Drawable drawable) {
            this.mIconView.setImageDrawable(drawable);
        }

        public void setUp(boolean z) {
            this.mUpView.setVisibility(z ? DISPLAY_DEFAULT : MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
    }

    // compiled from: ProGuard
    class SavedState extends BaseSavedState {
        public static final Creator CREATOR;
        int expandedMenuItemId;
        boolean isOverflowOpen;

        static {
            CREATOR = new Creator() {
                public SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(null);
                }

                public SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.expandedMenuItemId = parcel.readInt();
            this.isOverflowOpen = parcel.readInt() != 0;
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.expandedMenuItemId);
            parcel.writeInt(this.isOverflowOpen ? 1 : DISPLAY_DEFAULT);
        }
    }

    public ActionBarView(Context context, AttributeSet attributeSet) {
        int loadLogoFromManifest;
        super(context, attributeSet);
        this.mDisplayOptions = -1;
        this.mNavItemSelectedListener = new OnItemSelectedListener() {
            public void onItemSelected(IcsAdapterView icsAdapterView, View view, int i, long j) {
                if (ActionBarView.this.mCallback != null) {
                    ActionBarView.this.mCallback.onNavigationItemSelected(i, j);
                }
            }

            public void onNothingSelected(IcsAdapterView icsAdapterView) {
            }
        };
        this.mExpandedActionViewUpListener = new OnClickListener() {
            public void onClick(View view) {
                MenuItemImpl menuItemImpl = ActionBarView.this.mExpandedMenuPresenter.mCurrentExpandedItem;
                if (menuItemImpl != null) {
                    menuItemImpl.collapseActionView();
                }
            }
        };
        this.mUpClickListener = new OnClickListener() {
            public void onClick(View view) {
                ActionBarView.this.mWindowCallback.onMenuItemSelected(DISPLAY_DEFAULT, ActionBarView.this.mLogoNavItem);
            }
        };
        setBackgroundResource(DISPLAY_DEFAULT);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SherlockActionBar, R.attr.actionBarStyle, DISPLAY_DEFAULT);
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        PackageManager packageManager = context.getPackageManager();
        this.mNavigationMode = obtainStyledAttributes.getInt(R.styleable.SherlockTheme_actionBarSplitStyle, DISPLAY_DEFAULT);
        this.mTitle = obtainStyledAttributes.getText(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        this.mSubtitle = obtainStyledAttributes.getText(R.styleable.SherlockTheme_actionBarDivider);
        this.mLogo = obtainStyledAttributes.getDrawable(R.styleable.SherlockTheme_actionMenuTextAppearance);
        if (this.mLogo == null) {
            if (VERSION.SDK_INT >= 11) {
                if (context instanceof Activity) {
                    try {
                        this.mLogo = packageManager.getActivityLogo(((Activity) context).getComponentName());
                    } catch (NameNotFoundException e) {
                        Log.e(TAG, "Activity component name not found!", e);
                    }
                }
                if (this.mLogo == null) {
                    this.mLogo = applicationInfo.loadLogo(packageManager);
                }
            } else if (context instanceof Activity) {
                loadLogoFromManifest = ResourcesCompat.loadLogoFromManifest((Activity) context);
                if (loadLogoFromManifest != 0) {
                    this.mLogo = context.getResources().getDrawable(loadLogoFromManifest);
                }
            }
        }
        this.mIcon = obtainStyledAttributes.getDrawable(R.styleable.SherlockTheme_actionBarItemBackground);
        if (this.mIcon == null) {
            if (context instanceof Activity) {
                try {
                    this.mIcon = packageManager.getActivityIcon(((Activity) context).getComponentName());
                } catch (NameNotFoundException e2) {
                    Log.e(TAG, "Activity component name not found!", e2);
                }
            }
            if (this.mIcon == null) {
                this.mIcon = applicationInfo.loadIcon(packageManager);
            }
        }
        LayoutInflater from = LayoutInflater.from(context);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.SherlockTheme_actionModeCloseButtonStyle, R.layout.abs__action_bar_home);
        this.mHomeLayout = (HomeView) from.inflate(resourceId, this, false);
        this.mExpandedHomeLayout = (HomeView) from.inflate(resourceId, this, false);
        this.mExpandedHomeLayout.setUp(true);
        this.mExpandedHomeLayout.setOnClickListener(this.mExpandedActionViewUpListener);
        this.mExpandedHomeLayout.setContentDescription(getResources().getText(R.string.abs__action_bar_up_description));
        this.mTitleStyleRes = obtainStyledAttributes.getResourceId(DISPLAY_DEFAULT, DISPLAY_DEFAULT);
        this.mSubtitleStyleRes = obtainStyledAttributes.getResourceId(1, DISPLAY_DEFAULT);
        this.mProgressStyle = obtainStyledAttributes.getResourceId(R.styleable.SherlockTheme_actionModeBackground, DISPLAY_DEFAULT);
        this.mIndeterminateProgressStyle = obtainStyledAttributes.getResourceId(Menu.CATEGORY_SHIFT, DISPLAY_DEFAULT);
        this.mProgressBarPadding = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.SherlockTheme_actionModeCloseDrawable, DISPLAY_DEFAULT);
        this.mItemPadding = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.SherlockTheme_actionModeShareDrawable, DISPLAY_DEFAULT);
        setDisplayOptions(obtainStyledAttributes.getInt(R.styleable.SherlockTheme_actionBarWidgetTheme, DISPLAY_DEFAULT));
        loadLogoFromManifest = obtainStyledAttributes.getResourceId(R.styleable.SherlockTheme_actionModeStyle, DISPLAY_DEFAULT);
        if (loadLogoFromManifest != 0) {
            this.mCustomNavView = from.inflate(loadLogoFromManifest, this, false);
            this.mNavigationMode = 0;
            setDisplayOptions(this.mDisplayOptions | 16);
        }
        this.mContentHeight = obtainStyledAttributes.getLayoutDimension(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT, DISPLAY_DEFAULT);
        obtainStyledAttributes.recycle();
        this.mLogoNavItem = new ActionMenuItem(context, 0, 16908332, 0, 0, this.mTitle);
        this.mHomeLayout.setOnClickListener(this.mUpClickListener);
        this.mHomeLayout.setClickable(true);
        this.mHomeLayout.setFocusable(true);
    }

    private void configPresenters(MenuBuilder menuBuilder) {
        if (menuBuilder != null) {
            menuBuilder.addMenuPresenter(this.mActionMenuPresenter);
            menuBuilder.addMenuPresenter(this.mExpandedMenuPresenter);
        } else {
            this.mActionMenuPresenter.initForMenu(this.mContext, null);
            this.mExpandedMenuPresenter.initForMenu(this.mContext, null);
            this.mActionMenuPresenter.updateMenuView(true);
            this.mExpandedMenuPresenter.updateMenuView(true);
        }
    }

    private void initTitle() {
        boolean z = true;
        if (this.mTitleLayout == null) {
            int i;
            int i2;
            int i3;
            this.mTitleLayout = (LinearLayout) LayoutInflater.from(getContext()).inflate(R.layout.abs__action_bar_title_item, this, false);
            this.mTitleView = (TextView) this.mTitleLayout.findViewById(R.id.abs__action_bar_title);
            this.mSubtitleView = (TextView) this.mTitleLayout.findViewById(R.id.abs__action_bar_subtitle);
            this.mTitleUpView = this.mTitleLayout.findViewById(R.id.abs__up);
            this.mTitleLayout.setOnClickListener(this.mUpClickListener);
            if (this.mTitleStyleRes != 0) {
                this.mTitleView.setTextAppearance(this.mContext, this.mTitleStyleRes);
            }
            if (this.mTitle != null) {
                this.mTitleView.setText(this.mTitle);
            }
            if (this.mSubtitleStyleRes != 0) {
                this.mSubtitleView.setTextAppearance(this.mContext, this.mSubtitleStyleRes);
            }
            if (this.mSubtitle != null) {
                this.mSubtitleView.setText(this.mSubtitle);
                this.mSubtitleView.setVisibility(DISPLAY_DEFAULT);
            }
            i = (this.mDisplayOptions & 4) != 0;
            i2 = (this.mDisplayOptions & 2) != 0;
            View view = this.mTitleUpView;
            if (i2 != 0) {
                i3 = 8;
            } else if (i != 0) {
                i3 = 0;
            } else {
                i3 = ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT;
            }
            view.setVisibility(i3);
            LinearLayout linearLayout = this.mTitleLayout;
            if (i == 0 || i2 != 0) {
                z = false;
            }
            linearLayout.setEnabled(z);
        }
        addView(this.mTitleLayout);
        if (this.mExpandedActionView != null || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.mSubtitle))) {
            this.mTitleLayout.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
    }

    private void setTitleImpl(CharSequence charSequence) {
        int i = DISPLAY_DEFAULT;
        this.mTitle = charSequence;
        if (this.mTitleView != null) {
            int i2;
            this.mTitleView.setText(charSequence);
            i2 = (this.mExpandedActionView != null || (this.mDisplayOptions & 8) == 0 || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.mSubtitle))) ? false : 1;
            LinearLayout linearLayout = this.mTitleLayout;
            if (i2 == 0) {
                i = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
            }
            linearLayout.setVisibility(i);
        }
        if (this.mLogoNavItem != null) {
            this.mLogoNavItem.setTitle(charSequence);
        }
    }

    public void collapseActionView() {
        MenuItemImpl menuItemImpl = this.mExpandedMenuPresenter == null ? null : this.mExpandedMenuPresenter.mCurrentExpandedItem;
        if (menuItemImpl != null) {
            menuItemImpl.collapseActionView();
        }
    }

    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ActionBar.LayoutParams(19);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ActionBar.LayoutParams(getContext(), attributeSet);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams == null ? generateDefaultLayoutParams() : layoutParams;
    }

    public View getCustomNavigationView() {
        return this.mCustomNavView;
    }

    public int getDisplayOptions() {
        return this.mDisplayOptions;
    }

    public SpinnerAdapter getDropdownAdapter() {
        return this.mSpinnerAdapter;
    }

    public int getDropdownSelectedPosition() {
        return this.mSpinner.getSelectedItemPosition();
    }

    public int getNavigationMode() {
        return this.mNavigationMode;
    }

    public CharSequence getSubtitle() {
        return this.mSubtitle;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public boolean hasEmbeddedTabs() {
        return this.mIncludeTabs;
    }

    public boolean hasExpandedActionView() {
        return this.mExpandedMenuPresenter != null && this.mExpandedMenuPresenter.mCurrentExpandedItem != null;
    }

    public void initIndeterminateProgress() {
        this.mIndeterminateProgressView = new IcsProgressBar(this.mContext, null, 0, this.mIndeterminateProgressStyle);
        this.mIndeterminateProgressView.setId(R.id.abs__progress_circular);
        addView(this.mIndeterminateProgressView);
    }

    public void initProgress() {
        this.mProgressView = new IcsProgressBar(this.mContext, null, 0, this.mProgressStyle);
        this.mProgressView.setId(R.id.abs__progress_horizontal);
        this.mProgressView.setMax(10000);
        addView(this.mProgressView);
    }

    public boolean isCollapsed() {
        return this.mIsCollapsed;
    }

    public boolean isSplitActionBar() {
        return this.mSplitActionBar;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mTitleView = null;
        this.mSubtitleView = null;
        this.mTitleUpView = null;
        if (this.mTitleLayout != null && this.mTitleLayout.getParent() == this) {
            removeView(this.mTitleLayout);
        }
        this.mTitleLayout = null;
        if ((this.mDisplayOptions & 8) != 0) {
            initTitle();
        }
        if (this.mTabScrollView != null && this.mIncludeTabs) {
            ViewGroup.LayoutParams layoutParams = this.mTabScrollView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = -1;
            }
            this.mTabScrollView.setAllowCollapse(true);
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mActionMenuPresenter != null) {
            this.mActionMenuPresenter.hideOverflowMenu();
            this.mActionMenuPresenter.hideSubMenus();
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        addView(this.mHomeLayout);
        if (this.mCustomNavView != null && (this.mDisplayOptions & 16) != 0) {
            ViewParent parent = this.mCustomNavView.getParent();
            if (parent != this) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(this.mCustomNavView);
                }
                addView(this.mCustomNavView);
            }
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = i4 - i2 - getPaddingTop() - getPaddingBottom();
        if (paddingTop2 > 0) {
            View view;
            int leftOffset;
            int positionChild;
            View view2;
            ViewGroup.LayoutParams layoutParams;
            ActionBar.LayoutParams layoutParams2;
            int measuredWidth;
            int i5;
            int i6;
            view = this.mExpandedActionView != null ? this.mExpandedHomeLayout : this.mHomeLayout;
            if (view.getVisibility() != 8) {
                leftOffset = view.getLeftOffset();
                positionChild = positionChild(view, paddingLeft + leftOffset, paddingTop, paddingTop2) + leftOffset + paddingLeft;
            } else {
                positionChild = paddingLeft;
            }
            if (this.mExpandedActionView == null) {
                paddingLeft = (this.mTitleLayout == null || this.mTitleLayout.getVisibility() == 8 || (this.mDisplayOptions & 8) == 0) ? DISPLAY_DEFAULT : 1;
                if (paddingLeft != 0) {
                    positionChild += positionChild(this.mTitleLayout, positionChild, paddingTop, paddingTop2);
                }
                switch (this.mNavigationMode) {
                    case DISPLAY_DEFAULT:
                        paddingLeft = positionChild;
                        positionChild = i3 - i - getPaddingRight();
                        if (this.mMenuView != null && this.mMenuView.getParent() == this) {
                            positionChildInverse(this.mMenuView, positionChild, paddingTop, paddingTop2);
                            positionChild -= this.mMenuView.getMeasuredWidth();
                        }
                        if (this.mIndeterminateProgressView == null || this.mIndeterminateProgressView.getVisibility() == 8) {
                            paddingTop = positionChild;
                        } else {
                            positionChildInverse(this.mIndeterminateProgressView, positionChild, paddingTop, paddingTop2);
                            paddingTop = positionChild - this.mIndeterminateProgressView.getMeasuredWidth();
                        }
                        if (this.mExpandedActionView == null) {
                        } else if ((this.mDisplayOptions & 16) == 0 || this.mCustomNavView == null) {
                        } else {
                            view2 = this.mCustomNavView;
                        }
                        if (view2 != null) {
                            layoutParams = view2.getLayoutParams();
                            layoutParams2 = layoutParams instanceof ActionBar.LayoutParams ? null : (ActionBar.LayoutParams) layoutParams;
                            positionChild = layoutParams2 == null ? layoutParams2.gravity : DEFAULT_CUSTOM_GRAVITY;
                            measuredWidth = view2.getMeasuredWidth();
                            if (layoutParams2 == null) {
                                leftOffset = paddingLeft + layoutParams2.leftMargin;
                                paddingTop2 = paddingTop - layoutParams2.rightMargin;
                                paddingTop = layoutParams2.topMargin;
                                paddingLeft = layoutParams2.bottomMargin;
                                i5 = paddingTop;
                                i6 = paddingTop2;
                                paddingTop2 = leftOffset;
                                leftOffset = paddingLeft;
                            } else {
                                i5 = 0;
                                i6 = paddingTop;
                                leftOffset = 0;
                                paddingTop2 = paddingLeft;
                            }
                            paddingLeft = positionChild & 7;
                            if (paddingLeft != 1) {
                                paddingTop = ((getRight() - getLeft()) - measuredWidth) / 2;
                                if (paddingTop >= paddingTop2) {
                                    paddingTop = 3;
                                } else {
                                    if (paddingTop + measuredWidth > i6) {
                                        paddingTop = 5;
                                    }
                                    paddingTop = paddingLeft;
                                }
                            } else {
                                if (positionChild == -1) {
                                    paddingTop = 3;
                                }
                                paddingTop = paddingLeft;
                            }
                            switch (z) {
                                case IcsToast.LENGTH_LONG:
                                    paddingTop = ((getRight() - getLeft()) - measuredWidth) / 2;
                                    break;
                                case R.styleable.SherlockTheme_actionBarTabTextStyle:
                                    paddingTop = paddingTop2;
                                    break;
                                case R.styleable.SherlockTheme_actionBarStyle:
                                    paddingTop = i6 - measuredWidth;
                                    break;
                                default:
                                    paddingTop = 0;
                                    break;
                            }
                            paddingLeft = positionChild & 112;
                            if (positionChild == -1) {
                                paddingLeft = 16;
                            }
                            positionChild = DISPLAY_DEFAULT;
                            switch (paddingLeft) {
                                case Menu.CATEGORY_SHIFT:
                                    positionChild = ((((getBottom() - getTop()) - getPaddingBottom()) - getPaddingTop()) - view2.getMeasuredHeight()) / 2;
                                    break;
                                case R.styleable.SherlockTheme_textAppearanceListItemSmall:
                                    positionChild = getPaddingTop() + i5;
                                    break;
                                case 80:
                                    positionChild = getHeight() - getPaddingBottom() - view2.getMeasuredHeight() - leftOffset;
                                    break;
                            }
                            paddingLeft = view2.getMeasuredWidth();
                            view2.layout(paddingTop, positionChild, paddingTop + paddingLeft, view2.getMeasuredHeight() + positionChild);
                            positionChild = paddingTop2 + paddingLeft;
                        }
                        if (this.mProgressView == null) {
                            this.mProgressView.bringToFront();
                            positionChild = this.mProgressView.getMeasuredHeight() / 2;
                            this.mProgressView.layout(this.mProgressBarPadding, -positionChild, this.mProgressBarPadding + this.mProgressView.getMeasuredWidth(), positionChild);
                        }
                    case IcsToast.LENGTH_LONG:
                        if (this.mListNavLayout != null) {
                            if (paddingLeft != 0) {
                                positionChild += this.mItemPadding;
                            }
                            paddingLeft = positionChild + positionChild(this.mListNavLayout, positionChild, paddingTop, paddingTop2) + this.mItemPadding;
                            positionChild = i3 - i - getPaddingRight();
                            positionChildInverse(this.mMenuView, positionChild, paddingTop, paddingTop2);
                            positionChild -= this.mMenuView.getMeasuredWidth();
                            paddingTop = positionChild;
                            view2 = this.mExpandedActionView == null ? null : this.mExpandedActionView;
                            if (view2 != null) {
                                layoutParams = view2.getLayoutParams();
                                if (layoutParams instanceof ActionBar.LayoutParams) {
                                }
                                if (layoutParams2 == null) {
                                }
                                measuredWidth = view2.getMeasuredWidth();
                                if (layoutParams2 == null) {
                                    i5 = 0;
                                    i6 = paddingTop;
                                    leftOffset = 0;
                                    paddingTop2 = paddingLeft;
                                } else {
                                    leftOffset = paddingLeft + layoutParams2.leftMargin;
                                    paddingTop2 = paddingTop - layoutParams2.rightMargin;
                                    paddingTop = layoutParams2.topMargin;
                                    paddingLeft = layoutParams2.bottomMargin;
                                    i5 = paddingTop;
                                    i6 = paddingTop2;
                                    paddingTop2 = leftOffset;
                                    leftOffset = paddingLeft;
                                }
                                paddingLeft = positionChild & 7;
                                if (paddingLeft != 1) {
                                    if (positionChild == -1) {
                                        paddingTop = 3;
                                    }
                                    paddingTop = paddingLeft;
                                } else {
                                    paddingTop = ((getRight() - getLeft()) - measuredWidth) / 2;
                                    if (paddingTop >= paddingTop2) {
                                        if (paddingTop + measuredWidth > i6) {
                                            paddingTop = 5;
                                        }
                                        paddingTop = paddingLeft;
                                    } else {
                                        paddingTop = 3;
                                    }
                                }
                                switch (z) {
                                    case IcsToast.LENGTH_LONG:
                                        paddingTop = ((getRight() - getLeft()) - measuredWidth) / 2;
                                        break;
                                    case R.styleable.SherlockTheme_actionBarTabTextStyle:
                                        paddingTop = paddingTop2;
                                        break;
                                    case R.styleable.SherlockTheme_actionBarStyle:
                                        paddingTop = i6 - measuredWidth;
                                        break;
                                    default:
                                        paddingTop = 0;
                                        break;
                                }
                                paddingLeft = positionChild & 112;
                                if (positionChild == -1) {
                                    paddingLeft = 16;
                                }
                                positionChild = DISPLAY_DEFAULT;
                                switch (paddingLeft) {
                                    case Menu.CATEGORY_SHIFT:
                                        positionChild = ((((getBottom() - getTop()) - getPaddingBottom()) - getPaddingTop()) - view2.getMeasuredHeight()) / 2;
                                        break;
                                    case R.styleable.SherlockTheme_textAppearanceListItemSmall:
                                        positionChild = getPaddingTop() + i5;
                                        break;
                                    case 80:
                                        positionChild = getHeight() - getPaddingBottom() - view2.getMeasuredHeight() - leftOffset;
                                        break;
                                }
                                paddingLeft = view2.getMeasuredWidth();
                                view2.layout(paddingTop, positionChild, paddingTop + paddingLeft, view2.getMeasuredHeight() + positionChild);
                                positionChild = paddingTop2 + paddingLeft;
                            }
                            if (this.mProgressView == null) {
                                this.mProgressView.bringToFront();
                                positionChild = this.mProgressView.getMeasuredHeight() / 2;
                                this.mProgressView.layout(this.mProgressBarPadding, -positionChild, this.mProgressBarPadding + this.mProgressView.getMeasuredWidth(), positionChild);
                            }
                        }
                    case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                        if (this.mTabScrollView != null) {
                            if (paddingLeft != 0) {
                                positionChild += this.mItemPadding;
                            }
                            paddingLeft = positionChild + positionChild(this.mTabScrollView, positionChild, paddingTop, paddingTop2) + this.mItemPadding;
                            positionChild = i3 - i - getPaddingRight();
                            positionChildInverse(this.mMenuView, positionChild, paddingTop, paddingTop2);
                            positionChild -= this.mMenuView.getMeasuredWidth();
                            paddingTop = positionChild;
                            if (this.mExpandedActionView == null) {
                            }
                            if (view2 != null) {
                                layoutParams = view2.getLayoutParams();
                                if (layoutParams instanceof ActionBar.LayoutParams) {
                                }
                                if (layoutParams2 == null) {
                                }
                                measuredWidth = view2.getMeasuredWidth();
                                if (layoutParams2 == null) {
                                    leftOffset = paddingLeft + layoutParams2.leftMargin;
                                    paddingTop2 = paddingTop - layoutParams2.rightMargin;
                                    paddingTop = layoutParams2.topMargin;
                                    paddingLeft = layoutParams2.bottomMargin;
                                    i5 = paddingTop;
                                    i6 = paddingTop2;
                                    paddingTop2 = leftOffset;
                                    leftOffset = paddingLeft;
                                } else {
                                    i5 = 0;
                                    i6 = paddingTop;
                                    leftOffset = 0;
                                    paddingTop2 = paddingLeft;
                                }
                                paddingLeft = positionChild & 7;
                                if (paddingLeft != 1) {
                                    paddingTop = ((getRight() - getLeft()) - measuredWidth) / 2;
                                    if (paddingTop >= paddingTop2) {
                                        paddingTop = 3;
                                    } else {
                                        if (paddingTop + measuredWidth > i6) {
                                            paddingTop = 5;
                                        }
                                        paddingTop = paddingLeft;
                                    }
                                } else {
                                    if (positionChild == -1) {
                                        paddingTop = 3;
                                    }
                                    paddingTop = paddingLeft;
                                }
                                switch (z) {
                                    case IcsToast.LENGTH_LONG:
                                        paddingTop = ((getRight() - getLeft()) - measuredWidth) / 2;
                                        break;
                                    case R.styleable.SherlockTheme_actionBarTabTextStyle:
                                        paddingTop = paddingTop2;
                                        break;
                                    case R.styleable.SherlockTheme_actionBarStyle:
                                        paddingTop = i6 - measuredWidth;
                                        break;
                                    default:
                                        paddingTop = 0;
                                        break;
                                }
                                paddingLeft = positionChild & 112;
                                if (positionChild == -1) {
                                    paddingLeft = 16;
                                }
                                positionChild = DISPLAY_DEFAULT;
                                switch (paddingLeft) {
                                    case Menu.CATEGORY_SHIFT:
                                        positionChild = ((((getBottom() - getTop()) - getPaddingBottom()) - getPaddingTop()) - view2.getMeasuredHeight()) / 2;
                                        break;
                                    case R.styleable.SherlockTheme_textAppearanceListItemSmall:
                                        positionChild = getPaddingTop() + i5;
                                        break;
                                    case 80:
                                        positionChild = getHeight() - getPaddingBottom() - view2.getMeasuredHeight() - leftOffset;
                                        break;
                                }
                                paddingLeft = view2.getMeasuredWidth();
                                view2.layout(paddingTop, positionChild, paddingTop + paddingLeft, view2.getMeasuredHeight() + positionChild);
                                positionChild = paddingTop2 + paddingLeft;
                            }
                            if (this.mProgressView == null) {
                                this.mProgressView.bringToFront();
                                positionChild = this.mProgressView.getMeasuredHeight() / 2;
                                this.mProgressView.layout(this.mProgressBarPadding, -positionChild, this.mProgressBarPadding + this.mProgressView.getMeasuredWidth(), positionChild);
                            }
                        }
                }
            }
            paddingLeft = positionChild;
            positionChild = i3 - i - getPaddingRight();
            positionChildInverse(this.mMenuView, positionChild, paddingTop, paddingTop2);
            positionChild -= this.mMenuView.getMeasuredWidth();
            paddingTop = positionChild;
            if (this.mExpandedActionView == null) {
            }
            if (view2 != null) {
                layoutParams = view2.getLayoutParams();
                if (layoutParams instanceof ActionBar.LayoutParams) {
                }
                if (layoutParams2 == null) {
                }
                measuredWidth = view2.getMeasuredWidth();
                if (layoutParams2 == null) {
                    i5 = 0;
                    i6 = paddingTop;
                    leftOffset = 0;
                    paddingTop2 = paddingLeft;
                } else {
                    leftOffset = paddingLeft + layoutParams2.leftMargin;
                    paddingTop2 = paddingTop - layoutParams2.rightMargin;
                    paddingTop = layoutParams2.topMargin;
                    paddingLeft = layoutParams2.bottomMargin;
                    i5 = paddingTop;
                    i6 = paddingTop2;
                    paddingTop2 = leftOffset;
                    leftOffset = paddingLeft;
                }
                paddingLeft = positionChild & 7;
                if (paddingLeft != 1) {
                    if (positionChild == -1) {
                        paddingTop = 3;
                    }
                    paddingTop = paddingLeft;
                } else {
                    paddingTop = ((getRight() - getLeft()) - measuredWidth) / 2;
                    if (paddingTop >= paddingTop2) {
                        if (paddingTop + measuredWidth > i6) {
                            paddingTop = 5;
                        }
                        paddingTop = paddingLeft;
                    } else {
                        paddingTop = 3;
                    }
                }
                switch (z) {
                    case IcsToast.LENGTH_LONG:
                        paddingTop = ((getRight() - getLeft()) - measuredWidth) / 2;
                        break;
                    case R.styleable.SherlockTheme_actionBarTabTextStyle:
                        paddingTop = paddingTop2;
                        break;
                    case R.styleable.SherlockTheme_actionBarStyle:
                        paddingTop = i6 - measuredWidth;
                        break;
                    default:
                        paddingTop = 0;
                        break;
                }
                paddingLeft = positionChild & 112;
                if (positionChild == -1) {
                    paddingLeft = 16;
                }
                positionChild = DISPLAY_DEFAULT;
                switch (paddingLeft) {
                    case Menu.CATEGORY_SHIFT:
                        positionChild = ((((getBottom() - getTop()) - getPaddingBottom()) - getPaddingTop()) - view2.getMeasuredHeight()) / 2;
                        break;
                    case R.styleable.SherlockTheme_textAppearanceListItemSmall:
                        positionChild = getPaddingTop() + i5;
                        break;
                    case 80:
                        positionChild = getHeight() - getPaddingBottom() - view2.getMeasuredHeight() - leftOffset;
                        break;
                }
                paddingLeft = view2.getMeasuredWidth();
                view2.layout(paddingTop, positionChild, paddingTop + paddingLeft, view2.getMeasuredHeight() + positionChild);
                positionChild = paddingTop2 + paddingLeft;
            }
            if (this.mProgressView == null) {
                this.mProgressView.bringToFront();
                positionChild = this.mProgressView.getMeasuredHeight() / 2;
                this.mProgressView.layout(this.mProgressBarPadding, -positionChild, this.mProgressBarPadding + this.mProgressView.getMeasuredWidth(), positionChild);
            }
        }
    }

    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int childCount = getChildCount();
        if (this.mIsCollapsable) {
            i3 = 0;
            i4 = 0;
            while (i4 < childCount) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() != 8) {
                    if (!(childAt == this.mMenuView && this.mMenuView.getChildCount() == 0)) {
                        i3++;
                    }
                }
                i4++;
            }
            if (i3 == 0) {
                setMeasuredDimension(DISPLAY_DEFAULT, DISPLAY_DEFAULT);
                this.mIsCollapsed = true;
                return;
            }
        }
        this.mIsCollapsed = false;
        if (MeasureSpec.getMode(i) != 1073741824) {
            throw new IllegalStateException(new StringBuilder(String.valueOf(getClass().getSimpleName())).append(" can only be used ").append("with android:layout_width=\"match_parent\" (or fill_parent)").toString());
        } else if (MeasureSpec.getMode(i2) != Integer.MIN_VALUE) {
            throw new IllegalStateException(new StringBuilder(String.valueOf(getClass().getSimpleName())).append(" can only be used ").append("with android:layout_height=\"wrap_content\"").toString());
        } else {
            int size;
            HomeView homeView;
            ViewGroup.LayoutParams layoutParams;
            int i5;
            View view;
            ActionBar.LayoutParams layoutParams2;
            int i6;
            int i7;
            int max;
            int size2 = MeasureSpec.getSize(i);
            size = this.mContentHeight > 0 ? this.mContentHeight : MeasureSpec.getSize(i2);
            int paddingTop = getPaddingTop() + getPaddingBottom();
            i3 = getPaddingLeft();
            i4 = getPaddingRight();
            int i8 = size - paddingTop;
            int makeMeasureSpec = MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE);
            int i9 = size2 - i3 - i4;
            int i10 = i9 / 2;
            homeView = this.mExpandedActionView != null ? this.mExpandedHomeLayout : this.mHomeLayout;
            if (homeView.getVisibility() != 8) {
                layoutParams = homeView.getLayoutParams();
                homeView.measure(layoutParams.width < 0 ? MeasureSpec.makeMeasureSpec(i9, Integer.MIN_VALUE) : MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824), MeasureSpec.makeMeasureSpec(i8, 1073741824));
                i3 = homeView.getLeftOffset() + homeView.getMeasuredWidth();
                i4 = Math.max(DISPLAY_DEFAULT, i9 - i3);
                i3 = Math.max(DISPLAY_DEFAULT, i4 - i3);
            } else {
                i3 = i10;
                i4 = i9;
            }
            if (this.mMenuView != null && this.mMenuView.getParent() == this) {
                i4 = measureChildView(this.mMenuView, i4, makeMeasureSpec, DISPLAY_DEFAULT);
                i10 = Math.max(DISPLAY_DEFAULT, i10 - this.mMenuView.getMeasuredWidth());
            }
            if (!(this.mIndeterminateProgressView == null || this.mIndeterminateProgressView.getVisibility() == 8)) {
                i4 = measureChildView(this.mIndeterminateProgressView, i4, makeMeasureSpec, DISPLAY_DEFAULT);
                i10 = Math.max(DISPLAY_DEFAULT, i10 - this.mIndeterminateProgressView.getMeasuredWidth());
            }
            i9 = (this.mTitleLayout == null || this.mTitleLayout.getVisibility() == 8 || (this.mDisplayOptions & 8) == 0) ? DISPLAY_DEFAULT : 1;
            if (this.mExpandedActionView == null) {
                switch (this.mNavigationMode) {
                    case IcsToast.LENGTH_LONG:
                        if (this.mListNavLayout != null) {
                            makeMeasureSpec = i9 != 0 ? this.mItemPadding * 2 : this.mItemPadding;
                            i4 = Math.max(DISPLAY_DEFAULT, i4 - makeMeasureSpec);
                            i3 = Math.max(DISPLAY_DEFAULT, i3 - makeMeasureSpec);
                            this.mListNavLayout.measure(MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE), MeasureSpec.makeMeasureSpec(i8, 1073741824));
                            makeMeasureSpec = this.mListNavLayout.getMeasuredWidth();
                            i4 = Math.max(DISPLAY_DEFAULT, i4 - makeMeasureSpec);
                            makeMeasureSpec = Math.max(DISPLAY_DEFAULT, i3 - makeMeasureSpec);
                            i5 = i4;
                            if (this.mExpandedActionView != null) {
                            } else if ((this.mDisplayOptions & 16) == 0 || this.mCustomNavView == null) {
                            } else {
                                view = this.mCustomNavView;
                            }
                            if (view != null) {
                                layoutParams = generateLayoutParams(view.getLayoutParams());
                                layoutParams2 = layoutParams instanceof ActionBar.LayoutParams ? (ActionBar.LayoutParams) layoutParams : null;
                                i6 = DISPLAY_DEFAULT;
                                i3 = DISPLAY_DEFAULT;
                                if (layoutParams2 != null) {
                                    i6 = layoutParams2.rightMargin + layoutParams2.leftMargin;
                                    i3 = layoutParams2.topMargin + layoutParams2.bottomMargin;
                                }
                                if (this.mContentHeight > 0) {
                                    i7 = Integer.MIN_VALUE;
                                } else if (layoutParams.height != -2) {
                                    i7 = 1073741824;
                                } else {
                                    i7 = Integer.MIN_VALUE;
                                }
                                if (layoutParams.height >= 0) {
                                    i8 = Math.min(layoutParams.height, i8);
                                }
                                max = Math.max(0, i8 - i3);
                                i3 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
                                i4 = (((layoutParams2 != null ? layoutParams2.gravity : DEFAULT_CUSTOM_GRAVITY) & 7) == 1 && layoutParams.width == -1) ? Math.min(makeMeasureSpec, i10) * 2 : Math.max(0, (layoutParams.width >= 0 ? Math.min(layoutParams.width, i5) : i5) - i6);
                                view.measure(MeasureSpec.makeMeasureSpec(i4, i3), MeasureSpec.makeMeasureSpec(max, i7));
                                i5 -= view.getMeasuredWidth() + i6;
                            }
                            if (this.mExpandedActionView == null && i9 != 0) {
                                measureChildView(this.mTitleLayout, i5, MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824), DISPLAY_DEFAULT);
                                Math.max(DISPLAY_DEFAULT, makeMeasureSpec - this.mTitleLayout.getMeasuredWidth());
                            }
                            if (this.mContentHeight <= 0) {
                                i4 = DISPLAY_DEFAULT;
                                size = 0;
                                while (size < childCount) {
                                    i3 = getChildAt(size).getMeasuredHeight() + paddingTop;
                                    if (i3 <= i4) {
                                        i3 = i4;
                                    }
                                    size++;
                                    i4 = i3;
                                }
                                setMeasuredDimension(size2, i4);
                            } else {
                                setMeasuredDimension(size2, size);
                            }
                            if (this.mContextView != null) {
                                this.mContextView.setContentHeight(getMeasuredHeight());
                            }
                            if (this.mProgressView != null && this.mProgressView.getVisibility() != 8) {
                                this.mProgressView.measure(MeasureSpec.makeMeasureSpec(size2 - this.mProgressBarPadding * 2, 1073741824), MeasureSpec.makeMeasureSpec(getMeasuredHeight(), Integer.MIN_VALUE));
                                return;
                            } else {
                                return;
                            }
                        }
                    case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                        if (this.mTabScrollView != null) {
                            makeMeasureSpec = i9 != 0 ? this.mItemPadding * 2 : this.mItemPadding;
                            i4 = Math.max(DISPLAY_DEFAULT, i4 - makeMeasureSpec);
                            i3 = Math.max(DISPLAY_DEFAULT, i3 - makeMeasureSpec);
                            this.mTabScrollView.measure(MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE), MeasureSpec.makeMeasureSpec(i8, 1073741824));
                            makeMeasureSpec = this.mTabScrollView.getMeasuredWidth();
                            i4 = Math.max(DISPLAY_DEFAULT, i4 - makeMeasureSpec);
                            makeMeasureSpec = Math.max(DISPLAY_DEFAULT, i3 - makeMeasureSpec);
                            i5 = i4;
                            view = this.mExpandedActionView != null ? null : this.mExpandedActionView;
                            if (view != null) {
                                layoutParams = generateLayoutParams(view.getLayoutParams());
                                if (layoutParams instanceof ActionBar.LayoutParams) {
                                }
                                i6 = DISPLAY_DEFAULT;
                                i3 = DISPLAY_DEFAULT;
                                if (layoutParams2 != null) {
                                    i6 = layoutParams2.rightMargin + layoutParams2.leftMargin;
                                    i3 = layoutParams2.topMargin + layoutParams2.bottomMargin;
                                }
                                if (this.mContentHeight > 0) {
                                    i7 = Integer.MIN_VALUE;
                                } else if (layoutParams.height != -2) {
                                    i7 = Integer.MIN_VALUE;
                                } else {
                                    i7 = 1073741824;
                                }
                                if (layoutParams.height >= 0) {
                                    i8 = Math.min(layoutParams.height, i8);
                                }
                                max = Math.max(0, i8 - i3);
                                if (layoutParams.width != -2) {
                                }
                                if (layoutParams.width >= 0) {
                                }
                                if (layoutParams2 != null) {
                                }
                                view.measure(MeasureSpec.makeMeasureSpec(i4, i3), MeasureSpec.makeMeasureSpec(max, i7));
                                i5 -= view.getMeasuredWidth() + i6;
                            }
                            measureChildView(this.mTitleLayout, i5, MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824), DISPLAY_DEFAULT);
                            Math.max(DISPLAY_DEFAULT, makeMeasureSpec - this.mTitleLayout.getMeasuredWidth());
                            if (this.mContentHeight <= 0) {
                                setMeasuredDimension(size2, size);
                            } else {
                                i4 = DISPLAY_DEFAULT;
                                size = 0;
                                while (size < childCount) {
                                    i3 = getChildAt(size).getMeasuredHeight() + paddingTop;
                                    if (i3 <= i4) {
                                        i3 = i4;
                                    }
                                    size++;
                                    i4 = i3;
                                }
                                setMeasuredDimension(size2, i4);
                            }
                            if (this.mContextView != null) {
                                this.mContextView.setContentHeight(getMeasuredHeight());
                            }
                        }
                }
            }
            makeMeasureSpec = i3;
            i5 = i4;
            if (this.mExpandedActionView != null) {
            }
            if (view != null) {
                layoutParams = generateLayoutParams(view.getLayoutParams());
                if (layoutParams instanceof ActionBar.LayoutParams) {
                }
                i6 = DISPLAY_DEFAULT;
                i3 = DISPLAY_DEFAULT;
                if (layoutParams2 != null) {
                    i6 = layoutParams2.rightMargin + layoutParams2.leftMargin;
                    i3 = layoutParams2.topMargin + layoutParams2.bottomMargin;
                }
                if (this.mContentHeight > 0) {
                    i7 = Integer.MIN_VALUE;
                } else if (layoutParams.height != -2) {
                    i7 = 1073741824;
                } else {
                    i7 = Integer.MIN_VALUE;
                }
                if (layoutParams.height >= 0) {
                    i8 = Math.min(layoutParams.height, i8);
                }
                max = Math.max(0, i8 - i3);
                if (layoutParams.width != -2) {
                }
                if (layoutParams.width >= 0) {
                }
                if (layoutParams2 != null) {
                }
                view.measure(MeasureSpec.makeMeasureSpec(i4, i3), MeasureSpec.makeMeasureSpec(max, i7));
                i5 -= view.getMeasuredWidth() + i6;
            }
            measureChildView(this.mTitleLayout, i5, MeasureSpec.makeMeasureSpec(this.mContentHeight, 1073741824), DISPLAY_DEFAULT);
            Math.max(DISPLAY_DEFAULT, makeMeasureSpec - this.mTitleLayout.getMeasuredWidth());
            if (this.mContentHeight <= 0) {
                i4 = DISPLAY_DEFAULT;
                size = 0;
                while (size < childCount) {
                    i3 = getChildAt(size).getMeasuredHeight() + paddingTop;
                    if (i3 <= i4) {
                        i3 = i4;
                    }
                    size++;
                    i4 = i3;
                }
                setMeasuredDimension(size2, i4);
            } else {
                setMeasuredDimension(size2, size);
            }
            if (this.mContextView != null) {
                this.mContextView.setContentHeight(getMeasuredHeight());
            }
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (!(savedState.expandedMenuItemId == 0 || this.mExpandedMenuPresenter == null || this.mOptionsMenu == null)) {
            MenuItem findItem = this.mOptionsMenu.findItem(savedState.expandedMenuItemId);
            if (findItem != null) {
                findItem.expandActionView();
            }
        }
        if (savedState.isOverflowOpen) {
            postShowOverflowMenu();
        }
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState(super.onSaveInstanceState());
        if (!(this.mExpandedMenuPresenter == null || this.mExpandedMenuPresenter.mCurrentExpandedItem == null)) {
            savedState.expandedMenuItemId = this.mExpandedMenuPresenter.mCurrentExpandedItem.getItemId();
        }
        savedState.isOverflowOpen = isOverflowMenuShowing();
        return savedState;
    }

    public void setCallback(OnNavigationListener onNavigationListener) {
        this.mCallback = onNavigationListener;
    }

    public void setCollapsable(boolean z) {
        this.mIsCollapsable = z;
    }

    public void setContextView(ActionBarContextView actionBarContextView) {
        this.mContextView = actionBarContextView;
    }

    public void setCustomNavigationView(View view) {
        int i = (this.mDisplayOptions & 16) != 0 ? 1 : DISPLAY_DEFAULT;
        if (!(this.mCustomNavView == null || i == 0)) {
            removeView(this.mCustomNavView);
        }
        this.mCustomNavView = view;
        if (this.mCustomNavView != null && i != 0) {
            addView(this.mCustomNavView);
        }
    }

    public void setDisplayOptions(int i) {
        int i2 = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        int i3 = -1;
        boolean z = true;
        if (this.mDisplayOptions != -1) {
            i3 = this.mDisplayOptions ^ i;
        }
        this.mDisplayOptions = i;
        if ((i3 & 31) != 0) {
            int i4;
            int i5;
            i4 = (i & 2) != 0;
            i5 = (i4 == 0 || this.mExpandedActionView != null) ? 8 : 0;
            this.mHomeLayout.setVisibility(i5);
            if ((i3 & 4) != 0) {
                boolean z2;
                z2 = (i & 4) != 0;
                this.mHomeLayout.setUp(z2);
                if (z2) {
                    setHomeButtonEnabled(true);
                }
            }
            if ((i3 & 1) != 0) {
                i5 = this.mLogo != null && (i & 1) != 0;
                this.mHomeLayout.setIcon(i5 != 0 ? this.mLogo : this.mIcon);
            }
            if ((i3 & 8) != 0) {
                if ((i & 8) != 0) {
                    initTitle();
                } else {
                    removeView(this.mTitleLayout);
                }
            }
            if (!(this.mTitleLayout == null || (i3 & 6) == 0)) {
                i5 = (this.mDisplayOptions & 4) != 0;
                View view = this.mTitleUpView;
                if (i4 == 0) {
                    i2 = i5 != 0 ? 0 : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT;
                }
                view.setVisibility(i2);
                LinearLayout linearLayout = this.mTitleLayout;
                if (i4 != 0 || i5 == 0) {
                    z = false;
                }
                linearLayout.setEnabled(z);
            }
            if (!((i3 & 16) == 0 || this.mCustomNavView == null)) {
                if ((i & 16) != 0) {
                    addView(this.mCustomNavView);
                } else {
                    removeView(this.mCustomNavView);
                }
            }
            requestLayout();
        } else {
            invalidate();
        }
        if (!this.mHomeLayout.isEnabled()) {
            this.mHomeLayout.setContentDescription(null);
        } else if ((i & 4) != 0) {
            this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(R.string.abs__action_bar_up_description));
        } else {
            this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(R.string.abs__action_bar_home_description));
        }
    }

    public void setDropdownAdapter(SpinnerAdapter spinnerAdapter) {
        this.mSpinnerAdapter = spinnerAdapter;
        if (this.mSpinner != null) {
            this.mSpinner.setAdapter(spinnerAdapter);
        }
    }

    public void setDropdownSelectedPosition(int i) {
        this.mSpinner.setSelection(i);
    }

    public void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView) {
        if (this.mTabScrollView != null) {
            removeView(this.mTabScrollView);
        }
        this.mTabScrollView = scrollingTabContainerView;
        this.mIncludeTabs = scrollingTabContainerView != null;
        if (this.mIncludeTabs && this.mNavigationMode == 2) {
            addView(this.mTabScrollView);
            ViewGroup.LayoutParams layoutParams = this.mTabScrollView.getLayoutParams();
            layoutParams.width = -2;
            layoutParams.height = -1;
            scrollingTabContainerView.setAllowCollapse(true);
        }
    }

    public void setHomeButtonEnabled(boolean z) {
        this.mHomeLayout.setEnabled(z);
        this.mHomeLayout.setFocusable(z);
        if (!z) {
            this.mHomeLayout.setContentDescription(null);
        } else if ((this.mDisplayOptions & 4) != 0) {
            this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(R.string.abs__action_bar_up_description));
        } else {
            this.mHomeLayout.setContentDescription(this.mContext.getResources().getText(R.string.abs__action_bar_home_description));
        }
    }

    public void setIcon(int i) {
        setIcon(this.mContext.getResources().getDrawable(i));
    }

    public void setIcon(Drawable drawable) {
        this.mIcon = drawable;
        if (drawable == null) {
            return;
        }
        if ((this.mDisplayOptions & 1) == 0 || this.mLogo == null) {
            this.mHomeLayout.setIcon(drawable);
        }
    }

    public void setLogo(int i) {
        setLogo(this.mContext.getResources().getDrawable(i));
    }

    public void setLogo(Drawable drawable) {
        this.mLogo = drawable;
        if (drawable != null && (this.mDisplayOptions & 1) != 0) {
            this.mHomeLayout.setIcon(drawable);
        }
    }

    public void setMenu(Menu menu, MenuPresenter.Callback callback) {
        if (menu != this.mOptionsMenu) {
            ActionMenuView actionMenuView;
            if (this.mOptionsMenu != null) {
                this.mOptionsMenu.removeMenuPresenter(this.mActionMenuPresenter);
                this.mOptionsMenu.removeMenuPresenter(this.mExpandedMenuPresenter);
            }
            MenuBuilder menuBuilder = (MenuBuilder) menu;
            this.mOptionsMenu = menuBuilder;
            if (this.mMenuView != null) {
                ViewGroup viewGroup = (ViewGroup) this.mMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mMenuView);
                }
            }
            if (this.mActionMenuPresenter == null) {
                this.mActionMenuPresenter = new ActionMenuPresenter(this.mContext);
                this.mActionMenuPresenter.setCallback(callback);
                this.mActionMenuPresenter.setId(R.id.abs__action_menu_presenter);
                this.mExpandedMenuPresenter = new ExpandedActionViewMenuPresenter(null);
            }
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
            ViewGroup viewGroup2;
            if (this.mSplitActionBar) {
                this.mActionMenuPresenter.setExpandedActionViewsExclusive(false);
                this.mActionMenuPresenter.setWidthLimit(getContext().getResources().getDisplayMetrics().widthPixels, true);
                this.mActionMenuPresenter.setItemLimit(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                layoutParams.width = -1;
                configPresenters(menuBuilder);
                actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                if (this.mSplitView != null) {
                    viewGroup2 = (ViewGroup) actionMenuView.getParent();
                    if (!(viewGroup2 == null || viewGroup2 == this.mSplitView)) {
                        viewGroup2.removeView(actionMenuView);
                    }
                    actionMenuView.setVisibility(getAnimatedVisibility());
                    this.mSplitView.addView(actionMenuView, layoutParams);
                } else {
                    actionMenuView.setLayoutParams(layoutParams);
                }
            } else {
                this.mActionMenuPresenter.setExpandedActionViewsExclusive(ResourcesCompat.getResources_getBoolean(getContext(), R.bool.abs__action_bar_expanded_action_views_exclusive));
                configPresenters(menuBuilder);
                actionMenuView = (ActionMenuView) this.mActionMenuPresenter.getMenuView(this);
                viewGroup2 = (ViewGroup) actionMenuView.getParent();
                if (!(viewGroup2 == null || viewGroup2 == this)) {
                    viewGroup2.removeView(actionMenuView);
                }
                addView(actionMenuView, layoutParams);
            }
            this.mMenuView = actionMenuView;
        }
    }

    public void setNavigationMode(int i) {
        int i2 = this.mNavigationMode;
        if (i != i2) {
            switch (i2) {
                case IcsToast.LENGTH_LONG:
                    if (this.mListNavLayout != null) {
                        removeView(this.mListNavLayout);
                    }
                    break;
                case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                    if (this.mTabScrollView != null && this.mIncludeTabs) {
                        removeView(this.mTabScrollView);
                    }
                    break;
            }
            switch (i) {
                case IcsToast.LENGTH_LONG:
                    if (this.mSpinner == null) {
                        this.mSpinner = new IcsSpinner(this.mContext, null, R.attr.actionDropDownStyle);
                        this.mListNavLayout = (IcsLinearLayout) LayoutInflater.from(this.mContext).inflate(R.layout.abs__action_bar_tab_bar_view, null);
                        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
                        layoutParams.gravity = 17;
                        this.mListNavLayout.addView(this.mSpinner, layoutParams);
                    }
                    if (this.mSpinner.getAdapter() != this.mSpinnerAdapter) {
                        this.mSpinner.setAdapter(this.mSpinnerAdapter);
                    }
                    this.mSpinner.setOnItemSelectedListener(this.mNavItemSelectedListener);
                    addView(this.mListNavLayout);
                    break;
                case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
                    if (this.mTabScrollView != null && this.mIncludeTabs) {
                        addView(this.mTabScrollView);
                    }
                    break;
            }
            this.mNavigationMode = i;
            requestLayout();
        }
    }

    public void setSplitActionBar(boolean z) {
        if (this.mSplitActionBar != z) {
            if (this.mMenuView != null) {
                ViewGroup viewGroup = (ViewGroup) this.mMenuView.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.mMenuView);
                }
                if (!z) {
                    addView(this.mMenuView);
                } else if (this.mSplitView != null) {
                    this.mSplitView.addView(this.mMenuView);
                }
            }
            if (this.mSplitView != null) {
                this.mSplitView.setVisibility(z ? DISPLAY_DEFAULT : MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
            super.setSplitActionBar(z);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        int i = DISPLAY_DEFAULT;
        this.mSubtitle = charSequence;
        if (this.mSubtitleView != null) {
            int i2;
            this.mSubtitleView.setText(charSequence);
            this.mSubtitleView.setVisibility(charSequence != null ? 0 : 8);
            i2 = (this.mExpandedActionView != null || (this.mDisplayOptions & 8) == 0 || (TextUtils.isEmpty(this.mTitle) && TextUtils.isEmpty(this.mSubtitle))) ? false : 1;
            LinearLayout linearLayout = this.mTitleLayout;
            if (i2 == 0) {
                i = 8;
            }
            linearLayout.setVisibility(i);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.mUserTitle = true;
        setTitleImpl(charSequence);
    }

    public void setWindowCallback(Callback callback) {
        this.mWindowCallback = callback;
    }

    public void setWindowTitle(CharSequence charSequence) {
        if (!this.mUserTitle) {
            setTitleImpl(charSequence);
        }
    }

    public boolean shouldDelayChildPressedState() {
        return false;
    }
}