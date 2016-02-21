package com.heyzap.internal;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;

public class HeyzapProgressDialog extends ProgressDialog {
    public HeyzapProgressDialog(Context context) {
        super(context);
    }

    public HeyzapProgressDialog(Context context, int i) {
        super(context, i);
    }

    public static ProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2) {
        return show(context, charSequence, charSequence2, false);
    }

    public static HeyzapProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z) {
        return show(context, charSequence, charSequence2, z, false, null);
    }

    public static HeyzapProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2) {
        return show(context, charSequence, charSequence2, z, z2, null);
    }

    public static HeyzapProgressDialog show(Context context, CharSequence charSequence, CharSequence charSequence2, boolean z, boolean z2, OnCancelListener onCancelListener) {
        HeyzapProgressDialog heyzapProgressDialog = new HeyzapProgressDialog(context);
        heyzapProgressDialog.setTitle(charSequence);
        heyzapProgressDialog.setMessage(charSequence2);
        heyzapProgressDialog.setIndeterminate(z);
        heyzapProgressDialog.setCancelable(z2);
        heyzapProgressDialog.setOnCancelListener(onCancelListener);
        heyzapProgressDialog.show();
        return heyzapProgressDialog;
    }

    public void dismiss() {
        try {
            super.dismiss();
        } catch (RuntimeException e) {
            e.printStackTrace();
        }
    }

    public void hide() {
        try {
            super.hide();
        } catch (RuntimeException e) {
            e.printStackTrace();
        }
    }

    public void show() {
        try {
            super.show();
        } catch (RuntimeException e) {
            e.printStackTrace();
        }
    }
}