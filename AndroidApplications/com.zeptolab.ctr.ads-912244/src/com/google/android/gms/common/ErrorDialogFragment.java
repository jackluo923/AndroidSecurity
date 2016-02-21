package com.google.android.gms.common;

import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import com.google.android.gms.internal.er;

public class ErrorDialogFragment extends DialogFragment {
    private Dialog mDialog;
    private OnCancelListener yK;

    public ErrorDialogFragment() {
        this.mDialog = null;
        this.yK = null;
    }

    public static ErrorDialogFragment newInstance(Dialog dialog) {
        return newInstance(dialog, null);
    }

    public static ErrorDialogFragment newInstance(Object obj, OnCancelListener onCancelListener) {
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Dialog dialog = (Dialog) er.b(obj, (Object)"Cannot display null dialog");
        dialog.setOnCancelListener(null);
        dialog.setOnDismissListener(null);
        errorDialogFragment.mDialog = dialog;
        if (onCancelListener != null) {
            errorDialogFragment.yK = onCancelListener;
        }
        return errorDialogFragment;
    }

    public void onCancel(DialogInterface dialogInterface) {
        if (this.yK != null) {
            this.yK.onCancel(dialogInterface);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        return this.mDialog;
    }

    public void show(FragmentManager fragmentManager, String str) {
        super.show(fragmentManager, str);
    }
}