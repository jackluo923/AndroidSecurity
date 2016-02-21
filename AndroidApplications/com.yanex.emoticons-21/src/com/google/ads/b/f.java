package com.google.ads.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;
import com.google.ads.util.AdUtil;
import com.google.ads.util.g;

final class f implements DownloadListener {
    final /* synthetic */ e a;

    f(e eVar) {
        this.a = eVar;
    }

    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            Context i = this.a.i();
            if (i != null && AdUtil.a(intent, i)) {
                i.startActivity(intent);
            }
        } catch (ActivityNotFoundException e) {
            g.a(new StringBuilder("Couldn't find an Activity to view url/mimetype: ").append(str).append(" / ").append(str4).toString());
        } catch (Throwable th) {
            g.b(new StringBuilder("Unknown error trying to start activity to view URL: ").append(str).toString(), th);
        }
    }
}