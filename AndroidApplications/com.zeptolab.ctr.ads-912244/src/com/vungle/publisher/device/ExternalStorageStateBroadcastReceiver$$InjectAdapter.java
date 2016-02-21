package com.vungle.publisher.device;

import a.a.b;
import a.a.l;
import android.content.Context;
import com.vungle.publisher.ad.AdManager;
import java.util.Set;
import javax.inject.Provider;

public final class ExternalStorageStateBroadcastReceiver$$InjectAdapter extends b implements a.b, Provider {
    private b a;
    private b b;

    public ExternalStorageStateBroadcastReceiver$$InjectAdapter() {
        super("com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver", "members/com.vungle.publisher.device.ExternalStorageStateBroadcastReceiver", true, ExternalStorageStateBroadcastReceiver.class);
    }

    public final void attach(l lVar) {
        this.a = lVar.a("com.vungle.publisher.ad.AdManager", (Object)ExternalStorageStateBroadcastReceiver.class, getClass().getClassLoader());
        this.b = lVar.a("android.content.Context", (Object)ExternalStorageStateBroadcastReceiver.class, getClass().getClassLoader());
    }

    public final ExternalStorageStateBroadcastReceiver get() {
        ExternalStorageStateBroadcastReceiver externalStorageStateBroadcastReceiver = new ExternalStorageStateBroadcastReceiver();
        injectMembers(externalStorageStateBroadcastReceiver);
        return externalStorageStateBroadcastReceiver;
    }

    public final void getDependencies(Set set, Set set2) {
        set2.add(this.a);
        set2.add(this.b);
    }

    public final void injectMembers(ExternalStorageStateBroadcastReceiver externalStorageStateBroadcastReceiver) {
        externalStorageStateBroadcastReceiver.a = (AdManager) this.a.get();
        externalStorageStateBroadcastReceiver.b = (Context) this.b.get();
    }
}