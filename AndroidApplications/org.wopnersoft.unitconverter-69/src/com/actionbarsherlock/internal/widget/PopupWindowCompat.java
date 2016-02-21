package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.PopupWindow;
import java.lang.reflect.Field;

// compiled from: ProGuard
public class PopupWindowCompat extends PopupWindow {
    private static final OnScrollChangedListener NOP;
    private static final Field superListenerField;
    private OnScrollChangedListener mSuperScrollListener;
    private ViewTreeObserver mViewTreeObserver;

    static {
        Field field = null;
        try {
            field = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
            field.setAccessible(true);
        } catch (NoSuchFieldException e) {
        }
        superListenerField = field;
        NOP = new OnScrollChangedListener() {
            public void onScrollChanged() {
            }
        };
    }

    public PopupWindowCompat() {
        init();
    }

    public PopupWindowCompat(int i, int i2) {
        super(i, i2);
        init();
    }

    public PopupWindowCompat(Context context) {
        super(context);
        init();
    }

    public PopupWindowCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public PopupWindowCompat(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }

    public PopupWindowCompat(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        init();
    }

    public PopupWindowCompat(View view) {
        super(view);
        init();
    }

    public PopupWindowCompat(View view, int i, int i2) {
        super(view, i, i2);
        init();
    }

    public PopupWindowCompat(View view, int i, int i2, boolean z) {
        super(view, i, i2, z);
        init();
    }

    private void init() {
        if (superListenerField != null) {
            try {
                this.mSuperScrollListener = (OnScrollChangedListener) superListenerField.get(this);
                superListenerField.set(this, NOP);
            } catch (Exception e) {
                this.mSuperScrollListener = null;
            }
        }
    }

    private void registerListener(View view) {
        if (this.mSuperScrollListener != null) {
            ViewTreeObserver viewTreeObserver;
            viewTreeObserver = view.getWindowToken() != null ? view.getViewTreeObserver() : null;
            if (viewTreeObserver != this.mViewTreeObserver) {
                if (this.mViewTreeObserver != null && this.mViewTreeObserver.isAlive()) {
                    this.mViewTreeObserver.removeOnScrollChangedListener(this.mSuperScrollListener);
                }
                this.mViewTreeObserver = viewTreeObserver;
                if (viewTreeObserver != null) {
                    viewTreeObserver.addOnScrollChangedListener(this.mSuperScrollListener);
                }
            }
        }
    }

    private void unregisterListener() {
        if (this.mSuperScrollListener != null && this.mViewTreeObserver != null) {
            if (this.mViewTreeObserver.isAlive()) {
                this.mViewTreeObserver.removeOnScrollChangedListener(this.mSuperScrollListener);
            }
            this.mViewTreeObserver = null;
        }
    }

    public void dismiss() {
        super.dismiss();
        unregisterListener();
    }

    public void showAsDropDown(View view, int i, int i2) {
        super.showAsDropDown(view, i, i2);
        registerListener(view);
    }

    public void showAtLocation(View view, int i, int i2, int i3) {
        super.showAtLocation(view, i, i2, i3);
        unregisterListener();
    }

    public void update(View view, int i, int i2) {
        super.update(view, i, i2);
        registerListener(view);
    }

    public void update(View view, int i, int i2, int i3, int i4) {
        super.update(view, i, i2, i3, i4);
        registerListener(view);
    }
}