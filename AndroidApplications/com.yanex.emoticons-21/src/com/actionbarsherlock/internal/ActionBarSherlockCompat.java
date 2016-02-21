package com.actionbarsherlock.internal;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.actionbarsherlock.ActionBarSherlock;
import com.actionbarsherlock.ActionBarSherlock.Implementation;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeFinishedListener;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeStartedListener;
import com.actionbarsherlock.R;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.internal.app.ActionBarImpl;
import com.actionbarsherlock.internal.view.StandaloneActionMode;
import com.actionbarsherlock.internal.view.menu.ActionMenuPresenter;
import com.actionbarsherlock.internal.view.menu.MenuBuilder;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.Callback;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;
import com.actionbarsherlock.internal.view.menu.MenuPresenter;
import com.actionbarsherlock.internal.widget.ActionBarContainer;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.internal.widget.ActionBarView;
import com.actionbarsherlock.internal.widget.IcsAdapterView;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsProgressBar;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.view.Window;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@Implementation(api = 7)
public class ActionBarSherlockCompat extends ActionBarSherlock implements OnMenuItemClickListener, Callback, MenuPresenter.Callback, Window.Callback {
    protected static final int DEFAULT_FEATURES = 0;
    private static final String PANELS_TAG = "sherlock:Panels";
    private ActionBarImpl aActionBar;
    private ActionMode mActionMode;
    private ActionBarContextView mActionModeView;
    private IcsProgressBar mCircularProgressBar;
    private boolean mClosingActionMenu;
    private ViewGroup mContentParent;
    private ViewGroup mDecor;
    private int mFeatures;
    private IcsProgressBar mHorizontalProgressBar;
    private boolean mIsDestroyed;
    private boolean mIsTitleReady;
    private MenuBuilder mMenu;
    private Bundle mMenuFrozenActionViewState;
    private boolean mMenuIsPrepared;
    private boolean mMenuRefreshContent;
    protected HashMap mNativeItemMap;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private int mUiOptions;
    private ActionBarView wActionBar;

    class ActionModeCallbackWrapper implements ActionMode.Callback {
        private final ActionMode.Callback mWrapped;

        public ActionModeCallbackWrapper(ActionMode.Callback callback) {
            this.mWrapped = callback;
        }

        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return this.mWrapped.onActionItemClicked(actionMode, menuItem);
        }

        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onCreateActionMode(actionMode, menu);
        }

        public void onDestroyActionMode(ActionMode actionMode) {
            this.mWrapped.onDestroyActionMode(actionMode);
            if (ActionBarSherlockCompat.this.mActionModeView != null) {
                ActionBarSherlockCompat.this.mActionModeView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                ActionBarSherlockCompat.this.mActionModeView.removeAllViews();
            }
            if (ActionBarSherlockCompat.this.mActivity instanceof OnActionModeFinishedListener) {
                ((OnActionModeFinishedListener) ActionBarSherlockCompat.this.mActivity).onActionModeFinished(ActionBarSherlockCompat.this.mActionMode);
            }
            ActionBarSherlockCompat.this.mActionMode = null;
        }

        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return this.mWrapped.onPrepareActionMode(actionMode, menu);
        }
    }

    public ActionBarSherlockCompat(Activity activity, int i) {
        super(activity, i);
        this.mReserveOverflowSet = false;
        this.mIsTitleReady = false;
        this.mIsDestroyed = false;
        this.mFeatures = 0;
        this.mUiOptions = 0;
    }

    public static String cleanActivityName(String str, String str2) {
        if (str2.charAt(DEFAULT_FEATURES) == '.') {
            return str + str2;
        }
        return str2.indexOf(46, 1) == -1 ? str + "." + str2 : str2;
    }

    private ViewGroup generateLayout() {
        TypedArray obtainStyledAttributes = this.mActivity.getTheme().obtainStyledAttributes(R.styleable.SherlockTheme);
        if (obtainStyledAttributes.hasValue(59)) {
            int i;
            if (obtainStyledAttributes.getBoolean(58, false)) {
                requestFeature(1);
            } else if (obtainStyledAttributes.getBoolean(59, false)) {
                requestFeature(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
            if (obtainStyledAttributes.getBoolean(60, false)) {
                requestFeature(9);
            }
            if (obtainStyledAttributes.getBoolean(61, false)) {
                requestFeature(10);
            }
            obtainStyledAttributes.recycle();
            if (hasFeature(1)) {
                i = (!hasFeature(10) || hasFeature(1)) ? R.layout.abs__screen_simple : R.layout.abs__screen_simple_overlay_action_mode;
            } else if (hasFeature(9)) {
                i = R.layout.abs__screen_action_bar_overlay;
            } else {
                i = R.layout.abs__screen_action_bar;
            }
            this.mDecor.addView(this.mActivity.getLayoutInflater().inflate(i, null), new LayoutParams(-1, -1));
            ViewGroup viewGroup = (ViewGroup) this.mDecor.findViewById(R.id.abs__content);
            if (viewGroup == null) {
                throw new RuntimeException("Couldn't find content container view");
            }
            this.mDecor.setId(-1);
            viewGroup.setId(16908290);
            if (hasFeature(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)) {
                IcsProgressBar circularProgressBar = getCircularProgressBar(false);
                if (circularProgressBar != null) {
                    circularProgressBar.setIndeterminate(true);
                }
            }
            return viewGroup;
        } else {
            throw new IllegalStateException("You must use Theme.Sherlock, Theme.Sherlock.Light, Theme.Sherlock.Light.DarkActionBar, or a derivative.");
        }
    }

    private IcsProgressBar getCircularProgressBar(boolean z) {
        if (this.mCircularProgressBar != null) {
            return this.mCircularProgressBar;
        }
        if (this.mContentParent == null && z) {
            installDecor();
        }
        this.mCircularProgressBar = (IcsProgressBar) this.mDecor.findViewById(R.id.abs__progress_circular);
        if (this.mCircularProgressBar != null) {
            this.mCircularProgressBar.setVisibility(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        }
        return this.mCircularProgressBar;
    }

    private int getFeatures() {
        return this.mFeatures;
    }

    private IcsProgressBar getHorizontalProgressBar(boolean z) {
        if (this.mHorizontalProgressBar != null) {
            return this.mHorizontalProgressBar;
        }
        if (this.mContentParent == null && z) {
            installDecor();
        }
        this.mHorizontalProgressBar = (IcsProgressBar) this.mDecor.findViewById(R.id.abs__progress_horizontal);
        if (this.mHorizontalProgressBar != null) {
            this.mHorizontalProgressBar.setVisibility(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        }
        return this.mHorizontalProgressBar;
    }

    private void hideProgressBars(IcsProgressBar icsProgressBar, IcsProgressBar icsProgressBar2) {
        int i = this.mFeatures;
        Animation loadAnimation = AnimationUtils.loadAnimation(this.mActivity, 17432577);
        loadAnimation.setDuration(1000);
        if ((i & 32) != 0 && icsProgressBar2.getVisibility() == 0) {
            icsProgressBar2.startAnimation(loadAnimation);
            icsProgressBar2.setVisibility(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        }
        if ((i & 4) != 0 && icsProgressBar.getVisibility() == 0) {
            icsProgressBar.startAnimation(loadAnimation);
            icsProgressBar.setVisibility(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        }
    }

    private void initActionBar() {
        if (this.mDecor == null) {
            installDecor();
        }
        if (this.aActionBar == null && hasFeature(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW) && !hasFeature(1) && !this.mActivity.isChild()) {
            this.aActionBar = new ActionBarImpl(this.mActivity, this.mFeatures);
            if (!this.mIsDelegate) {
                this.wActionBar.setWindowTitle(this.mActivity.getTitle());
            }
        }
    }

    private boolean initializePanelMenu() {
        Context contextThemeWrapper;
        Context context = this.mActivity;
        if (this.wActionBar != null) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                contextThemeWrapper = new ContextThemeWrapper(context, i);
                this.mMenu = new MenuBuilder(contextThemeWrapper);
                this.mMenu.setCallback(this);
                return true;
            }
        }
        contextThemeWrapper = context;
        this.mMenu = new MenuBuilder(contextThemeWrapper);
        this.mMenu.setCallback(this);
        return true;
    }

    private void installDecor() {
        if (this.mDecor == null) {
            this.mDecor = (ViewGroup) this.mActivity.getWindow().getDecorView().findViewById(16908290);
        }
        if (this.mContentParent == null) {
            List list = null;
            if (this.mDecor.getChildCount() > 0) {
                list = new ArrayList(1);
                int childCount = this.mDecor.getChildCount();
                int i = 0;
                while (i < childCount) {
                    View childAt = this.mDecor.getChildAt(DEFAULT_FEATURES);
                    this.mDecor.removeView(childAt);
                    list.add(childAt);
                    i++;
                }
            }
            this.mContentParent = generateLayout();
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.mContentParent.addView((View) it.next());
                }
            }
            this.wActionBar = (ActionBarView) this.mDecor.findViewById(R.id.abs__action_bar);
            if (this.wActionBar != null) {
                boolean z;
                boolean resources_getBoolean;
                this.wActionBar.setWindowCallback(this);
                if (this.wActionBar.getTitle() == null) {
                    this.wActionBar.setWindowTitle(this.mActivity.getTitle());
                }
                if (hasFeature(IcsLinearLayout.SHOW_DIVIDER_MIDDLE)) {
                    this.wActionBar.initProgress();
                }
                if (hasFeature(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER)) {
                    this.wActionBar.initIndeterminateProgress();
                }
                int loadUiOptionsFromManifest = loadUiOptionsFromManifest(this.mActivity);
                if (loadUiOptionsFromManifest != 0) {
                    this.mUiOptions = loadUiOptionsFromManifest;
                }
                z = (this.mUiOptions & 1) != 0;
                resources_getBoolean = z ? ResourcesCompat.getResources_getBoolean(this.mActivity, R.bool.abs__split_action_bar_is_narrow) : this.mActivity.getTheme().obtainStyledAttributes(R.styleable.SherlockTheme).getBoolean(62, false);
                ActionBarContainer actionBarContainer = (ActionBarContainer) this.mDecor.findViewById(R.id.abs__split_action_bar);
                if (actionBarContainer != null) {
                    this.wActionBar.setSplitView(actionBarContainer);
                    this.wActionBar.setSplitActionBar(resources_getBoolean);
                    this.wActionBar.setSplitWhenNarrow(z);
                    this.mActionModeView = (ActionBarContextView) this.mDecor.findViewById(R.id.abs__action_context_bar);
                    this.mActionModeView.setSplitView(actionBarContainer);
                    this.mActionModeView.setSplitActionBar(resources_getBoolean);
                    this.mActionModeView.setSplitWhenNarrow(z);
                } else if (resources_getBoolean) {
                    Log.e("ActionBarSherlock", "Requested split action bar with incompatible window decor! Ignoring request.");
                }
                this.mDecor.post(new Runnable() {
                    public void run() {
                        if (!ActionBarSherlockCompat.this.mIsDestroyed && !ActionBarSherlockCompat.this.mActivity.isFinishing() && ActionBarSherlockCompat.this.mMenu == null) {
                            ActionBarSherlockCompat.this.dispatchInvalidateOptionsMenu();
                        }
                    }
                });
            }
        }
    }

    private boolean isReservingOverflow() {
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = ActionMenuPresenter.reserveOverflow(this.mActivity);
            this.mReserveOverflowSet = true;
        }
        return this.mReserveOverflow;
    }

    private static int loadUiOptionsFromManifest(Activity activity) {
        int i;
        int i2 = DEFAULT_FEATURES;
        try {
            String name = activity.getClass().getName();
            String str = activity.getApplicationInfo().packageName;
            XmlResourceParser openXmlResourceParser = activity.createPackageContext(str, DEFAULT_FEATURES).getAssets().openXmlResourceParser("AndroidManifest.xml");
            int i3 = openXmlResourceParser.getEventType();
            i = i2;
            while (i3 != 1) {
                if (i3 == 2) {
                    String name2;
                    try {
                        name2 = openXmlResourceParser.getName();
                    } catch (Exception e) {
                        exception = e;
                    }
                    if ("application".equals(name2)) {
                        i3 = openXmlResourceParser.getAttributeCount() - 1;
                        while (i3 >= 0) {
                            if ("uiOptions".equals(openXmlResourceParser.getAttributeName(i3))) {
                                i3 = openXmlResourceParser.getAttributeIntValue(i3, DEFAULT_FEATURES);
                                break;
                            } else {
                                i3--;
                            }
                        }
                        i3 = i;
                        try {
                            i = i3;
                            i3 = openXmlResourceParser.nextToken();
                        } catch (Exception e2) {
                            i = i3;
                            exception = e2;
                        }
                    } else if ("activity".equals(name2)) {
                        i3 = openXmlResourceParser.getAttributeCount() - 1;
                        int i4 = i2;
                        String str2 = null;
                        Integer num = null;
                        while (i3 >= 0) {
                            String attributeName = openXmlResourceParser.getAttributeName(i3);
                            if (!"uiOptions".equals(attributeName)) {
                                if ("name".equals(attributeName)) {
                                    str2 = cleanActivityName(str, openXmlResourceParser.getAttributeValue(i3));
                                    if (!name.equals(str2)) {
                                        break;
                                    }
                                    boolean z = true;
                                }
                            } else {
                                num = Integer.valueOf(openXmlResourceParser.getAttributeIntValue(i3, DEFAULT_FEATURES));
                            }
                            if (!(num == null || str == null)) {
                                i = num.intValue();
                            }
                            i3--;
                        }
                        if (i4 != 0) {
                            return i;
                        }
                    }
                }
                boolean z2 = z;
                i = i3;
                i3 = openXmlResourceParser.nextToken();
            }
        } catch (Exception e3) {
            Exception exception2 = e3;
            i = i2;
            exception2.printStackTrace();
            return i;
        }
        return i;
    }

    private void onIntChanged(int i, int i2) {
        if (i == 2 || i == 5) {
            updateProgressBars(i2);
        }
    }

    private boolean preparePanel() {
        boolean z = false;
        if (this.mMenuIsPrepared) {
            return true;
        }
        if (this.mMenu == null || this.mMenuRefreshContent) {
            if (this.mMenu == null && (!initializePanelMenu() || this.mMenu == null)) {
                return false;
            }
            if (this.wActionBar != null) {
                this.wActionBar.setMenu(this.mMenu, this);
            }
            this.mMenu.stopDispatchingItemsChanged();
            if (callbackCreateOptionsMenu(this.mMenu)) {
                this.mMenuRefreshContent = false;
            } else {
                this.mMenu = null;
                if (this.wActionBar == null) {
                    return false;
                }
                this.wActionBar.setMenu(null, this);
                return false;
            }
        }
        this.mMenu.stopDispatchingItemsChanged();
        if (this.mMenuFrozenActionViewState != null) {
            this.mMenu.restoreActionViewStates(this.mMenuFrozenActionViewState);
            this.mMenuFrozenActionViewState = null;
        }
        if (callbackPrepareOptionsMenu(this.mMenu)) {
            KeyCharacterMap load = KeyCharacterMap.load(-1);
            MenuBuilder menuBuilder = this.mMenu;
            if (load.getKeyboardType() != 1) {
                z = true;
            }
            menuBuilder.setQwertyMode(z);
            this.mMenu.startDispatchingItemsChanged();
            this.mMenuIsPrepared = true;
            return true;
        } else {
            if (this.wActionBar != null) {
                this.wActionBar.setMenu(null, this);
            }
            this.mMenu.startDispatchingItemsChanged();
            return false;
        }
    }

    private void reopenMenu(boolean z) {
        if (this.wActionBar != null && this.wActionBar.isOverflowReserved()) {
            if (this.wActionBar.isOverflowMenuShowing() && z) {
                this.wActionBar.hideOverflowMenu();
            } else if (this.wActionBar.getVisibility() == 0 && callbackPrepareOptionsMenu(this.mMenu)) {
                this.wActionBar.showOverflowMenu();
            }
        }
    }

    private void setFeatureInt(int i, int i2) {
        updateInt(i, i2, false);
    }

    private void showProgressBars(IcsProgressBar icsProgressBar, IcsProgressBar icsProgressBar2) {
        int i = this.mFeatures;
        if ((i & 32) != 0 && icsProgressBar2.getVisibility() == 4) {
            icsProgressBar2.setVisibility(DEFAULT_FEATURES);
        }
        if ((i & 4) != 0 && icsProgressBar.getProgress() < 10000) {
            icsProgressBar.setVisibility(DEFAULT_FEATURES);
        }
    }

    private void updateInt(int i, int i2, boolean z) {
        if (this.mContentParent != null) {
            if (((1 << i) & getFeatures()) != 0 || z) {
                onIntChanged(i, i2);
            }
        }
    }

    private void updateProgressBars(int i) {
        IcsProgressBar circularProgressBar = getCircularProgressBar(true);
        IcsProgressBar horizontalProgressBar = getHorizontalProgressBar(true);
        int i2 = this.mFeatures;
        if (i == -1) {
            if ((i2 & 4) != 0) {
                int i3;
                i3 = (horizontalProgressBar.isIndeterminate() || horizontalProgressBar.getProgress() < 10000) ? 0 : ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT;
                horizontalProgressBar.setVisibility(i3);
            }
            if ((i2 & 32) != 0) {
                circularProgressBar.setVisibility(DEFAULT_FEATURES);
            }
        } else if (i == -2) {
            if ((i2 & 4) != 0) {
                horizontalProgressBar.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
            if ((i2 & 32) != 0) {
                circularProgressBar.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
        } else if (i == -3) {
            horizontalProgressBar.setIndeterminate(true);
        } else if (i == -4) {
            horizontalProgressBar.setIndeterminate(false);
        } else if (i >= 0 && i <= 10000) {
            horizontalProgressBar.setProgress(i + 0);
            if (i < 10000) {
                showProgressBars(horizontalProgressBar, circularProgressBar);
            } else {
                hideProgressBars(horizontalProgressBar, circularProgressBar);
            }
        } else if (20000 <= i && i <= 30000) {
            horizontalProgressBar.setSecondaryProgress(i - 20000);
            showProgressBars(horizontalProgressBar, circularProgressBar);
        }
    }

    public void addContentView(View view, LayoutParams layoutParams) {
        if (this.mContentParent == null) {
            installDecor();
        }
        this.mContentParent.addView(view, layoutParams);
        initActionBar();
    }

    void checkCloseActionMenu(Menu menu) {
        if (!this.mClosingActionMenu) {
            this.mClosingActionMenu = true;
            this.wActionBar.dismissPopupMenus();
            this.mClosingActionMenu = false;
        }
    }

    public boolean dispatchCloseOptionsMenu() {
        return (isReservingOverflow() && this.wActionBar != null) ? this.wActionBar.hideOverflowMenu() : false;
    }

    public void dispatchConfigurationChanged(Configuration configuration) {
        if (this.aActionBar != null) {
            this.aActionBar.onConfigurationChanged(configuration);
        }
    }

    public boolean dispatchCreateOptionsMenu(android.view.Menu menu) {
        return true;
    }

    public void dispatchDestroy() {
        this.mIsDestroyed = true;
    }

    public void dispatchInvalidateOptionsMenu() {
        if (this.mMenu != null) {
            Bundle bundle = new Bundle();
            this.mMenu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                this.mMenuFrozenActionViewState = bundle;
            }
            this.mMenu.stopDispatchingItemsChanged();
            this.mMenu.clear();
        }
        this.mMenuRefreshContent = true;
        if (this.wActionBar != null) {
            this.mMenuIsPrepared = false;
            preparePanel();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() == 4) {
            int action = keyEvent.getAction();
            if (this.mActionMode != null) {
                if (action != 1) {
                    return true;
                }
                this.mActionMode.finish();
                return true;
            } else if (this.wActionBar != null && this.wActionBar.hasExpandedActionView()) {
                if (action != 1) {
                    return true;
                }
                this.wActionBar.collapseActionView();
                return true;
            }
        }
        return false;
    }

    public boolean dispatchMenuOpened(int i, android.view.Menu menu) {
        if (i != 8 && i != 0) {
            return false;
        }
        if (this.aActionBar == null) {
            return true;
        }
        this.aActionBar.dispatchMenuVisibilityChanged(true);
        return true;
    }

    public boolean dispatchOpenOptionsMenu() {
        return isReservingOverflow() ? this.wActionBar.showOverflowMenu() : false;
    }

    public boolean dispatchOptionsItemSelected(android.view.MenuItem menuItem) {
        throw new IllegalStateException("Native callback invoked. Create a test case and report!");
    }

    public void dispatchPanelClosed(int i, android.view.Menu menu) {
        if ((i == 8 || i == 0) && this.aActionBar != null) {
            this.aActionBar.dispatchMenuVisibilityChanged(false);
        }
    }

    public void dispatchPause() {
        if (this.wActionBar != null && this.wActionBar.isOverflowMenuShowing()) {
            this.wActionBar.hideOverflowMenu();
        }
    }

    public void dispatchPostCreate(Bundle bundle) {
        if (this.mIsDelegate) {
            this.mIsTitleReady = true;
        }
        if (this.mDecor == null) {
            initActionBar();
        }
    }

    public void dispatchPostResume() {
        if (this.aActionBar != null) {
            this.aActionBar.setShowHideAnimationEnabled(true);
        }
    }

    public boolean dispatchPrepareOptionsMenu(android.view.Menu menu) {
        if (this.mActionMode != null) {
            return false;
        }
        this.mMenuIsPrepared = false;
        if (!preparePanel() || isReservingOverflow()) {
            return false;
        }
        if (this.mNativeItemMap == null) {
            this.mNativeItemMap = new HashMap();
        } else {
            this.mNativeItemMap.clear();
        }
        return this.mMenu != null ? this.mMenu.bindNativeOverflow(menu, this, this.mNativeItemMap) : false;
    }

    public void dispatchRestoreInstanceState(Bundle bundle) {
        this.mMenuFrozenActionViewState = (Bundle) bundle.getParcelable(PANELS_TAG);
    }

    public void dispatchSaveInstanceState(Bundle bundle) {
        if (this.mMenu != null) {
            this.mMenuFrozenActionViewState = new Bundle();
            this.mMenu.saveActionViewStates(this.mMenuFrozenActionViewState);
        }
        bundle.putParcelable(PANELS_TAG, this.mMenuFrozenActionViewState);
    }

    public void dispatchStop() {
        if (this.aActionBar != null) {
            this.aActionBar.setShowHideAnimationEnabled(false);
        }
    }

    public void dispatchTitleChanged(CharSequence charSequence, int i) {
        if ((!this.mIsDelegate || this.mIsTitleReady) && this.wActionBar != null) {
            this.wActionBar.setWindowTitle(charSequence);
        }
    }

    public void ensureActionBar() {
        if (this.mDecor == null) {
            initActionBar();
        }
    }

    public ActionBar getActionBar() {
        initActionBar();
        return this.aActionBar;
    }

    protected Context getThemedContext() {
        return this.aActionBar.getThemedContext();
    }

    public boolean hasFeature(int i) {
        return (this.mFeatures & (1 << i)) != 0;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        checkCloseActionMenu(menuBuilder);
    }

    public boolean onMenuItemClick(android.view.MenuItem menuItem) {
        MenuItemImpl menuItemImpl = (MenuItemImpl) this.mNativeItemMap.get(menuItem);
        if (menuItemImpl != null) {
            menuItemImpl.invoke();
        } else {
            Log.e("ActionBarSherlock", new StringBuilder("Options item \"").append(menuItem).append("\" not found in mapping").toString());
        }
        return true;
    }

    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        return callbackOptionsItemSelected(menuItem);
    }

    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        return callbackOptionsItemSelected(menuItem);
    }

    public void onMenuModeChange(MenuBuilder menuBuilder) {
        reopenMenu(true);
    }

    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return true;
    }

    public boolean requestFeature(int i) {
        if (this.mContentParent != null) {
            throw new AndroidRuntimeException("requestFeature() must be called before adding content");
        }
        switch (i) {
            case IcsToast.LENGTH_LONG:
            case IcsLinearLayout.SHOW_DIVIDER_MIDDLE:
            case FragmentManagerImpl.ANIM_STYLE_FADE_ENTER:
            case MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW:
            case 9:
            case 10:
                this.mFeatures |= 1 << i;
                return true;
            default:
                return false;
        }
    }

    public void setContentView(int i) {
        if (this.mContentParent == null) {
            installDecor();
        } else {
            this.mContentParent.removeAllViews();
        }
        this.mActivity.getLayoutInflater().inflate(i, this.mContentParent);
        android.view.Window.Callback callback = this.mActivity.getWindow().getCallback();
        if (callback != null) {
            callback.onContentChanged();
        }
        initActionBar();
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        if (this.mContentParent == null) {
            installDecor();
        } else {
            this.mContentParent.removeAllViews();
        }
        this.mContentParent.addView(view, layoutParams);
        android.view.Window.Callback callback = this.mActivity.getWindow().getCallback();
        if (callback != null) {
            callback.onContentChanged();
        }
        initActionBar();
    }

    public void setProgress(int i) {
        updateInt(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, i + 0, false);
    }

    public void setProgressBarIndeterminate(boolean z) {
        updateInt(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, z ? -3 : -4, false);
    }

    public void setProgressBarIndeterminateVisibility(boolean z) {
        updateInt(FragmentManagerImpl.ANIM_STYLE_FADE_ENTER, z ? -1 : IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER, false);
    }

    public void setProgressBarVisibility(boolean z) {
        updateInt(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, z ? -1 : IcsAdapterView.ITEM_VIEW_TYPE_HEADER_OR_FOOTER, false);
    }

    public void setSecondaryProgress(int i) {
        updateInt(IcsLinearLayout.SHOW_DIVIDER_MIDDLE, i + 20000, false);
    }

    public void setTitle(CharSequence charSequence) {
        dispatchTitleChanged(charSequence, DEFAULT_FEATURES);
    }

    public void setUiOptions(int i) {
        this.mUiOptions = i;
    }

    public void setUiOptions(int i, int i2) {
        this.mUiOptions = (this.mUiOptions & (i2 ^ -1)) | (i & i2);
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        if (this.mActionMode != null) {
            this.mActionMode.finish();
        }
        ActionMode.Callback actionModeCallbackWrapper = new ActionModeCallbackWrapper(callback);
        initActionBar();
        ActionMode startActionMode = this.aActionBar != null ? this.aActionBar.startActionMode(actionModeCallbackWrapper) : null;
        if (startActionMode != null) {
            this.mActionMode = startActionMode;
        } else {
            if (this.mActionModeView == null) {
                ViewStub viewStub = (ViewStub) this.mDecor.findViewById(R.id.abs__action_mode_bar_stub);
                if (viewStub != null) {
                    this.mActionModeView = (ActionBarContextView) viewStub.inflate();
                }
            }
            if (this.mActionModeView != null) {
                this.mActionModeView.killMode();
                startActionMode = new StandaloneActionMode(this.mActivity, this.mActionModeView, actionModeCallbackWrapper, true);
                if (callback.onCreateActionMode(startActionMode, startActionMode.getMenu())) {
                    startActionMode.invalidate();
                    this.mActionModeView.initForMode(startActionMode);
                    this.mActionModeView.setVisibility(DEFAULT_FEATURES);
                    this.mActionMode = startActionMode;
                    this.mActionModeView.sendAccessibilityEvent(32);
                } else {
                    this.mActionMode = null;
                }
            }
        }
        if (this.mActionMode != null && this.mActivity instanceof OnActionModeStartedListener) {
            ((OnActionModeStartedListener) this.mActivity).onActionModeStarted(this.mActionMode);
        }
        return this.mActionMode;
    }
}