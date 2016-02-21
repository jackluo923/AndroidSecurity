package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.internal.er;

public class b extends DialogFragment {
    private Dialog mDialog;
    private OnCancelListener yK;

    public b() {
        this.mDialog = null;
        this.yK = null;
    }

    public static b a(Object obj, OnCancelListener onCancelListener) {
        b bVar = new b();
        Dialog dialog = (Dialog) er.b(obj, (Object)"Cannot display null dialog");
        dialog.setOnCancelListener(null);
        dialog.setOnDismissListener(null);
        bVar.mDialog = dialog;
        if (onCancelListener != null) {
            bVar.yK = onCancelListener;
        }
        return bVar;
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