package com.inmobi.commons.internal;

import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.location.LocationStatusCodes;
import com.millennialmedia.android.MMException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class ActivityRecognitionManager extends IntentService {
    static Object a;
    static Object b;
    static int c;
    private static Object d;
    private static Object e;

    private static class b implements InvocationHandler {
        private b() {
        }

        public void a(Bundle bundle) {
            try {
                PendingIntent service = PendingIntent.getService(InternalSDKUtil.getContext().getApplicationContext(), 0, new Intent(InternalSDKUtil.getContext().getApplicationContext(), ActivityRecognitionManager.class), 134217728);
                if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(InternalSDKUtil.getContext()) == 0) {
                    try {
                        Class.forName("com.google.android.gms.location.ActivityRecognitionClient").getMethod("requestActivityUpdates", new Class[]{Integer.class, PendingIntent.class}).invoke(b, new Object[]{Integer.valueOf(LocationStatusCodes.GEOFENCE_NOT_AVAILABLE), service});
                    } catch (Exception e) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to request activity updates from ActivityRecognition client");
                        Class.forName("com.google.android.gms.common.GooglePlayServicesClient").getMethod("disconnect", (Class[]) 0).invoke(b, (Object[]) 0);
                    }
                } else {
                    Class.forName("com.google.android.gms.common.GooglePlayServicesClient").getMethod("disconnect", (Class[]) 0).invoke(b, (Object[]) 0);
                }
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to request activity updates from ActivityRecognition client");
            }
        }

        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (objArr != null) {
                try {
                    if (method.getName().equals("onConnected")) {
                        a((Bundle) objArr[0]);
                    }
                } catch (Exception e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to invoke method", e);
                }
            }
            return null;
        }
    }

    static {
        a = null;
        b = null;
        d = null;
        e = null;
        c = -1;
    }

    public ActivityRecognitionManager() {
        super("InMobi activity service");
    }

    private static void a(Context context) {
        boolean z = 0;
        try {
            if (a != null) {
                Class cls;
                Class cls2;
                Class forName = Class.forName("com.google.android.gms.common.GooglePlayServicesClient");
                Class forName2 = Class.forName("com.google.android.gms.location.ActivityRecognitionClient");
                if (b != null) {
                    forName.getMethod("disconnect", (Class[]) 0).invoke(b, (Object[]) 0);
                }
                Class[] declaredClasses = forName.getDeclaredClasses();
                int length = declaredClasses.length;
                int i = 0;
                boolean z2 = false;
                while (i < length) {
                    Class cls3 = declaredClasses[i];
                    if (cls3.getSimpleName().equalsIgnoreCase("ConnectionCallbacks")) {
                        d = Proxy.newProxyInstance(cls3.getClassLoader(), new Class[]{cls3}, new b());
                    } else if (cls3.getSimpleName().equalsIgnoreCase("OnConnectionFailedListener")) {
                        e = Proxy.newProxyInstance(cls3.getClassLoader(), new Class[]{cls3}, new b());
                        cls = cls3;
                        cls3 = cls2;
                    } else {
                        cls3 = cls2;
                    }
                    i++;
                    cls2 = cls3;
                }
                b = forName2.getDeclaredConstructor(new Class[]{Context.class, cls2, cls}).newInstance(new Object[]{context, d, e});
                forName.getMethod("connect", (Class[]) 0).invoke(b, (Object[]) 0);
            }
        } catch (ClassCastException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Init: Google play services not included. Cannot get current activity.");
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Init: Something went wrong during ActivityRecognitionManager.init", e2);
        }
    }

    private void a(Intent intent) {
        try {
            Class forName = Class.forName("com.google.android.gms.location.ActivityRecognitionResult");
            if (((Boolean) forName.getMethod("hasResult", new Class[]{Intent.class}).invoke(null, new Object[]{intent})).booleanValue()) {
                a = forName.getMethod("getMostProbableActivity", (Class[]) 0).invoke(forName.getMethod("extractResult", new Class[]{Intent.class}).invoke(null, new Object[]{intent}), (Object[]) 0);
            }
        } catch (ClassNotFoundException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "HandleIntent: Google play services not included. Cannot get current activity.");
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "HandleIntent: Google play services not included. Cannot get current activity.");
        }
    }

    private static boolean a() {
        boolean z = 1;
        if (VERSION.SDK_INT < 8) {
            return false;
        }
        if (c == -1) {
            try {
                a = Class.forName("com.google.android.gms.location.DetectedActivity").getConstructor(new Class[]{Integer.TYPE, Integer.TYPE}).newInstance(new Object[]{Integer.valueOf(-1), Integer.valueOf(MMException.UNKNOWN_ERROR)});
                c = 1;
                if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(InternalSDKUtil.getContext()) != 0) {
                    c = 0;
                    return false;
                }
            } catch (ClassNotFoundException e) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Google play services not included.");
                c = 0;
            } catch (Exception e2) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Google play services not included.");
                c = 0;
            }
        }
        if (c != 1) {
            z = false;
        }
        return z;
    }

    public static int getDetectedActivity() {
        int i = -1;
        try {
            return a == null ? i : ((Integer) Class.forName("com.google.android.gms.location.DetectedActivity").getMethod("getType", (Class[]) 0).invoke(a, (Object[]) 0)).intValue();
        } catch (ClassNotFoundException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "getDetectedActivity: Google play services not included. Returning null.");
            return i;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "getDetectedActivity: Google play services not included. Returning null.");
            return i;
        }
    }

    public static void init(Context context) {
        if (a()) {
            a(context);
        }
    }

    protected void onHandleIntent(Intent intent) {
        if (a()) {
            a(intent);
        }
    }
}