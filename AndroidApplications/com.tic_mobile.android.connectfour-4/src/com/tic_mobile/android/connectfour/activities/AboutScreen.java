package com.tic_mobile.android.connectfour.activities;

import android.app.Activity;
import android.os.Bundle;
import com.tic_mobile.android.connectfour.R;

public class AboutScreen extends Activity {
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.about_screen);
        setTitle(getString(R.string.aboutActivityName));
    }
}