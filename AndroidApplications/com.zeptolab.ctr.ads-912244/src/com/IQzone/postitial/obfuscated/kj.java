package com.IQzone.postitial.obfuscated;

import android.content.Intent;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.drive.DriveFile;

final class kj implements mx {
    private /* synthetic */ kf a;

    kj(kf kfVar) {
        this.a = kfVar;
    }

    private Void a() {
        try {
            Intent intent = new Intent(this.a.a.c.i(), getClass().getClassLoader().loadClass("com/IQzone/postitial/activity/backing/AdViewingActivityImpl"));
            intent.addFlags(DriveFile.MODE_READ_ONLY);
            intent.addFlags(GravityCompat.RELATIVE_LAYOUT_DIRECTION);
            intent.addFlags(DriveFile.MODE_WRITE_ONLY);
            intent.addFlags(AccessibilityNodeInfoCompat.ACTION_COPY);
            this.a.a.c.i().startActivity(intent);
        } catch (ClassNotFoundException e) {
            jk.l();
        }
        return null;
    }

    public final /* bridge */ /* synthetic */ Object a(Object obj) {
        return a();
    }
}