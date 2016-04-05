package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RadioButton;
import android.widget.TextView;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.layout;
import com.actionbarsherlock.R.styleable;

public class ListMenuItemView
  extends LinearLayout
  implements MenuView.ItemView
{
  private Drawable mBackground;
  private CheckBox mCheckBox;
  final Context mContext;
  private boolean mForceShowIcon;
  private ImageView mIconView;
  private LayoutInflater mInflater;
  private MenuItemImpl mItemData;
  private boolean mPreserveIconSpacing;
  private RadioButton mRadioButton;
  private TextView mShortcutView;
  private int mTextAppearance;
  private Context mTextAppearanceContext;
  private TextView mTitleView;
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ListMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    mContext = paramContext;
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockMenuView, paramInt, 0);
    mBackground = paramAttributeSet.getDrawable(4);
    mTextAppearance = paramAttributeSet.getResourceId(0, -1);
    mPreserveIconSpacing = paramAttributeSet.getBoolean(7, false);
    mTextAppearanceContext = paramContext;
    paramAttributeSet.recycle();
  }
  
  private LayoutInflater getInflater()
  {
    if (mInflater == null) {
      mInflater = LayoutInflater.from(mContext);
    }
    return mInflater;
  }
  
  private void insertCheckBox()
  {
    mCheckBox = ((CheckBox)getInflater().inflate(R.layout.abs__list_menu_item_checkbox, this, false));
    addView(mCheckBox);
  }
  
  private void insertIconView()
  {
    mIconView = ((ImageView)getInflater().inflate(R.layout.abs__list_menu_item_icon, this, false));
    addView(mIconView, 0);
  }
  
  private void insertRadioButton()
  {
    mRadioButton = ((RadioButton)getInflater().inflate(R.layout.abs__list_menu_item_radio, this, false));
    addView(mRadioButton);
  }
  
  public MenuItemImpl getItemData()
  {
    return mItemData;
  }
  
  public void initialize(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    mItemData = paramMenuItemImpl;
    if (paramMenuItemImpl.isVisible()) {}
    for (paramInt = 0;; paramInt = 8)
    {
      setVisibility(paramInt);
      setTitle(paramMenuItemImpl.getTitleForItemView(this));
      setCheckable(paramMenuItemImpl.isCheckable());
      setShortcut(paramMenuItemImpl.shouldShowShortcut(), paramMenuItemImpl.getShortcut());
      setIcon(paramMenuItemImpl.getIcon());
      setEnabled(paramMenuItemImpl.isEnabled());
      return;
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setBackgroundDrawable(mBackground);
    mTitleView = ((TextView)findViewById(R.id.abs__title));
    if (mTextAppearance != -1) {
      mTitleView.setTextAppearance(mTextAppearanceContext, mTextAppearance);
    }
    mShortcutView = ((TextView)findViewById(R.id.abs__shortcut));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((mIconView != null) && (mPreserveIconSpacing))
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      LinearLayout.LayoutParams localLayoutParams1 = (LinearLayout.LayoutParams)mIconView.getLayoutParams();
      if ((height > 0) && (width <= 0)) {
        width = height;
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public boolean prefersCondensedTitle()
  {
    return false;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    if ((!paramBoolean) && (mRadioButton == null) && (mCheckBox == null)) {
      return;
    }
    if (mRadioButton == null) {
      insertRadioButton();
    }
    if (mCheckBox == null) {
      insertCheckBox();
    }
    Object localObject1;
    Object localObject2;
    if (mItemData.isExclusiveCheckable())
    {
      localObject1 = mRadioButton;
      localObject2 = mCheckBox;
      label61:
      if (!paramBoolean) {
        break label134;
      }
      ((CompoundButton)localObject1).setChecked(mItemData.isChecked());
      if (!paramBoolean) {
        break label127;
      }
    }
    label127:
    for (int i = 0;; i = 8)
    {
      if (((CompoundButton)localObject1).getVisibility() != i) {
        ((CompoundButton)localObject1).setVisibility(i);
      }
      if (((CompoundButton)localObject2).getVisibility() == 8) {
        break;
      }
      ((CompoundButton)localObject2).setVisibility(8);
      return;
      localObject1 = mCheckBox;
      localObject2 = mRadioButton;
      break label61;
    }
    label134:
    mCheckBox.setVisibility(8);
    mRadioButton.setVisibility(8);
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (mItemData.isExclusiveCheckable()) {
      if (mRadioButton == null) {
        insertRadioButton();
      }
    }
    for (Object localObject = mRadioButton;; localObject = mCheckBox)
    {
      ((CompoundButton)localObject).setChecked(paramBoolean);
      return;
      if (mCheckBox == null) {
        insertCheckBox();
      }
    }
  }
  
  public void setForceShowIcon(boolean paramBoolean)
  {
    mForceShowIcon = paramBoolean;
    mPreserveIconSpacing = paramBoolean;
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    int i;
    if ((mItemData.shouldShowIcon()) || (mForceShowIcon))
    {
      i = 1;
      if ((i != 0) || (mPreserveIconSpacing)) {
        break label36;
      }
    }
    label36:
    while ((mIconView == null) && (paramDrawable == null) && (!mPreserveIconSpacing))
    {
      return;
      i = 0;
      break;
    }
    if (mIconView == null) {
      insertIconView();
    }
    if ((paramDrawable != null) || (mPreserveIconSpacing))
    {
      ImageView localImageView = mIconView;
      if (i != 0) {}
      for (;;)
      {
        localImageView.setImageDrawable(paramDrawable);
        if (mIconView.getVisibility() == 0) {
          break;
        }
        mIconView.setVisibility(0);
        return;
        paramDrawable = null;
      }
    }
    mIconView.setVisibility(8);
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar)
  {
    if ((paramBoolean) && (mItemData.shouldShowShortcut())) {}
    for (paramChar = '\000';; paramChar = '\b')
    {
      if (paramChar == 0) {
        mShortcutView.setText(mItemData.getShortcutLabel());
      }
      if (mShortcutView.getVisibility() != paramChar) {
        mShortcutView.setVisibility(paramChar);
      }
      return;
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      mTitleView.setText(paramCharSequence);
      if (mTitleView.getVisibility() != 0) {
        mTitleView.setVisibility(0);
      }
    }
    while (mTitleView.getVisibility() == 8) {
      return;
    }
    mTitleView.setVisibility(8);
  }
  
  public boolean showsIcon()
  {
    return mForceShowIcon;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ListMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */