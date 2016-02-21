package com.admarvel.android.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import com.admarvel.android.ads.Version;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.LinkedBlockingQueue;

public class e {
    public static e a;
    private String b;
    private int c;
    private final WeakReference d;

    private static final class a {
        private final String a;
        private final boolean b;

        a(String str, boolean z) {
            this.a = str;
            this.b = z;
        }

        public String a_() {
            return this.a;
        }
    }

    private static final class b implements ServiceConnection {
        boolean a;
        private final LinkedBlockingQueue b;

        private b() {
            this.a = false;
            this.b = new LinkedBlockingQueue(1);
        }

        public IBinder a() {
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

    private static final class c implements IInterface {
        private IBinder a;

        public c(IBinder iBinder) {
            this.a = iBinder;
        }

        public String a() {
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

        public boolean a(boolean z, Context context) {
            boolean z2;
            int i = 1;
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
            obtain.writeInt(z ? 1 : 0);
            this.a.transact(GoogleScorer.CLIENT_PLUS, obtain, obtain2, 0);
            obtain2.readException();
            z2 = obtain2.readInt() != 0;
            e eVar = a;
            if (!z2) {
                i = 0;
            }
            eVar.c = i;
            obtain2.recycle();
            obtain.recycle();
            return z2;
        }

        public IBinder asBinder() {
            return this.a;
        }
    }

    public class d implements Runnable {
        private final Context b;

        public d(Context context) {
            this.b = context;
        }

        public void run() {
            if (this.b != null) {
                try {
                    e.e(this.b);
                } catch (Exception e) {
                    Logging.log("FetchAndroidAdvertisingIdUsingIntentRunnable error " + e.getMessage());
                }
            }
        }
    }

    public class e {
        private final Context b;

        public e(Context context) {
            this.b = context;
        }

        private String b() {
            String str = null;
            try {
                Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.b.getApplicationContext());
                return advertisingIdInfo != null ? advertisingIdInfo.getId() : str;
            } catch (IllegalStateException e) {
                Logging.log("IllegalStateException " + e.getMessage() + " in fetching ADvID");
                return str;
            } catch (GooglePlayServicesRepairableException e2) {
                Logging.log("GooglePlayServicesRepairableException " + e2.getMessage() + " in fetching ADvID");
                return str;
            } catch (IOException e3) {
                Logging.log("IOException " + e3.getMessage() + " in fetching ADvID");
                return str;
            } catch (GooglePlayServicesNotAvailableException e4) {
                Logging.log("GooglePlayServicesNotAvailableException " + e4.getMessage() + " in fetching ADvID");
                return str;
            }
        }

        public boolean a() {
            boolean z = false;
            try {
                Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.b.getApplicationContext());
                return advertisingIdInfo != null ? advertisingIdInfo.isLimitAdTrackingEnabled() : z;
            } catch (IllegalStateException e) {
                Logging.log("IllegalStateException " + e.getMessage() + " in fetching ADvID");
                return z;
            } catch (GooglePlayServicesRepairableException e2) {
                Logging.log("GooglePlayServicesRepairableException " + e2.getMessage() + " in fetching ADvID");
                return z;
            } catch (IOException e3) {
                Logging.log("IOException " + e3.getMessage() + " in fetching ADvID");
                return z;
            } catch (GooglePlayServicesNotAvailableException e4) {
                Logging.log("GooglePlayServicesNotAvailableException " + e4.getMessage() + " in fetching ADvID");
                return z;
            }
        }
    }

    private e(Context context) {
        int i;
        int i2 = 1;
        int i3 = 0;
        this.b = "VALUE_NOT_DEFINED";
        this.d = new WeakReference(context);
        try {
            Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient");
            boolean z = true;
        } catch (ClassNotFoundException e) {
            i = i3;
        }
        if (i != 0) {
            e eVar = new e(context);
            String a = eVar.b();
            boolean a2 = eVar.a();
            if (a == null || a.length() <= 0) {
                Logging.log("Not able to fetch GoogleAdv Id form google service library trying form gms IAdvertisingIdService" + this.b);
                if (i3 == 0 && Version.getAndroidSDKVersion() > 8) {
                    Logging.log("Fetching from IAdvertisingIdService ");
                    b();
                    return;
                } else {
                    return;
                }
            } else {
                a(a);
                if (!a2) {
                    i2 = i3;
                }
                a(i2);
                if (this.b != null && this.b.equals("VALUE_NOT_DEFINED")) {
                    Logging.log("Not able to fetch GoogleAdv Id form google service library trying form gms IAdvertisingIdService" + this.b);
                }
            }
        }
        i3 = i;
    }

    public static void a() {
        a = null;
    }

    public static e c(Context context) {
        if (a == null || (a != null && a.b.equals("VALUE_NOT_DEFINED"))) {
            a = null;
            a = new e(context);
        }
        return a;
    }

    private static void e_(Context context) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot be called from the main thread");
        }
        try {
            context.getPackageManager().getPackageInfo(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE, 0);
            ServiceConnection bVar = new b();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
            if (context.bindService(intent, bVar, 1)) {
                try {
                    c cVar = new c(bVar.a());
                    a aVar = new a(cVar.a(), cVar.a(true, context));
                    a.b = aVar.a();
                    context.unbindService(bVar);
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

    public int a(Context context) {
        return this.c;
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(String str) {
        this.b = str;
    }

    public String b(Context context) {
        return this.b != null ? this.b : "VALUE_NOT_DEFINED";
    }

    public void b() {
        Context context = this.d != null ? (Context) this.d.get() : null;
        if (context != null) {
            new Thread(new d(context)).start();
        }
    }
}