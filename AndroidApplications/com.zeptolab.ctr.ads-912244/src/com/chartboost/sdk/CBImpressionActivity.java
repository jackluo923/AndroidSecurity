package com.chartboost.sdk;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.widget.RelativeLayout;

public final class CBImpressionActivity extends Activity {
    public static final String PARAM_FULLSCREEN = "paramFullscreen";
    protected Chartboost a;

    public void onBackPressed() {
        if (!this.a.b()) {
            super.onBackPressed();
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        if (getIntent().getBooleanExtra(PARAM_FULLSCREEN, false)) {
            getWindow().addFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        }
        getWindow().setWindowAnimations(0);
        setContentView(new RelativeLayout(this));
        this.a = Chartboost.sharedChartboost();
        this.a.a(this);
    }

    protected void onDestroy() {
        super.onDestroy();
        this.a.c(this);
    }

    protected void onStart() {
        super.onStart();
        this.a.a(this);
    }

    protected void onStop() {
        super.onStop();
        this.a.b(this);
    }
}