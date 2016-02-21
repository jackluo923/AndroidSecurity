package com.andymstone.compasslib;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Build.VERSION;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.BadTokenException;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.andymstone.core.o;

class ag {
    private int a;
    private boolean b;
    private PopupWindow c;
    private TextView d;
    private TextView e;
    private Button f;
    private View g;
    private Dialog h;

    ag(Context context, int i, al alVar) {
        this.a = -1;
        this.b = false;
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(t.warning_window_layout, null, false);
        this.c = new PopupWindow(inflate, i, -2, false);
        this.d = (TextView) this.c.getContentView().findViewById(s.popupTxt);
        this.e = (TextView) this.c.getContentView().findViewById(s.titleTxt);
        this.f = (Button) inflate.findViewById(s.calibrate_btn);
        this.f.setOnClickListener(new ah(this, alVar));
        this.f.setVisibility(o.MyAlertDialog_MAD_messagePadding);
        this.g = inflate.findViewById(s.dismiss_warning_btn);
        this.g.setOnClickListener(new ai(this, alVar));
    }

    @TargetApi(8)
    private void a(View view) {
        this.h.setOnShowListener(new ak(this, view));
    }

    void a() {
        if (this.f != null) {
            this.f.setText(this.f.getResources().getString(u.btn_calibration_instructions));
            this.f.setVisibility(0);
        }
    }

    void a(int i, int i2) {
        if (i2 != this.a) {
            this.d.setText(i2);
            this.a = i2;
            this.e.setText(i);
        }
    }

    void a(Activity activity) {
        if (this.h == null && !this.b) {
            this.h = new Dialog(activity, 16973840);
            View inflate = LayoutInflater.from(activity).inflate(t.empty, null);
            LayoutParams attributes = this.h.getWindow().getAttributes();
            attributes.dimAmount = 0.75f;
            this.h.getWindow().setAttributes(attributes);
            this.h.getWindow().addFlags(o.MyAlertDialog_myAlertDialogButtonDrawable);
            this.h.getWindow().addFlags(1024);
            this.h.setContentView(inflate);
            this.h.setCanceledOnTouchOutside(true);
            if (VERSION.SDK_INT >= 8) {
                a(inflate);
            }
            this.h.setOnDismissListener(new aj(this));
            try {
                if (!activity.isFinishing()) {
                    this.h.show();
                }
            } catch (BadTokenException e) {
            }
        }
    }

    void b() {
        if (this.f != null) {
            this.f.setText(this.f.getResources().getString(u.btn_field_strength));
            this.f.setVisibility(0);
        }
    }

    void c() {
        if (this.f != null) {
            this.f.setVisibility(o.MyAlertDialog_MAD_messagePadding);
        }
    }

    void d() {
        if (this.h != null) {
            this.c.dismiss();
            this.h.dismiss();
            this.h = null;
        }
    }
}