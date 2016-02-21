package me.kiip.sdk;

import android.graphics.Bitmap;
import android.view.View;

public abstract class Notification {
    private Object a;

    public static interface OnClickListener {
        void onClick(Notification notification);
    }

    public static interface OnDismissListener {
        void onDismiss(Notification notification);
    }

    public static interface OnShowListener {
        void onShow(Notification notification);
    }

    public abstract int getGravity();

    public abstract Bitmap getIcon();

    public abstract String getMessage();

    public Object getTag() {
        return this.a;
    }

    public abstract String getTitle();

    public abstract boolean isShowing();

    public abstract void setContentView(View view);

    public abstract void setGravity(int i);

    public abstract void setIcon(Bitmap bitmap);

    public abstract void setMessage(String str);

    public abstract void setOnClickListener(OnClickListener onClickListener);

    public abstract void setOnDismissListener(OnDismissListener onDismissListener);

    public abstract void setOnShowListener(OnShowListener onShowListener);

    public void setTag(Object obj) {
        this.a = obj;
    }

    public abstract void setTitle(String str);
}