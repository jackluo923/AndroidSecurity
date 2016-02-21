package com.tic_mobile.android.connectfour.activities;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import com.tic_mobile.android.connectfour.R;

public class SplashScreen extends Activity {
    static final int splashTime = 2500;
    boolean active;

    public SplashScreen() {
        this.active = true;
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().requestFeature(1);
        setContentView(R.layout.splash_screen);
        new Thread() {
            public void run() {
                int waited = 0;
                while (SplashScreen.this.active && waited < 2500) {
                    try {
                        sleep(100);
                        if (SplashScreen.this.active) {
                            waited += 100;
                        }
                    } catch (InterruptedException e) {
                    }
                }
                SplashScreen.this.finish();
            }
        }.start();
    }

    public boolean onKeyDown(int keyCode, KeyEvent keyEvent) {
        super.onKeyDown(keyCode, keyEvent);
        this.active = false;
        return true;
    }
}