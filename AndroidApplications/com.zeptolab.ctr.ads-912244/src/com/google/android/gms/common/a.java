package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class a implements ServiceConnection {
    boolean yG;
    private final BlockingQueue yH;

    public a() {
        this.yG = false;
        this.yH = new LinkedBlockingQueue();
    }

    public IBinder dm() {
        if (this.yG) {
            throw new IllegalStateException();
        }
        this.yG = true;
        return (IBinder) this.yH.take();
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.yH.put(iBinder);
        } catch (InterruptedException e) {
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
    }
}