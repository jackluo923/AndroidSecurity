package com.jirbo.adcolony;

import android.content.ComponentName;
import android.content.Context;
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

final class ADCAdvertisingIdClient {

    static final class AdInfo {
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

    private static final class AdvertisingConnection implements ServiceConnection {
        private final LinkedBlockingQueue queue;
        boolean retrieved;

        private AdvertisingConnection() {
            this.retrieved = false;
            this.queue = new LinkedBlockingQueue(1);
        }

        public IBinder getBinder() {
            if (this.retrieved) {
                throw new IllegalStateException();
            }
            this.retrieved = true;
            return (IBinder) this.queue.take();
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.queue.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    private static final class AdvertisingInterface implements IInterface {
        private IBinder binder;

        public AdvertisingInterface(IBinder iBinder) {
            this.binder = iBinder;
        }

        public IBinder asBinder() {
            return this.binder;
        }

        public String getId() {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            this.binder.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            String readString = obtain2.readString();
            obtain2.recycle();
            obtain.recycle();
            return readString;
        }

        public boolean isLimitAdTrackingEnabled(boolean z) {
            boolean z2 = true;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            obtain.writeInt(z ? 1 : 0);
            this.binder.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
            obtain2.readException();
            if (obtain2.readInt() == 0) {
                z2 = false;
            }
            obtain2.recycle();
            obtain.recycle();
            return z2;
        }
    }

    ADCAdvertisingIdClient() {
    }

    public static AdInfo getAdvertisingIdInfo(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, 0);
            ServiceConnection advertisingConnection = new AdvertisingConnection();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
            if (context.bindService(intent, advertisingConnection, 1)) {
                try {
                    AdvertisingInterface advertisingInterface = new AdvertisingInterface(advertisingConnection.getBinder());
                    AdInfo adInfo = new AdInfo(advertisingInterface.getId(), advertisingInterface.isLimitAdTrackingEnabled(true));
                    context.unbindService(advertisingConnection);
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