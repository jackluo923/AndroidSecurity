package com.vungle.publisher.net.http;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.vungle.publisher.bo;
import com.vungle.publisher.bp;
import com.vungle.publisher.inject.Injector;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class HttpTransaction implements Parcelable {
    public static final Creator CREATOR;
    public HttpRequest a;
    bo b;
    bp c;
    @Inject
    HttpTransport d;

    public static interface a {
        void a_(HttpTransaction httpTransaction);

        void a_(HttpTransaction httpTransaction, int i);
    }

    @Singleton
    public static class Creator implements android.os.Parcelable.Creator {
        @Inject
        Provider a;

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            HttpTransaction httpTransaction = (HttpTransaction) this.a.get();
            ClassLoader classLoader = HttpTransaction.class.getClassLoader();
            httpTransaction.a = (HttpRequest) parcel.readParcelable(classLoader);
            httpTransaction.b = (bo) parcel.readParcelable(classLoader);
            httpTransaction.c = (bp) parcel.readParcelable(classLoader);
            return httpTransaction;
        }

        public /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new HttpTransaction[i];
        }
    }

    static {
        CREATOR = (Creator) Injector.getInstance().a.a(Creator.class);
    }

    HttpTransaction() {
        this.c = new bp();
    }

    public HttpTransaction(HttpRequest httpRequest, bo boVar) {
        this.c = new bp();
        this.a = httpRequest;
        this.b = boVar;
    }

    public final void a(a aVar) {
        bp bpVar = this.c;
        if (bpVar.a <= 0) {
            bpVar.a = SystemClock.elapsedRealtime();
        }
        bpVar.b++;
        bpVar.c++;
        bo boVar = this.b;
        HttpTransport httpTransport = this.d;
        boVar.b(this, HttpTransport.a(this.a), aVar);
    }

    public int describeContents() {
        return 0;
    }

    public String toString() {
        return new StringBuilder("{").append(this.a).append(", ").append(this.c).append("}").toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeParcelable(this.b, i);
        parcel.writeParcelable(this.c, i);
    }
}