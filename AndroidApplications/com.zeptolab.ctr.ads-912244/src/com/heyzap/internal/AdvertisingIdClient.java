package com.heyzap.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;

public final class AdvertisingIdClient {

    public static final class AdInfo {
        private final String advertisingId;
        private final boolean limitAdTrackingEnabled;

        AdInfo(String str, boolean z) {
            this.advertisingId = str;
            this.limitAdTrackingEnabled = z;
        }

        public String getId() {
            return this.advertisingId;
        }

        public boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }
    }

    private static final class a implements ServiceConnection {
        boolean a;
        private final LinkedBlockingQueue b;

        private a() {
            this.a = false;
            this.b = new LinkedBlockingQueue(1);
        }

        public IBinder a_() {
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
                e.printStackTrace();
            }
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    private static final class b implements IInterface {
        private IBinder a;

        public b(IBinder iBinder) {
            this.a = iBinder;
        }

        public String a() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.a.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            String readString = obtain2.readString();
            obtain2.recycle();
            obtain.recycle();
            return readString;
        }

        public boolean a(boolean z) {
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

    public static AdInfo getAdvertisingIdInfo(Object obj) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            obj.getPackageManager().getPackageInfo(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, 0);
            ServiceConnection aVar = new a();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
            Logger.log(obj);
            if (obj.bindService(intent, aVar, 1)) {
                try {
                    b bVar = new b(aVar.a());
                    AdInfo adInfo = new AdInfo(bVar.a(), bVar.a(true));
                    obj.unbindService(aVar);
                    return adInfo;
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
}