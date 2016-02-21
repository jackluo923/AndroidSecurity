package me.kiip.sdk;

public abstract class Modal {
    private Object a;

    public static interface OnShowListener {
        void onShow(Modal modal);
    }

    public static interface OnDismissListener {
        void onDismiss(Modal modal);
    }

    public Object getTag() {
        return this.a;
    }

    public abstract boolean isShowing();

    public abstract void setOnDismissListener(OnDismissListener onDismissListener);

    public abstract void setOnShowListener(OnShowListener onShowListener);

    public void setTag(Object obj) {
        this.a = obj;
    }
}