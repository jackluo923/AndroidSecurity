package com.andymstone.core;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v4.app.e;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

public class f extends e {
    private Button Y;
    private Button Z;
    private Button aa;
    private TextView ab;
    private TextView ac;
    private View ad;
    private ViewGroup ae;

    private int a(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(o.MyAlertDialog);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId == -1 ? n.Theme_MyAlertDialog_Dark : resourceId;
    }

    private void a(Button button, String str, OnClickListener onClickListener) {
        button.setVisibility(0);
        button.setText(str);
        button.setOnClickListener(onClickListener);
    }

    private SpannableString b(String str) {
        CharSequence spannableString = new SpannableString(str);
        Linkify.addLinks(spannableString, 15);
        return spannableString;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(l.alert_dialog, viewGroup);
        this.Y = (Button) inflate.findViewById(k.button1);
        this.Z = (Button) inflate.findViewById(k.button2);
        this.aa = (Button) inflate.findViewById(k.button3);
        this.ab = (TextView) inflate.findViewById(k.message);
        this.ae = (ViewGroup) inflate.findViewById(k.customPanel);
        this.ac = (TextView) inflate.findViewById(k.title);
        this.ad = inflate.findViewById(k.titlePanel);
        return inflate;
    }

    public void a(Context context) {
        super.a((Activity)context);
        a(1, a(context));
    }

    public void a(Bundle bundle) {
        super.a(bundle);
    }

    protected void a(String str) {
        this.ad.setVisibility(0);
        this.ac.setText(str);
    }

    protected void a(String str, OnClickListener onClickListener) {
        a(this.Y, str, onClickListener);
    }

    protected void a(String str, boolean z) {
        TextView textView = this.ab;
        if (z) {
            str = b(str);
        }
        textView.setText(str);
        if (z) {
            this.ab.setMovementMethod(LinkMovementMethod.getInstance());
        }
    }

    protected void b(int i) {
        this.ad.setVisibility(0);
        this.ac.setText(i);
    }

    protected void b(String str, OnClickListener onClickListener) {
        a(this.Z, str, onClickListener);
    }

    protected void c(String str, OnClickListener onClickListener) {
        a(this.aa, str, onClickListener);
    }
}