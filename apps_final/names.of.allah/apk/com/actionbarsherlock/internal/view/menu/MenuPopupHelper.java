package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.DisplayMetrics;
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
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.actionbarsherlock.R.attr;
import com.actionbarsherlock.R.dimen;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.internal.view.View_HasStateListenerSupport;
import com.actionbarsherlock.internal.view.View_OnAttachStateChangeListener;
import com.actionbarsherlock.internal.widget.IcsListPopupWindow;
import com.actionbarsherlock.view.MenuItem;

public class MenuPopupHelper
  implements View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener, View_OnAttachStateChangeListener, MenuPresenter
{
  static final int ITEM_LAYOUT = R.layout.abs__popup_menu_item_layout;
  private MenuPopupHelper.MenuAdapter mAdapter;
  private View mAnchorView;
  private Context mContext;
  boolean mForceShowIcon;
  private LayoutInflater mInflater;
  private ViewGroup mMeasureParent;
  private MenuBuilder mMenu;
  private boolean mOverflowOnly;
  private IcsListPopupWindow mPopup;
  private int mPopupMaxWidth;
  private MenuPresenter.Callback mPresenterCallback;
  private ViewTreeObserver mTreeObserver;
  
  public MenuPopupHelper(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    this(paramContext, paramMenuBuilder, null, false);
  }
  
  public MenuPopupHelper(Context paramContext, MenuBuilder paramMenuBuilder, View paramView)
  {
    this(paramContext, paramMenuBuilder, paramView, false);
  }
  
  public MenuPopupHelper(Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean)
  {
    mContext = paramContext;
    mInflater = LayoutInflater.from(paramContext);
    mMenu = paramMenuBuilder;
    mOverflowOnly = paramBoolean;
    paramContext = paramContext.getResources();
    mPopupMaxWidth = Math.max(getDisplayMetricswidthPixels / 2, paramContext.getDimensionPixelSize(R.dimen.abs__config_prefDialogWidth));
    mAnchorView = paramView;
    paramMenuBuilder.addMenuPresenter(this);
  }
  
  private int measureContentWidth(ListAdapter paramListAdapter)
  {
    int n = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i1 = View.MeasureSpec.makeMeasureSpec(0, 0);
    int i2 = paramListAdapter.getCount();
    int j = 0;
    int i = 0;
    View localView = null;
    int k = 0;
    if (j < i2)
    {
      int m = paramListAdapter.getItemViewType(j);
      if (m == i) {
        break label127;
      }
      localView = null;
      i = m;
    }
    label127:
    for (;;)
    {
      if (mMeasureParent == null) {
        mMeasureParent = new FrameLayout(mContext);
      }
      localView = paramListAdapter.getView(j, localView, mMeasureParent);
      localView.measure(n, i1);
      k = Math.max(k, localView.getMeasuredWidth());
      j += 1;
      break;
      return k;
    }
  }
  
  public boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public void dismiss()
  {
    if (isShowing()) {
      mPopup.dismiss();
    }
  }
  
  public boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public boolean flagActionItems()
  {
    return false;
  }
  
  public int getId()
  {
    return 0;
  }
  
  public MenuView getMenuView(ViewGroup paramViewGroup)
  {
    throw new UnsupportedOperationException("MenuPopupHelpers manage their own views");
  }
  
  public void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder) {}
  
  public boolean isShowing()
  {
    return (mPopup != null) && (mPopup.isShowing());
  }
  
  public void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (paramMenuBuilder != mMenu) {}
    do
    {
      return;
      dismiss();
    } while (mPresenterCallback == null);
    mPresenterCallback.onCloseMenu(paramMenuBuilder, paramBoolean);
  }
  
  public void onDismiss()
  {
    mPopup = null;
    mMenu.close();
    if (mTreeObserver != null)
    {
      if (mTreeObserver.isAlive()) {
        mTreeObserver.removeGlobalOnLayoutListener(this);
      }
      mTreeObserver = null;
    }
    while (!(mAnchorView instanceof View_HasStateListenerSupport)) {
      return;
    }
    ((View_HasStateListenerSupport)mAnchorView).removeOnAttachStateChangeListener(this);
  }
  
  public void onGlobalLayout()
  {
    if (isShowing())
    {
      View localView = mAnchorView;
      if ((localView != null) && (localView.isShown())) {
        break label28;
      }
      dismiss();
    }
    label28:
    while (!isShowing()) {
      return;
    }
    mPopup.show();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = mAdapter;
    MenuPopupHelper.MenuAdapter.access$000(paramAdapterView).performItemAction(paramAdapterView.getItem(paramInt), 0);
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      dismiss();
      return true;
    }
    return false;
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable) {}
  
  public Parcelable onSaveInstanceState()
  {
    return null;
  }
  
  public boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    MenuPopupHelper localMenuPopupHelper;
    int i;
    if (paramSubMenuBuilder.hasVisibleItems())
    {
      localMenuPopupHelper = new MenuPopupHelper(mContext, paramSubMenuBuilder, mAnchorView, false);
      localMenuPopupHelper.setCallback(mPresenterCallback);
      int j = paramSubMenuBuilder.size();
      i = 0;
      if (i >= j) {
        break label121;
      }
      MenuItem localMenuItem = paramSubMenuBuilder.getItem(i);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null)) {}
    }
    label121:
    for (boolean bool = true;; bool = false)
    {
      localMenuPopupHelper.setForceShowIcon(bool);
      if (localMenuPopupHelper.tryShow())
      {
        if (mPresenterCallback != null) {
          mPresenterCallback.onOpenSubMenu(paramSubMenuBuilder);
        }
        return true;
        i += 1;
        break;
      }
      return false;
    }
  }
  
  public void onViewAttachedToWindow(View paramView)
  {
    ((View_HasStateListenerSupport)paramView).removeOnAttachStateChangeListener(this);
    if ((mPopup != null) && (mTreeObserver == null))
    {
      paramView = paramView.getViewTreeObserver();
      mTreeObserver = paramView;
      paramView.addOnGlobalLayoutListener(this);
    }
  }
  
  public void onViewDetachedFromWindow(View paramView) {}
  
  public void setAnchorView(View paramView)
  {
    mAnchorView = paramView;
  }
  
  public void setCallback(MenuPresenter.Callback paramCallback)
  {
    mPresenterCallback = paramCallback;
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    mForceShowIcon = paramBoolean;
  }
  
  public void show()
  {
    if (!tryShow()) {
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }
  }
  
  public boolean tryShow()
  {
    mPopup = new IcsListPopupWindow(mContext, null, R.attr.popupMenuStyle);
    mPopup.setOnDismissListener(this);
    mPopup.setOnItemClickListener(this);
    mAdapter = new MenuPopupHelper.MenuAdapter(this, mMenu);
    mPopup.setAdapter(mAdapter);
    mPopup.setModal(true);
    View localView = mAnchorView;
    if (localView != null)
    {
      if (localView.getWindowToken() != null)
      {
        ViewTreeObserver localViewTreeObserver = localView.getViewTreeObserver();
        if (localViewTreeObserver != mTreeObserver)
        {
          if ((mTreeObserver != null) && (mTreeObserver.isAlive())) {
            mTreeObserver.removeGlobalOnLayoutListener(this);
          }
          mTreeObserver = localViewTreeObserver;
          if (localViewTreeObserver != null) {
            localViewTreeObserver.addOnGlobalLayoutListener(this);
          }
        }
      }
      for (;;)
      {
        mPopup.setAnchorView(localView);
        mPopup.setContentWidth(Math.min(measureContentWidth(mAdapter), mPopupMaxWidth));
        mPopup.setInputMethodMode(2);
        mPopup.show();
        mPopup.getListView().setOnKeyListener(this);
        return true;
        if ((localView instanceof View_HasStateListenerSupport)) {
          ((View_HasStateListenerSupport)localView).addOnAttachStateChangeListener(this);
        }
      }
    }
    return false;
  }
  
  public void updateMenuView(boolean paramBoolean)
  {
    if (mAdapter != null) {
      mAdapter.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.MenuPopupHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */