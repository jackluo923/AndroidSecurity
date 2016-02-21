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
import android.widget.RadioButton;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.view.menu.MenuView.ItemView;
import com.actionbarsherlock.view.MenuItem;

// compiled from: ProGuard
public class ListMenuItemView extends LinearLayout implements ItemView {
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

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SherlockMenuView, i, 0);
        this.mBackground = obtainStyledAttributes.getDrawable(ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_DEFAULT);
        this.mTextAppearance = obtainStyledAttributes.getResourceId(0, -1);
        this.mPreserveIconSpacing = obtainStyledAttributes.getBoolean(R.styleable.SherlockTheme_actionBarWidgetTheme, false);
        this.mTextAppearanceContext = context;
        obtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.mInflater == null) {
            this.mInflater = LayoutInflater.from(this.mContext);
        }
        return this.mInflater;
    }

    private void insertCheckBox() {
        this.mCheckBox = (CheckBox) getInflater().inflate(R.layout.abs__list_menu_item_checkbox, this, false);
        addView(this.mCheckBox);
    }

    private void insertIconView() {
        this.mIconView = (ImageView) getInflater().inflate(R.layout.abs__list_menu_item_icon, this, false);
        addView(this.mIconView, 0);
    }

    private void insertRadioButton() {
        this.mRadioButton = (RadioButton) getInflater().inflate(R.layout.abs__list_menu_item_radio, this, false);
        addView(this.mRadioButton);
    }

    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.mItemData = menuItemImpl;
        setVisibility(menuItemImpl.isVisible() ? 0 : MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        setTitle(menuItemImpl.getTitleForItemView(this));
        setCheckable(menuItemImpl.isCheckable());
        setShortcut(menuItemImpl.shouldShowShortcut(), menuItemImpl.getShortcut());
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackgroundDrawable(this.mBackground);
        this.mTitleView = (TextView) findViewById(R.id.abs__title);
        if (this.mTextAppearance != -1) {
            this.mTitleView.setTextAppearance(this.mTextAppearanceContext, this.mTextAppearance);
        }
        this.mShortcutView = (TextView) findViewById(R.id.abs__shortcut);
    }

    protected void onMeasure(int i, int i2) {
        if (this.mIconView != null && this.mPreserveIconSpacing) {
            LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mIconView.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }

    public boolean prefersCondensedTitle() {
        return false;
    }

    public void setCheckable(boolean z) {
        if (z || this.mRadioButton != null || this.mCheckBox != null) {
            CompoundButton compoundButton;
            CompoundButton compoundButton2;
            if (this.mRadioButton == null) {
                insertRadioButton();
            }
            if (this.mCheckBox == null) {
                insertCheckBox();
            }
            if (this.mItemData.isExclusiveCheckable()) {
                compoundButton = this.mRadioButton;
                compoundButton2 = this.mCheckBox;
            } else {
                compoundButton = this.mCheckBox;
                compoundButton2 = this.mRadioButton;
            }
            if (z) {
                int i;
                compoundButton.setChecked(this.mItemData.isChecked());
                i = z ? 0 : 8;
                if (compoundButton.getVisibility() != i) {
                    compoundButton.setVisibility(i);
                }
                if (compoundButton2.getVisibility() != 8) {
                    compoundButton2.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                }
            } else {
                this.mCheckBox.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
                this.mRadioButton.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.mItemData.isExclusiveCheckable()) {
            if (this.mRadioButton == null) {
                insertRadioButton();
            }
            compoundButton = this.mRadioButton;
        } else {
            if (this.mCheckBox == null) {
                insertCheckBox();
            }
            compoundButton = this.mCheckBox;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.mForceShowIcon = z;
        this.mPreserveIconSpacing = z;
    }

    public void setIcon(Drawable drawable) {
        int i = (this.mItemData.shouldShowIcon() || this.mForceShowIcon) ? 1 : false;
        if (i == 0 && !this.mPreserveIconSpacing) {
            return;
        }
        if (this.mIconView != null || drawable != null || this.mPreserveIconSpacing) {
            if (this.mIconView == null) {
                insertIconView();
            }
            if (drawable != null || this.mPreserveIconSpacing) {
                ImageView imageView = this.mIconView;
                if (i == 0) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.mIconView.getVisibility() != 0) {
                    this.mIconView.setVisibility(0);
                }
            } else {
                this.mIconView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
            }
        }
    }

    public void setShortcut(boolean z, char c) {
        int i = (z && this.mItemData.shouldShowShortcut()) ? 0 : MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        if (i == 0) {
            this.mShortcutView.setText(this.mItemData.getShortcutLabel());
        }
        if (this.mShortcutView.getVisibility() != i) {
            this.mShortcutView.setVisibility(i);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.mTitleView.setText(charSequence);
            if (this.mTitleView.getVisibility() != 0) {
                this.mTitleView.setVisibility(0);
            }
        } else if (this.mTitleView.getVisibility() != 8) {
            this.mTitleView.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
    }

    public boolean showsIcon() {
        return this.mForceShowIcon;
    }
}