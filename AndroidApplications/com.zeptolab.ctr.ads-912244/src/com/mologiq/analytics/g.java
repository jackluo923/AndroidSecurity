package com.mologiq.analytics;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

class g {
    static g a;
    private final String b;
    private final boolean c;

    private static final class a implements ServiceConnection {
        boolean a;
        private final LinkedBlockingQueue b;

        private a() {
            this.a = false;
            this.b = new LinkedBlockingQueue(1);
        }

        IBinder a_() {
            if (this.a) {
                throw new IllegalStateException();
            }
            this.a = true;
            return (IBinder) this.b.take();
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    private static final class b implements IInterface {
        private IBinder a;

        b(IBinder iBinder) {
            this.a = iBinder;
        }

        String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            String readString = obtain2.readString();
            obtain2.readInt();
            obtain2.recycle();
            obtain.recycle();
            return readString;
        }

        boolean a(boolean z, Context context) {
            boolean z2 = true;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            obtain.writeInt(z ? 1 : 0);
            this.a.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() == 0) {
                z2 = false;
            }
            obtain2.recycle();
            obtain.recycle();
            return z2;
        }

        public IBinder asBinder() {
            return this.a;
        }
    }

    class c {
        private final Context b;

        c(Context context) {
            this.b = context;
        }

        private String b() {
            String str = null;
            try {
                Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.b.getApplicationContext());
                return advertisingIdInfo != null ? advertisingIdInfo.getId() : str;
            } catch (Exception e) {
                return str;
            }
        }

        boolean a() {
            boolean z = false;
            try {
                Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.b.getApplicationContext());
                return advertisingIdInfo != null ? advertisingIdInfo.isLimitAdTrackingEnabled() : z;
            } catch (Exception e) {
                return z;
            }
        }
    }

    private g(Context context) {
        boolean z = 1;
        boolean z2 = false;
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            Class.forName("com.google.android.gms.common.GooglePlayServicesNotAvailableException");
            Class.forName("com.google.android.gms.common.GooglePlayServicesRepairableException");
        } catch (ClassNotFoundException e) {
            z = z2;
        }
        if (i != 0) {
            c cVar = new c(context);
            this.b = cVar.b();
            this.c = cVar.a();
        } else {
            String str = null;
            try {
                b b = b(context);
                str = b.a();
                z2 = b.a(true, context);
            } catch (Exception e2) {
            }
            this.b = str;
            this.c = z2;
        }
    }

    static g a(Context context) {
        if (a == null) {
            a = new g(context);
        }
        return a;
    }

    @SuppressLint({"NewApi"})
    private static b b(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, 0);
            ServiceConnection aVar = new a();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
            if (context.bindService(intent, aVar, 1)) {
                try {
                    b bVar = new b(aVar.a());
                    context.unbindService(aVar);
                    return bVar;
                } catch (Exception e) {
                    throw e;
                } catch (Throwable th) {
                }
            } else {
                throw new IOException("Google Play connection failed");
            }
        } catch (Exception e2) {
            throw e2;
        }
    }

    static void c() {
        a = null;
    }

    String a() {
        return this.b;
    }

    boolean b() {
        return this.c;
    }
}