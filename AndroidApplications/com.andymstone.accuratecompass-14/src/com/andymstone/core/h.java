package com.andymstone.core;

import android.os.Bundle;
import android.support.v4.app.i;
import com.andymstone.compasslib.s;
import com.andymstone.compasslib.t;

public abstract class h extends i {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(t.calibration_activity);
        findViewById(s.back_to_compass_btn).setOnClickListener(new i(this));
    }
}