package com.IQzone.postitial.obfuscated;

import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.drive.DriveFile;

final class jr implements mx {
    private /* synthetic */ jq a;

    jr(jq jqVar) {
        this.a = jqVar;
    }

    public final /* synthetic */ Object a(Object obj) {
        jk.a(this.a.d, this.a.b, (qe) this.a.b.findViewById(bt.d), true);
        kp.a(this.a.a.g(), jk.b(this.a.d));
        jk.l();
        new StringBuilder("launching ").append(this.a.a.f()).toString();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(this.a.a.f()));
        intent.addFlags(DriveFile.MODE_READ_ONLY);
        this.a.d.i().startActivity(intent);
        return null;
    }
}