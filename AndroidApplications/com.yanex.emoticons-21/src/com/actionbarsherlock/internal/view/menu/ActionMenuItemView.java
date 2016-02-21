package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.actionbarsherlock.R;
import com.actionbarsherlock.internal.ResourcesCompat;
import com.actionbarsherlock.internal.view.View_HasStateListenerSupport;
import com.actionbarsherlock.internal.view.View_OnAttachStateChangeListener;
import com.actionbarsherlock.internal.view.menu.ActionMenuView.ActionMenuChildView;
import com.actionbarsherlock.internal.view.menu.MenuBuilder.ItemInvoker;
import com.actionbarsherlock.internal.view.menu.MenuView.ItemView;
import com.actionbarsherlock.internal.widget.CapitalizingButton;
import com.actionbarsherlock.internal.widget.IcsToast;
import com.actionbarsherlock.view.MenuItem;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ActionMenuItemView extends LinearLayout implements OnClickListener, OnLongClickListener, View_HasStateListenerSupport, ActionMenuChildView, ItemView {
    private boolean mAllowTextWithIcon;
    private boolean mExpandedFormat;
    private ImageButton mImageButton;
    private MenuItemImpl mItemData;
    private ItemInvoker mItemInvoker;
    private final Set mListeners;
    private int mMinWidth;
    private CapitalizingButton mTextButton;
    private CharSequence mTitle;

    public ActionMenuItemView(Context context) {
        this(context, null);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.mListeners = new HashSet();
        this.mAllowTextWithIcon = ResourcesCompat.getResources_getBoolean(context, R.bool.abs__config_allowActionMenuItemTextWithIcon);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SherlockActionMenuItemView, 0, 0);
        this.mMinWidth = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    private void updateTextButtonVisibility() {
        int i;
        int i2 = 1;
        int i3 = 0;
        i = TextUtils.isEmpty(this.mTextButton.getText()) ? 0 : 1;
        if (this.mImageButton.getDrawable() != null) {
            if (!(this.mItemData.showsTextAsAction() && (this.mAllowTextWithIcon || this.mExpandedFormat))) {
                i2 = 0;
            }
        }
        i &= i2;
        CapitalizingButton capitalizingButton = this.mTextButton;
        if (i == 0) {
            i3 = MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW;
        }
        capitalizingButton.setVisibility(i3);
    }

    public void addOnAttachStateChangeListener(View_OnAttachStateChangeListener view_OnAttachStateChangeListener) {
        this.mListeners.add(view_OnAttachStateChangeListener);
    }

    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return VERSION.SDK_INT >= 14 ? onHoverEvent(motionEvent) : false;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    public boolean hasText() {
        return this.mTextButton.getVisibility() != 8;
    }

    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.mItemData = menuItemImpl;
        setIcon(menuItemImpl.getIcon());
        setTitle(menuItemImpl.getTitleForItemView(this));
        setId(menuItemImpl.getItemId());
        setVisibility(menuItemImpl.isVisible() ? 0 : MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        setEnabled(menuItemImpl.isEnabled());
    }

    public boolean needsDividerAfter() {
        return hasText();
    }

    public boolean needsDividerBefore() {
        return hasText() && this.mItemData.getIcon() == null;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Iterator it = this.mListeners.iterator();
        while (it.hasNext()) {
            ((View_OnAttachStateChangeListener) it.next()).onViewAttachedToWindow(this);
        }
    }

    public void onClick(View view) {
        if (this.mItemInvoker != null) {
            this.mItemInvoker.invokeItem(this.mItemData);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Iterator it = this.mListeners.iterator();
        while (it.hasNext()) {
            ((View_OnAttachStateChangeListener) it.next()).onViewDetachedFromWindow(this);
        }
    }

    public void onFinishInflate() {
        this.mImageButton = (ImageButton) findViewById(R.id.abs__imageButton);
        this.mTextButton = (CapitalizingButton) findViewById(R.id.abs__textButton);
        this.mImageButton.setOnClickListener(this);
        this.mTextButton.setOnClickListener(this);
        this.mImageButton.setOnLongClickListener(this);
        setOnClickListener(this);
        setOnLongClickListener(this);
    }

    public boolean onLongClick(View view) {
        if (hasText()) {
            return false;
        }
        int[] iArr = new int[2];
        Rect rect = new Rect();
        getLocationOnScreen(iArr);
        getWindowVisibleDisplayFrame(rect);
        Context context = getContext();
        int width = getWidth();
        int height = getHeight();
        int i = iArr[1] + height / 2;
        int i2 = context.getResources().getDisplayMetrics().widthPixels;
        Toast makeText = IcsToast.makeText(context, this.mItemData.getTitle(), 0);
        if (i < rect.height()) {
            makeText.setGravity(53, i2 - iArr[0] - width / 2, height);
        } else {
            makeText.setGravity(81, 0, height);
        }
        makeText.show();
        return true;
    }

    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        size = mode == Integer.MIN_VALUE ? Math.min(size, this.mMinWidth) : this.mMinWidth;
        if (mode != 1073741824 && this.mMinWidth > 0 && measuredWidth < size) {
            super.onMeasure(MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
        }
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

    public boolean prefersCondensedTitle() {
        return true;
    }

    public void removeOnAttachStateChangeListener(View_OnAttachStateChangeListener view_OnAttachStateChangeListener) {
        this.mListeners.remove(view_OnAttachStateChangeListener);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.mImageButton.setEnabled(z);
        this.mTextButton.setEnabled(z);
    }

    public void setExpandedFormat(boolean z) {
        if (this.mExpandedFormat != z) {
            this.mExpandedFormat = z;
            if (this.mItemData != null) {
                this.mItemData.actionFormatChanged();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.mImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            this.mImageButton.setVisibility(0);
        } else {
            this.mImageButton.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        }
        updateTextButtonVisibility();
    }

    public void setItemInvoker(ItemInvoker itemInvoker) {
        this.mItemInvoker = itemInvoker;
    }

    public void setShortcut(boolean z, char c) {
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        this.mTextButton.setTextCompat(this.mTitle);
        setContentDescription(this.mTitle);
        updateTextButtonVisibility();
    }

    public boolean showsIcon() {
        return true;
    }
}