package me.kiip.sdk;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnShowListener;

public abstract class Poptart implements DialogInterface {
    private Object a;

    public abstract void cancel();

    public abstract void dismiss();

    public abstract Modal getModal();

    public abstract Notification getNotification();

    public Object getTag() {
        return this.a;
    }

    public abstract boolean isShowing();

    public abstract void setNotification(Notification notification);

    public abstract void setOnDismissListener(OnDismissListener onDismissListener);

    public abstract void setOnShowListener(OnShowListener onShowListener);

    public void setTag(Object obj) {
        this.a = obj;
    }

    public abstract void show(Context context);

    public abstract void show(Context context, boolean z);
}