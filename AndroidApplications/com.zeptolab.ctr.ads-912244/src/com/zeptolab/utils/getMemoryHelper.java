package com.zeptolab.utils;

import android.app.ActivityManager;

class getMemoryHelper {
    getMemoryHelper() {
    }

    int getMemory(ActivityManager activityManager) {
        return activityManager.getMemoryClass();
    }
}