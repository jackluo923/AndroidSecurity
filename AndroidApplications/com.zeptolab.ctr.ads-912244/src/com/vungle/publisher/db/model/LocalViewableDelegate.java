package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.google.android.gms.plus.PlusShare;
import com.vungle.log.Logger;
import com.vungle.publisher.ai;
import com.vungle.publisher.al;
import com.vungle.publisher.am.a;
import com.vungle.publisher.am.b;
import com.vungle.publisher.as;
import com.vungle.publisher.az;
import com.vungle.publisher.ba;
import com.vungle.publisher.cd;
import com.vungle.publisher.cj;
import com.vungle.publisher.net.http.DownloadHttpGateway;
import com.vungle.publisher.net.http.DownloadHttpRequest;
import com.vungle.publisher.net.http.DownloadHttpResponseHandler;
import com.vungle.publisher.net.http.DownloadHttpTransactionFactory;
import com.vungle.publisher.net.http.HttpTransaction;
import java.io.File;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class LocalViewableDelegate {
    al a;
    b b;
    public String c;
    Integer d;
    @Inject
    DownloadHttpGateway e;
    @Inject
    as f;
    @Inject
    cj g;

    @Singleton
    static class Factory {
        @Inject
        Provider a;

        Factory() {
        }

        final LocalViewableDelegate a(al alVar) {
            LocalViewableDelegate localViewableDelegate = (LocalViewableDelegate) this.a.get();
            localViewableDelegate.a = alVar;
            return localViewableDelegate;
        }
    }

    LocalViewableDelegate() {
    }

    private String h() {
        return this.a.f();
    }

    private b i() {
        return this.a.i();
    }

    final String a() {
        return ((LocalAd) this.a.g()).q();
    }

    final void a(ContentValues contentValues) {
        contentValues.put(PlusShare.KEY_CALL_TO_ACTION_URL, this.c);
        contentValues.put("size", this.d);
    }

    final void a(Cursor cursor) {
        this.c = ai.f(cursor, PlusShare.KEY_CALL_TO_ACTION_URL);
        this.d = ai.d(cursor, "size");
    }

    final void a(StringBuilder stringBuilder) {
        cd.a(stringBuilder, PlusShare.KEY_CALL_TO_ACTION_URL, this.c);
        cd.a(stringBuilder, "size", this.d);
    }

    final File b() {
        String c = c();
        return c == null ? null : new File(c);
    }

    final String c() {
        return ba.a(new Object[]{a(), i() + "." + this.a.k()});
    }

    final void d() {
        Logger.d(Logger.PREPARE_TAG, new StringBuilder("downloading ").append(this.b).append(" for ad_id ").append(h()).toString());
        this.a.a(a.b);
        DownloadHttpGateway downloadHttpGateway = this.e;
        al alVar = this.a;
        DownloadHttpTransactionFactory downloadHttpTransactionFactory = downloadHttpGateway.a;
        String f = alVar.f();
        b i = alVar.i();
        String j = alVar.j();
        String s = alVar.s();
        DownloadHttpRequest downloadHttpRequest = (DownloadHttpRequest) downloadHttpTransactionFactory.a.c();
        downloadHttpRequest.b = j;
        DownloadHttpResponseHandler downloadHttpResponseHandler = (DownloadHttpResponseHandler) downloadHttpTransactionFactory.b.a.get();
        downloadHttpResponseHandler.a = f;
        downloadHttpResponseHandler.b = s;
        downloadHttpResponseHandler.c = i;
        downloadHttpGateway.a(new HttpTransaction(downloadHttpRequest, downloadHttpResponseHandler));
    }

    final boolean e() {
        boolean A = this.a.A();
        if (A) {
            a aVar = a.d;
            Logger.i(Logger.PREPARE_TAG, i() + " " + aVar + " for ad_id " + h());
            this.a.a(aVar);
        } else {
            this.a.a(a.a);
        }
        return A;
    }

    final boolean f() {
        a aVar;
        boolean C = this.a.C();
        String h = h();
        b i = i();
        if (C) {
            Logger.i(Logger.PREPARE_TAG, i + " verified for ad_id " + h);
            aVar = a.d;
        } else {
            Logger.w(Logger.PREPARE_TAG, i + " failed verification; reprocessing ad_id " + h);
            aVar = a.a;
        }
        this.a.a(aVar);
        return C;
    }

    final boolean g() {
        if (this.f.i()) {
            String h = h();
            b i = i();
            if (this.d == null) {
                Logger.d(Logger.PREPARE_TAG, i + " size " + this.d + " for ad_id: " + h);
                return true;
            } else {
                int length;
                File b = b();
                length = b == null ? 0 : (int) b.length();
                if (length == this.d.intValue()) {
                    Logger.d(Logger.PREPARE_TAG, i + " disk size matched size " + this.d + " for ad_id: " + h);
                    return true;
                } else {
                    Logger.d(Logger.PREPARE_TAG, i + " disk size " + length + " failed to match size " + this.d + " for ad_id: " + h);
                    b = b();
                    boolean z;
                    if (b == null) {
                        Logger.w(Logger.PREPARE_TAG, new StringBuilder("null ").append(this.b).append(" file for ad ").append(h()).toString());
                        z = false;
                    } else if (b.exists()) {
                        Logger.v(Logger.PREPARE_TAG, b.getAbsolutePath() + " exists, " + b.length() + " bytes");
                        z = true;
                    } else {
                        Logger.w(Logger.PREPARE_TAG, b.getAbsolutePath() + " missing ");
                        z = false;
                    }
                    if (length == 0) {
                        return false;
                    }
                    Logger.d(Logger.PREPARE_TAG, new StringBuilder("ignoring ").append(i).append(" size mismatch - file exists").toString());
                    return true;
                }
            }
        } else {
            throw new az();
        }
    }
}