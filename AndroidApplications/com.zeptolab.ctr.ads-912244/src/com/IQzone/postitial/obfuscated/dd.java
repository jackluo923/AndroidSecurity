package com.IQzone.postitial.obfuscated;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.drive.DriveFile;

final class dd implements Runnable {
    final /* synthetic */ dc a;

    dd(dc dcVar) {
        this.a = dcVar;
    }

    public final void run() {
        if (cl.a(this.a.e) != null) {
            cl.a(this.a.e).a(null);
        } else {
            try {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.a.a));
                intent.addFlags(DriveFile.MODE_READ_ONLY);
                this.a.b.startActivity(intent);
                this.a.c.execute(new de(this));
            } catch (Exception e) {
                cl.d();
            }
        }
    }
}