package com.amazon.device.ads;

import android.app.Activity;

interface IAdActivityAdapter {
    void onCreate();

    void onPause();

    void onResume();

    void onStop();

    void preOnCreate();

    void setActivity(Activity activity);
}