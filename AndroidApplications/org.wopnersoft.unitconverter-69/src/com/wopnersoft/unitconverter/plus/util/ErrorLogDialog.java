package com.wopnersoft.unitconverter.plus.util;

import android.os.Bundle;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.actionbarsherlock.R;
import com.actionbarsherlock.app.SherlockActivity;
import com.wopnersoft.unitconverter.plus.UnitConverterApplication;

// compiled from: ProGuard
public class ErrorLogDialog extends SherlockActivity {
    protected void onCreate(Bundle bundle) {
        setTheme(R.style.Theme_Sherlock_NoActionBar);
        super.onCreate(bundle);
        setContentView(2130903073);
        UnitConverterApplication unitConverterApplication = (UnitConverterApplication) getApplication();
        ((TextView) findViewById(2131034135)).setText(unitConverterApplication.c());
        if (unitConverterApplication.d().booleanValue()) {
            ImageView imageView = (ImageView) findViewById(2131034130);
            imageView.setClickable(true);
            imageView.setOnClickListener(new v(this, unitConverterApplication));
            Button button = (Button) findViewById(2131034240);
            button.setVisibility(0);
            button.setOnClickListener(new w(this, unitConverterApplication));
            button = (Button) findViewById(2131034241);
            button.setVisibility(0);
            button.setOnClickListener(new x(this, unitConverterApplication));
            button = (Button) findViewById(2131034243);
            button.setVisibility(0);
            button.setOnClickListener(new y(this));
            button = (Button) findViewById(2131034244);
            button.setVisibility(0);
            button.setOnClickListener(new z(this, unitConverterApplication));
        }
    }
}