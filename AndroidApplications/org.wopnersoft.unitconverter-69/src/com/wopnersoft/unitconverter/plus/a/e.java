package com.wopnersoft.unitconverter.plus.a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.a.a.a.b;
import com.actionbarsherlock.R;

// compiled from: ProGuard
class e implements ServiceConnection {
    final /* synthetic */ d a;
    private final /* synthetic */ i b;

    e(d dVar, i iVar) {
        this.a = dVar;
        this.b = iVar;
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (!this.a.d) {
            this.a.c("Billing service connected.");
            this.a.i = b.a(iBinder);
            String packageName = this.a.h.getPackageName();
            try {
                this.a.c("Checking for in-app billing 3 support.");
                int a = this.a.i.a(R.styleable.SherlockTheme_actionBarTabTextStyle, packageName, "inapp");
                if (a != 0) {
                    if (this.b != null) {
                        this.b.a(new k(a, "Error checking for billing v3 support."));
                    }
                    this.a.e = false;
                } else {
                    this.a.c(new StringBuilder("In-app billing version 3 supported for ").append(packageName).toString());
                    int a2 = this.a.i.a(R.styleable.SherlockTheme_actionBarTabTextStyle, packageName, "subs");
                    if (a2 == 0) {
                        this.a.c("Subscriptions AVAILABLE.");
                        this.a.e = true;
                    } else {
                        this.a.c(new StringBuilder("Subscriptions NOT AVAILABLE. Response: ").append(a2).toString());
                    }
                    this.a.c = true;
                    if (this.b != null) {
                        this.b.a(new k(0, "Setup successful."));
                    }
                }
            } catch (RemoteException e) {
                RemoteException remoteException = e;
                if (this.b != null) {
                    this.b.a(new k(-1001, "RemoteException while setting up in-app billing."));
                }
                remoteException.printStackTrace();
            }
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.a.c("Billing service disconnected.");
        this.a.i = null;
    }
}