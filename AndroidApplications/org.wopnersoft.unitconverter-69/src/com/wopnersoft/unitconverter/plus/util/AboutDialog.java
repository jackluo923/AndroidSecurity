package com.wopnersoft.unitconverter.plus.util;

import android.app.Dialog;
import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.app.SherlockActivity;
import com.wopnersoft.unitconverter.plus.d.f;

// compiled from: ProGuard
public class AboutDialog extends SherlockActivity {
    protected void onCreate(Bundle bundle) {
        setTheme(R.style.Theme_Sherlock_Light_NoActionBar);
        super.onCreate(bundle);
        setContentView(2130903040);
        ((TextView) findViewById(2131034135)).setText(new StringBuilder(String.valueOf(getString(2131361807))).append("\n\n").append(getString(2131361974)).toString());
        ((ImageView) findViewById(2131034130)).setImageDrawable(f.a().a("robot_launcher_plus"));
        ((Button) findViewById(2131034137)).setOnClickListener(new a(this));
        ((Button) findViewById(2131034136)).setOnClickListener(new b(this));
    }

    protected Dialog onCreateDialog(int i) {
        return i == 0 ? am.d(this) : super.onCreateDialog(i);
    }
}