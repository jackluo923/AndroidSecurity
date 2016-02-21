package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageButton;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.view.View_HasStateListenerSupport;
import com.actionbarsherlock.internal.view.View_OnAttachStateChangeListener;
import com.actionbarsherlock.internal.view.menu.ActionMenuView.ActionMenuChildView;
import com.actionbarsherlock.internal.view.menu.MenuPresenter.Callback;
import com.actionbarsherlock.internal.view.menu.MenuView.ItemView;
import com.actionbarsherlock.view.ActionProvider;
import com.actionbarsherlock.view.ActionProvider.SubUiVisibilityListener;
import com.actionbarsherlock.view.MenuItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ActionMenuPresenter extends BaseMenuPresenter implements SubUiVisibilityListener {
    private final SparseBooleanArray mActionButtonGroups;
    private ActionButtonSubmenu mActionButtonPopup;
    private int mActionItemWidthLimit;
    private boolean mExpandedActionViewsExclusive;
    private int mMaxItems;
    private boolean mMaxItemsSet;
    private int mMinCellSize;
    int mOpenSubMenuId;
    private View mOverflowButton;
    private OverflowPopup mOverflowPopup;
    final PopupPresenterCallback mPopupPresenterCallback;
    private OpenOverflowRunnable mPostedOpenRunnable;
    private boolean mReserveOverflow;
    private boolean mReserveOverflowSet;
    private View mScrapActionButtonView;
    private boolean mStrictWidthLimit;
    private int mWidthLimit;
    private boolean mWidthLimitSet;

    class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder) {
            boolean z;
            super(context, subMenuBuilder);
            if (!((MenuItemImpl) subMenuBuilder.getItem()).isActionButton()) {
                setAnchorView(ActionMenuPresenter.this.mOverflowButton == null ? (View) ActionMenuPresenter.this.mMenuView : ActionMenuPresenter.this.mOverflowButton);
            }
            setCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
            int size = subMenuBuilder.size();
            int i = 0;
            while (i < size) {
                MenuItem item = subMenuBuilder.getItem(i);
                if (item.isVisible() && item.getIcon() != null) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
            z = false;
            setForceShowIcon(z);
        }

        public void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.mActionButtonPopup = null;
            ActionMenuPresenter.this.mOpenSubMenuId = 0;
        }
    }

    class HasPermanentMenuKey {
        private HasPermanentMenuKey() {
        }

        public static boolean get(Context context) {
            return ViewConfiguration.get(context).hasPermanentMenuKey();
        }
    }

    class OpenOverflowRunnable implements Runnable {
        private OverflowPopup mPopup;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.mPopup = overflowPopup;
        }

        public void run() {
            ActionMenuPresenter.this.mMenu.changeMenuMode();
            View view = (View) ActionMenuPresenter.this.mMenuView;
            if (!(view == null || view.getWindowToken() == null || !this.mPopup.tryShow())) {
                ActionMenuPresenter.this.mOverflowPopup = this.mPopup;
            }
            ActionMenuPresenter.this.mPostedOpenRunnable = null;
        }
    }

    class OverflowMenuButton extends ImageButton implements View_HasStateListenerSupport, ActionMenuChildView {
        private final Set mListeners;

        public OverflowMenuButton(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            this.mListeners = new HashSet();
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
        }

        public void addOnAttachStateChangeListener(View_OnAttachStateChangeListener view_OnAttachStateChangeListener) {
            this.mListeners.add(view_OnAttachStateChangeListener);
        }

        public boolean needsDividerAfter() {
            return false;
        }

        public boolean needsDividerBefore() {
            return false;
        }

        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            Iterator it = this.mListeners.iterator();
            while (it.hasNext()) {
                ((View_OnAttachStateChangeListener) it.next()).onViewAttachedToWindow(this);
            }
        }

        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            Iterator it = this.mListeners.iterator();
            while (it.hasNext()) {
                ((View_OnAttachStateChangeListener) it.next()).onViewDetachedFromWindow(this);
            }
            if (ActionMenuPresenter.this.mOverflowPopup != null) {
                ActionMenuPresenter.this.mOverflowPopup.dismiss();
            }
        }

        public boolean performClick() {
            if (!super.performClick()) {
                playSoundEffect(0);
                ActionMenuPresenter.this.showOverflowMenu();
            }
            return true;
        }

        public void removeOnAttachStateChangeListener(View_OnAttachStateChangeListener view_OnAttachStateChangeListener) {
            this.mListeners.remove(view_OnAttachStateChangeListener);
        }
    }

    class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z);
            setCallback(ActionMenuPresenter.this.mPopupPresenterCallback);
        }

        public void onDismiss() {
            super.onDismiss();
            ActionMenuPresenter.this.mMenu.close();
            ActionMenuPresenter.this.mOverflowPopup = null;
        }
    }

    class PopupPresenterCallback implements Callback {
        private PopupPresenterCallback() {
        }

        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                ((SubMenuBuilder) menuBuilder).getRootMenu().close(false);
            }
        }

        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder != null) {
                ActionMenuPresenter.this.mOpenSubMenuId = ((SubMenuBuilder) menuBuilder).getItem().getItemId();
            }
            return false;
        }
    }

    class SavedState implements Parcelable {
        public static final Creator CREATOR;
        public int openSubMenuId;

        static {
            CREATOR = new Creator() {
                public final SavedState createFromParcel(Parcel parcel) {
                    return new SavedState(parcel);
                }

                public final SavedState[] newArray(int i) {
                    return new SavedState[i];
                }
            };
        }

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.openSubMenuId = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.openSubMenuId);
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abs__action_menu_layout, R.layout.abs__action_menu_item_layout);
        this.mActionButtonGroups = new SparseBooleanArray();
        this.mPopupPresenterCallback = new PopupPresenterCallback(null);
    }

    private View findViewForItem(MenuItemImpl menuItemImpl) {
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        int i = 0;
        while (i < childCount) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ItemView && ((ItemView) childAt).getItemData() == menuItemImpl) {
                return childAt;
            }
            i++;
        }
        return null;
    }

    public static boolean reserveOverflow(Context context) {
        if (VERSION.SDK_INT < 14) {
            return VERSION.SDK_INT >= 11;
        } else if (HasPermanentMenuKey.get(context)) {
            return false;
        } else {
            return true;
        }
    }

    public void bindItemView(MenuItemImpl menuItemImpl, ItemView itemView) {
        itemView.initialize(menuItemImpl, 0);
        ((ActionMenuItemView) itemView).setItemInvoker((ActionMenuView) this.mMenuView);
    }

    public boolean dismissPopupMenus() {
        return hideOverflowMenu() | hideSubMenus();
    }

    public boolean filterLeftoverView(ViewGroup viewGroup, int i) {
        return viewGroup.getChildAt(i) == this.mOverflowButton ? false : super.filterLeftoverView(viewGroup, i);
    }

    public boolean flagActionItems() {
        int i;
        int i2;
        ArrayList visibleItems = this.mMenu.getVisibleItems();
        int size = visibleItems.size();
        int i3 = this.mMaxItems;
        int i4 = this.mActionItemWidthLimit;
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.mMenuView;
        int i5 = 0;
        int i6 = 0;
        boolean z = 0;
        int i7 = 0;
        while (i7 < size) {
            MenuItemImpl menuItemImpl = (MenuItemImpl) visibleItems.get(i7);
            if (menuItemImpl.requiresActionButton()) {
                i5++;
            } else if (menuItemImpl.requestsActionButton()) {
                i6++;
            } else {
                z = 1;
            }
            if (this.mExpandedActionViewsExclusive && menuItemImpl.isActionViewExpanded()) {
                boolean z2 = 0;
            } else {
                i = i3;
            }
            i7++;
            i3 = i;
        }
        if (this.mReserveOverflow) {
            if (i2 != 0 || i5 + i6 > i3) {
                i3--;
            }
        }
        i7 = i3 - i5;
        SparseBooleanArray sparseBooleanArray = this.mActionButtonGroups;
        sparseBooleanArray.clear();
        if (this.mStrictWidthLimit) {
            i2 = i4 / this.mMinCellSize;
            i6 = (i4 % this.mMinCellSize) / i2 + this.mMinCellSize;
            i = i2;
        } else {
            i6 = 0;
            i = 0;
        }
        i3 = 0;
        int i8 = 0;
        i5 = i;
        while (i8 < size) {
            MenuItemImpl menuItemImpl2 = (MenuItemImpl) visibleItems.get(i8);
            View itemView;
            int i9;
            if (menuItemImpl2.requiresActionButton()) {
                itemView = getItemView(menuItemImpl2, this.mScrapActionButtonView, viewGroup);
                if (this.mScrapActionButtonView == null) {
                    this.mScrapActionButtonView = itemView;
                }
                if (this.mStrictWidthLimit) {
                    i = i5 - ActionMenuView.measureChildForCells(itemView, i6, i5, makeMeasureSpec, 0);
                } else {
                    itemView.measure(makeMeasureSpec, makeMeasureSpec);
                    i = i5;
                }
                i5 = itemView.getMeasuredWidth();
                i9 = i4 - i5;
                if (i3 != 0) {
                    i5 = i3;
                }
                i3 = menuItemImpl2.getGroupId();
                if (i3 != 0) {
                    sparseBooleanArray.put(i3, true);
                }
                menuItemImpl2.setIsActionButton(true);
                i2 = i9;
                i3 = i7;
            } else if (menuItemImpl2.requestsActionButton()) {
                boolean z3;
                int groupId = menuItemImpl2.getGroupId();
                boolean z4 = sparseBooleanArray.get(groupId);
                z2 = ((i7 > 0 || z4) && i4 > 0 && (!this.mStrictWidthLimit || i5 > 0)) ? 1 : 0;
                if (z2) {
                    itemView = getItemView(menuItemImpl2, this.mScrapActionButtonView, viewGroup);
                    if (this.mScrapActionButtonView == null) {
                        this.mScrapActionButtonView = itemView;
                    }
                    if (this.mStrictWidthLimit) {
                        int measureChildForCells = ActionMenuView.measureChildForCells(itemView, i6, i5, makeMeasureSpec, 0);
                        i5 -= measureChildForCells;
                        if (measureChildForCells == 0) {
                            i = 0;
                        }
                    } else {
                        itemView.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    i9 = itemView.getMeasuredWidth();
                    i4 -= i9;
                    if (i3 == 0) {
                        i3 = i9;
                    }
                    if (this.mStrictWidthLimit) {
                        z3 = i & (i4 >= 0 ? 1 : 0);
                        i9 = i5;
                    } else {
                        z3 = i & (i4 + i > 0 ? 1 : 0);
                        i9 = i5;
                    }
                } else {
                    z3 = z2;
                    i9 = i5;
                }
                if (z3 && groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                    i = i7;
                } else if (z4) {
                    sparseBooleanArray.put(groupId, false);
                    i5 = i7;
                    i7 = 0;
                    while (i7 < i8) {
                        menuItemImpl = (MenuItemImpl) visibleItems.get(i7);
                        if (menuItemImpl.getGroupId() == groupId) {
                            if (menuItemImpl.isActionButton()) {
                                i5++;
                            }
                            menuItemImpl.setIsActionButton(false);
                        }
                        i7++;
                    }
                    i = i5;
                } else {
                    i = i7;
                }
                if (z3) {
                    i--;
                }
                menuItemImpl2.setIsActionButton(z3);
                i5 = i3;
                i2 = i4;
                i3 = i;
                i = i9;
            } else {
                i = i5;
                i2 = i4;
                i5 = i3;
                i3 = i7;
            }
            i8++;
            i4 = i2;
            i7 = i3;
            i3 = i5;
            i5 = i;
        }
        return true;
    }

    public View getItemView(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.hasCollapsibleActionView()) {
            if (!view instanceof ActionMenuItemView) {
                view = null;
            }
            actionView = super.getItemView(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.isActionViewExpanded() ? MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        MenuView menuView = super.getMenuView(viewGroup);
        ((ActionMenuView) menuView).setPresenter(this);
        return menuView;
    }

    public boolean hideOverflowMenu() {
        if (this.mPostedOpenRunnable == null || this.mMenuView == null) {
            MenuPopupHelper menuPopupHelper = this.mOverflowPopup;
            if (menuPopupHelper == null) {
                return false;
            }
            menuPopupHelper.dismiss();
            return true;
        } else {
            ((View) this.mMenuView).removeCallbacks(this.mPostedOpenRunnable);
            this.mPostedOpenRunnable = null;
            return true;
        }
    }

    public boolean hideSubMenus() {
        if (this.mActionButtonPopup == null) {
            return false;
        }
        this.mActionButtonPopup.dismiss();
        return true;
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        super.initForMenu(context, menuBuilder);
        Resources resources = context.getResources();
        if (!this.mReserveOverflowSet) {
            this.mReserveOverflow = reserveOverflow(this.mContext);
        }
        if (!this.mWidthLimitSet) {
            this.mWidthLimit = resources.getDisplayMetrics().widthPixels / 2;
        }
        if (!this.mMaxItemsSet) {
            this.mMaxItems = ResourcesCompat.getResources_getInteger(context, R.integer.abs__max_action_buttons);
        }
        int i = this.mWidthLimit;
        if (this.mReserveOverflow) {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = new OverflowMenuButton(this.mSystemContext);
                int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
                this.mOverflowButton.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.mOverflowButton.getMeasuredWidth();
        } else {
            this.mOverflowButton = null;
        }
        this.mActionItemWidthLimit = i;
        this.mMinCellSize = (int) (56.0f * resources.getDisplayMetrics().density);
        this.mScrapActionButtonView = null;
    }

    public boolean isOverflowMenuShowing() {
        return this.mOverflowPopup != null && this.mOverflowPopup.isShowing();
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        dismissPopupMenus();
        super.onCloseMenu(menuBuilder, z);
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (!this.mMaxItemsSet) {
            this.mMaxItems = ResourcesCompat.getResources_getInteger(this.mContext, R.integer.abs__max_action_buttons);
            if (this.mMenu != null) {
                this.mMenu.onItemsChanged(true);
            }
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        if (savedState.openSubMenuId > 0) {
            MenuItem findItem = this.mMenu.findItem(savedState.openSubMenuId);
            if (findItem != null) {
                onSubMenuSelected((SubMenuBuilder) findItem.getSubMenu());
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        Parcelable savedState = new SavedState();
        savedState.openSubMenuId = this.mOpenSubMenuId;
        return savedState;
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (!subMenuBuilder.hasVisibleItems()) {
            return false;
        }
        SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
        while (subMenuBuilder2.getParentMenu() != this.mMenu) {
            subMenuBuilder2 = (SubMenuBuilder) subMenuBuilder2.getParentMenu();
        }
        View findViewForItem = findViewForItem(subMenuBuilder2.getItem());
        if (findViewForItem == null && this.mOverflowButton == null) {
            return false;
        }
        findViewForItem = this.mOverflowButton;
        this.mOpenSubMenuId = subMenuBuilder.getItem().getItemId();
        this.mActionButtonPopup = new ActionButtonSubmenu(this.mContext, subMenuBuilder);
        this.mActionButtonPopup.setAnchorView(findViewForItem);
        this.mActionButtonPopup.show();
        super.onSubMenuSelected(subMenuBuilder);
        return true;
    }

    public void onSubUiVisibilityChanged(boolean z) {
        if (z) {
            super.onSubMenuSelected(null);
        } else {
            this.mMenu.close(false);
        }
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.mExpandedActionViewsExclusive = z;
    }

    public void setItemLimit(int i) {
        this.mMaxItems = i;
        this.mMaxItemsSet = true;
    }

    public void setReserveOverflow(boolean z) {
        this.mReserveOverflow = z;
        this.mReserveOverflowSet = true;
    }

    public void setWidthLimit(int i, boolean z) {
        this.mWidthLimit = i;
        this.mStrictWidthLimit = z;
        this.mWidthLimitSet = true;
    }

    public boolean shouldIncludeItem(int i, MenuItemImpl menuItemImpl) {
        return menuItemImpl.isActionButton();
    }

    public boolean showOverflowMenu() {
        if (!this.mReserveOverflow || isOverflowMenuShowing() || this.mMenu == null || this.mMenuView == null || this.mPostedOpenRunnable != null || this.mMenu.getNonActionItems().isEmpty()) {
            return false;
        }
        this.mPostedOpenRunnable = new OpenOverflowRunnable(new OverflowPopup(this.mContext, this.mMenu, this.mOverflowButton, true));
        ((View) this.mMenuView).post(this.mPostedOpenRunnable);
        super.onSubMenuSelected(null);
        return true;
    }

    public void updateMenuView(boolean z) {
        int i;
        boolean z2 = 1;
        int i2 = 0;
        super.updateMenuView(z);
        if (this.mMenu != null) {
            ArrayList actionItems = this.mMenu.getActionItems();
            int size = actionItems.size();
            i = 0;
            while (i < size) {
                ActionProvider actionProvider = ((MenuItemImpl) actionItems.get(i)).getActionProvider();
                if (actionProvider != null) {
                    actionProvider.setSubUiVisibilityListener(this);
                }
                i++;
            }
        }
        ArrayList nonActionItems = this.mMenu != null ? this.mMenu.getNonActionItems() : null;
        if (this.mReserveOverflow && nonActionItems != null) {
            i = nonActionItems.size();
            if (i == 1) {
                i2 = !((MenuItemImpl) nonActionItems.get(0)).isActionViewExpanded();
            } else {
                if (i <= 0) {
                    z2 = false;
                }
                i2 = i;
            }
        }
        if (i2 != 0) {
            if (this.mOverflowButton == null) {
                this.mOverflowButton = new OverflowMenuButton(this.mSystemContext);
            }
            ViewGroup viewGroup = (ViewGroup) this.mOverflowButton.getParent();
            if (viewGroup != this.mMenuView) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.mOverflowButton);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.mMenuView;
                actionMenuView.addView(this.mOverflowButton, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else if (this.mOverflowButton != null && this.mOverflowButton.getParent() == this.mMenuView) {
            ((ViewGroup) this.mMenuView).removeView(this.mOverflowButton);
        }
        ((ActionMenuView) this.mMenuView).setOverflowReserved(this.mReserveOverflow);
    }
}