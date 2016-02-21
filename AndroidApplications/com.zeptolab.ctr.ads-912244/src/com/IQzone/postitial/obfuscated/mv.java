package com.IQzone.postitial.obfuscated;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

public class mv extends Handler {
    private static final ql a;

    static {
        a = new ql();
    }

    public mv(Looper looper) {
        super(looper);
    }

    public void dispatchMessage(Message message) {
        try {
            super.dispatchMessage(message);
        } catch (Throwable th) {
            ql qlVar = a;
        }
    }

    public void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Throwable th) {
            ql qlVar = a;
        }
    }
}