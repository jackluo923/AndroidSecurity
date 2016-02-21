package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.actionbarsherlock.R;

public class IcsToast extends Toast {
    public static final int LENGTH_LONG = 1;
    public static final int LENGTH_SHORT = 0;
    private static final String TAG = "Toast";

    public IcsToast(Context context) {
        super(context);
    }

    public static Toast makeText(Context context, int i, int i2) {
        return makeText(context, context.getResources().getString(i), i2);
    }

    public static Toast makeText(Context context, CharSequence charSequence, int i) {
        if (VERSION.SDK_INT >= 14) {
            return Toast.makeText(context, charSequence, i);
        }
        Toast icsToast = new IcsToast(context);
        icsToast.setDuration(i);
        View textView = new TextView(context);
        textView.setText(charSequence);
        textView.setTextColor(-1);
        textView.setGravity(17);
        textView.setBackgroundResource(R.drawable.abs__toast_frame);
        icsToast.setView(textView);
        return icsToast;
    }

    public void setText(CharSequence charSequence) {
        if (VERSION.SDK_INT >= 14) {
            super.setText(charSequence);
        } else if (getView() != null) {
            try {
                ((TextView) getView()).setText(charSequence);
            } catch (ClassCastException e) {
                Log.e(TAG, "This Toast was not created with IcsToast.makeText", e);
            }
        }
    }
}