package com.andymstone.accuratecompass;

import android.app.Application;
import org.acra.ACRA;
import org.acra.a.a;
import org.acra.sender.HttpSender.Method;
import org.acra.sender.HttpSender.Type;

@a(O = Method.PUT, P = Type.JSON, j = "", k = "https://crash.stonekick.com/crash_report/acra-accuratecompass", l = "ou8afoyd", m = "me7dusye")
public class AcraApplication extends Application {
    public void onCreate() {
        ACRA.init(this);
        super.onCreate();
    }
}