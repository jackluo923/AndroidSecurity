package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.view.View_HasStateListenerSupport;
import com.actionbarsherlock.internal.view.View_OnAttachStateChangeListener;
import com.actionbarsherlock.internal.view.menu.MenuPresenter.Callback;
import com.actionbarsherlock.internal.view.menu.MenuView.ItemView;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;
import com.actionbarsherlock.internal.widget.IcsListPopupWindow;
import com.actionbarsherlock.view.MenuItem;
import java.util.ArrayList;

public class MenuPopupHelper implements OnKeyListener, OnGlobalLayoutListener, OnItemClickListener, OnDismissListener, View_OnAttachStateChangeListener, MenuPresenter {
    static final int ITEM_LAYOUT;
    private MenuAdapter mAdapter;
    private View mAnchorView;
    private Context mContext;
    boolean mForceShowIcon;
    private LayoutInflater mInflater;
    private ViewGroup mMeasureParent;
    private MenuBuilder mMenu;
    private boolean mOverflowOnly;
    private IcsListPopupWindow mPopup;
    private int mPopupMaxWidth;
    private Callback mPresenterCallback;
    private ViewTreeObserver mTreeObserver;

    class ExpandedIndexObserver extends DataSetObserver {
        private ExpandedIndexObserver() {
        }

        public void onChanged() {
            MenuPopupHelper.this.mAdapter.findExpandedIndex();
        }
    }

    class MenuAdapter extends BaseAdapter {
        private MenuBuilder mAdapterMenu;
        private int mExpandedIndex;

        public MenuAdapter(MenuBuilder menuBuilder) {
            this.mExpandedIndex = -1;
            this.mAdapterMenu = menuBuilder;
            registerDataSetObserver(new ExpandedIndexObserver(null));
            findExpandedIndex();
        }

        void findExpandedIndex() {
            MenuItemImpl expandedItem = MenuPopupHelper.this.mMenu.getExpandedItem();
            if (expandedItem != null) {
                ArrayList nonActionItems = MenuPopupHelper.this.mMenu.getNonActionItems();
                int size = nonActionItems.size();
                int i = 0;
                while (i < size) {
                    if (((MenuItemImpl) nonActionItems.get(i)) == expandedItem) {
                        this.mExpandedIndex = i;
                        return;
                    } else {
                        i++;
                    }
                }
            }
            this.mExpandedIndex = -1;
        }

        public int getCount() {
            ArrayList nonActionItems = MenuPopupHelper.this.mOverflowOnly ? this.mAdapterMenu.getNonActionItems() : this.mAdapterMenu.getVisibleItems();
            return this.mExpandedIndex < 0 ? nonActionItems.size() : nonActionItems.size() - 1;
        }

        public MenuItemImpl getItem(int i) {
            ArrayList nonActionItems;
            nonActionItems = MenuPopupHelper.this.mOverflowOnly ? this.mAdapterMenu.getNonActionItems() : this.mAdapterMenu.getVisibleItems();
            if (this.mExpandedIndex >= 0 && i >= this.mExpandedIndex) {
                i++;
            }
            return (MenuItemImpl) nonActionItems.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate;
            inflate = view == null ? MenuPopupHelper.this.mInflater.inflate(ITEM_LAYOUT, viewGroup, false) : view;
            ItemView itemView = (ItemView) inflate;
            if (MenuPopupHelper.this.mForceShowIcon) {
                ((ListMenuItemView) inflate).setForceShowIcon(true);
            }
            itemView.initialize(getItem(i), 0);
            return inflate;
        }
    }

    static {
        ITEM_LAYOUT = R.layout.abs__popup_menu_item_layout;
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder) {
        this(context, menuBuilder, null, false);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view) {
        this(context, menuBuilder, view, false);
    }

    public MenuPopupHelper(Context context, MenuBuilder menuBuilder, View view, boolean z) {
        this.mContext = context;
        this.mInflater = LayoutInflater.from(context);
        this.mMenu = menuBuilder;
        this.mOverflowOnly = z;
        Resources resources = context.getResources();
        this.mPopupMaxWidth = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abs__config_prefDialogWidth));
        this.mAnchorView = view;
        menuBuilder.addMenuPresenter(this);
    }

    private int measureContentWidth(ListAdapter listAdapter) {
        int makeMeasureSpec = MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i = 0;
        boolean z = false;
        View view = null;
        int i2 = 0;
        while (i < count) {
            View view2;
            int itemViewType = listAdapter.getItemViewType(i);
            if (itemViewType != i) {
                view2 = null;
            } else {
                itemViewType = i;
                view2 = view;
            }
            if (this.mMeasureParent == null) {
                this.mMeasureParent = new FrameLayout(this.mContext);
            }
            view = listAdapter.getView(i, view2, this.mMeasureParent);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i2 = Math.max(i2, view.getMeasuredWidth());
            i++;
            int i3 = itemViewType;
        }
        return i2;
    }

    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public void dismiss() {
        if (isShowing()) {
            this.mPopup.dismiss();
        }
    }

    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public boolean flagActionItems() {
        return false;
    }

    public int getId() {
        return 0;
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        throw new UnsupportedOperationException("MenuPopupHelpers manage their own views");
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
    }

    public boolean isShowing() {
        return this.mPopup != null && this.mPopup.isShowing();
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (menuBuilder == this.mMenu) {
            dismiss();
            if (this.mPresenterCallback != null) {
                this.mPresenterCallback.onCloseMenu(menuBuilder, z);
            }
        }
    }

    public void onDismiss() {
        this.mPopup = null;
        this.mMenu.close();
        if (this.mTreeObserver != null) {
            if (!this.mTreeObserver.isAlive()) {
                this.mTreeObserver = this.mAnchorView.getViewTreeObserver();
            }
            this.mTreeObserver.removeGlobalOnLayoutListener(this);
            this.mTreeObserver = null;
        }
        ((View_HasStateListenerSupport) this.mAnchorView).removeOnAttachStateChangeListener(this);
    }

    public void onGlobalLayout() {
        if (isShowing()) {
            View view = this.mAnchorView;
            if (view == null || !view.isShown()) {
                dismiss();
            } else if (isShowing()) {
                this.mPopup.show();
            }
        }
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        MenuAdapter menuAdapter = this.mAdapter;
        menuAdapter.mAdapterMenu.performItemAction(menuAdapter.getItem(i), 0);
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    public Parcelable onSaveInstanceState() {
        return null;
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        if (subMenuBuilder.hasVisibleItems()) {
            boolean z;
            MenuPopupHelper menuPopupHelper = new MenuPopupHelper(this.mContext, subMenuBuilder, this.mAnchorView, false);
            menuPopupHelper.setCallback(this.mPresenterCallback);
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
            menuPopupHelper.setForceShowIcon(z);
            if (menuPopupHelper.tryShow()) {
                if (this.mPresenterCallback == null) {
                    return true;
                }
                this.mPresenterCallback.onOpenSubMenu(subMenuBuilder);
                return true;
            }
        }
        return false;
    }

    public void onViewAttachedToWindow(View view) {
    }

    public void onViewDetachedFromWindow(View view) {
        if (this.mTreeObserver != null) {
            if (!this.mTreeObserver.isAlive()) {
                this.mTreeObserver = view.getViewTreeObserver();
            }
            this.mTreeObserver.removeGlobalOnLayoutListener(this);
        }
        ((View_HasStateListenerSupport) view).removeOnAttachStateChangeListener(this);
    }

    public void setAnchorView(View view) {
        this.mAnchorView = view;
    }

    public void setCallback(Callback callback) {
        this.mPresenterCallback = callback;
    }

    public void setForceShowIcon(boolean z) {
        this.mForceShowIcon = z;
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean tryShow() {
        boolean z = 0;
        this.mPopup = new IcsListPopupWindow(this.mContext, null, R.attr.popupMenuStyle);
        this.mPopup.setOnDismissListener(this);
        this.mPopup.setOnItemClickListener(this);
        this.mAdapter = new MenuAdapter(this.mMenu);
        this.mPopup.setAdapter(this.mAdapter);
        this.mPopup.setModal(true);
        View view = this.mAnchorView;
        if (view == null) {
            return false;
        }
        if (this.mTreeObserver == null) {
            z = true;
        }
        this.mTreeObserver = view.getViewTreeObserver();
        if (i != 0) {
            this.mTreeObserver.addOnGlobalLayoutListener(this);
        }
        ((View_HasStateListenerSupport) view).addOnAttachStateChangeListener(this);
        this.mPopup.setAnchorView(view);
        this.mPopup.setContentWidth(Math.min(measureContentWidth(this.mAdapter), this.mPopupMaxWidth));
        this.mPopup.setInputMethodMode(IcsLinearLayout.SHOW_DIVIDER_MIDDLE);
        this.mPopup.show();
        this.mPopup.getListView().setOnKeyListener(this);
        return true;
    }

    public void updateMenuView(boolean z) {
        if (this.mAdapter != null) {
            this.mAdapter.notifyDataSetChanged();
        }
    }
}