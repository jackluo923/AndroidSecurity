package com.zeptolab.ctr;

import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.TextView;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.ads.R.drawable;
import com.zeptolab.ctr.ads.R.id;
import com.zeptolab.ctr.ads.R.layout;
import com.zeptolab.zbuild.ZR;

public class AndroidUI {
    private static final int icon;

    static {
        drawable com_zeptolab_ctr_ads_R_drawable = ZR.drawable;
        icon = 2130837558;
    }

    public static Builder buildAlert(Context context, String str, String str2, String str3, OnClickListener onClickListener) {
        return buildAlert(context, str, str2, str3, onClickListener, null);
    }

    public static Builder buildAlert(Context context, String str, String str2, String str3, OnClickListener onClickListener, OnCancelListener onCancelListener) {
        Builder builder = new Builder(context);
        builder.setIcon(icon);
        builder.setTitle(str);
        builder.setMessage(str2);
        builder.setPositiveButton(str3, onClickListener);
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        return builder;
    }

    public static Builder buildAlert(Context context, String str, String str2, String str3, OnClickListener onClickListener, String str4, OnClickListener onClickListener2, OnCancelListener onCancelListener) {
        Builder buildAlert = buildAlert(context, str, str2, str3, onClickListener);
        buildAlert.setNegativeButton(str4, onClickListener2);
        if (onCancelListener != null) {
            buildAlert.setOnCancelListener(onCancelListener);
        }
        return buildAlert;
    }

    public static ProgressDialog buildProgressDialog(Context context, String str) {
        ProgressDialog progressDialog = new ProgressDialog(context);
        progressDialog.setMessage(str);
        progressDialog.setIndeterminate(true);
        progressDialog.setProgressStyle(0);
        progressDialog.setCancelable(false);
        return progressDialog;
    }

    public static View descriptionView(Context context, String str, String str2, String str3, String str4, String str5) {
        layout com_zeptolab_ctr_ads_R_layout = ZR.layout;
        View inflate = View.inflate(context, R.layout.item_description, null);
        id idVar = ZR.id;
        ((TextView) inflate.findViewById(R.id.item_name)).setText(str);
        idVar = ZR.id;
        ((TextView) inflate.findViewById(R.id.description)).setText(str2);
        idVar = ZR.id;
        ((TextView) inflate.findViewById(R.id.descriptionText)).setText(str3);
        idVar = ZR.id;
        ((TextView) inflate.findViewById(R.id.price)).setText(str4);
        idVar = ZR.id;
        ((TextView) inflate.findViewById(R.id.priceText)).setText(str5);
        return inflate;
    }
}