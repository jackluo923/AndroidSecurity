package com.vungle.publisher.net.http;

import android.os.Parcel;
import android.os.SystemClock;
import com.vungle.log.Logger;
import com.vungle.publisher.bn;
import com.vungle.publisher.bo;
import com.vungle.publisher.bp;
import com.vungle.publisher.net.http.HttpTransaction.a;
import java.io.IOException;
import java.net.SocketTimeoutException;
import org.json.JSONException;

public abstract class MaxRetryAgeHttpResponseHandler extends bo {
    private int a;
    private int b;
    public int f;
    public int g;
    int h;

    public MaxRetryAgeHttpResponseHandler() {
        this.f = 100;
        this.a = 2000;
        this.b = 300000;
    }

    public void a() {
    }

    public abstract void a(HttpTransaction httpTransaction, bn bnVar, a aVar);

    public bo b(Parcel parcel) {
        super.b(parcel);
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        return this;
    }

    public void b() {
        a();
    }

    public final void b(HttpTransaction httpTransaction, bn bnVar, a aVar) {
        boolean z = 1;
        int i = 0;
        try {
            int i2 = bnVar.a;
            int i3;
            if ((i2 == 200) != 0) {
                try {
                    a(httpTransaction, bnVar, aVar);
                } catch (SocketTimeoutException e) {
                    Logger.d(Logger.NETWORK_TAG, e);
                    i3 = 603;
                } catch (IOException e2) {
                    Logger.w(Logger.NETWORK_TAG, e2);
                    i3 = 600;
                } catch (JSONException e3) {
                    Logger.w(Logger.NETWORK_TAG, e3);
                    i3 = 604;
                }
            } else {
                i3 = i2;
                bp bpVar = httpTransaction.c;
                i2 = this.f > 0 && bpVar.b >= this.f;
                if (i2 == 0) {
                    long j = bpVar.a;
                    i2 = this.h > 0 && SystemClock.elapsedRealtime() - j >= ((long) this.h);
                    if (i2 == 0 && a(i3)) {
                        i2 = bpVar.c;
                        boolean b = b(i3);
                        if (!b) {
                            i2 = bpVar.c - 1;
                            bpVar.c = i2;
                            if (i2 < 0) {
                                Logger.d(Logger.NETWORK_TAG, "Attempted to decrement softRetryCount < 0");
                                bpVar.c = 0;
                            }
                            i2 = bpVar.c;
                        }
                        if (this.g <= 0 || i2 < this.g) {
                            z = false;
                        }
                        if (i == 0) {
                            if (b) {
                                if (i2 > 0) {
                                    i = (int) Math.min(((double) this.a) * Math.pow(2.0d, (double) (i2 - 1)), (double) this.b);
                                }
                                Logger.d(Logger.NETWORK_TAG, new StringBuilder("Retrying ").append(httpTransaction).append(" in ").append(i / 1000).append(" seconds").toString());
                                aVar.a(httpTransaction, i);
                                return;
                            } else {
                                Logger.d(Logger.NETWORK_TAG, new StringBuilder("Retrying ").append(httpTransaction).append(" soon").toString());
                                aVar.a(httpTransaction);
                                return;
                            }
                        }
                    }
                }
                a();
            }
        } catch (Exception e4) {
            Logger.e(Logger.NETWORK_TAG, new StringBuilder("error handling response ").append(bnVar).toString(), e4);
            b();
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
    }
}