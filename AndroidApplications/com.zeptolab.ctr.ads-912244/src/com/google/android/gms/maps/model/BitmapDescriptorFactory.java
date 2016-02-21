package com.google.android.gms.maps.model;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.model.internal.a;

public final class BitmapDescriptorFactory {
    public static final float HUE_AZURE = 210.0f;
    public static final float HUE_BLUE = 240.0f;
    public static final float HUE_CYAN = 180.0f;
    public static final float HUE_GREEN = 120.0f;
    public static final float HUE_MAGENTA = 300.0f;
    public static final float HUE_ORANGE = 30.0f;
    public static final float HUE_RED = 0.0f;
    public static final float HUE_ROSE = 330.0f;
    public static final float HUE_VIOLET = 270.0f;
    public static final float HUE_YELLOW = 60.0f;
    private static a PE;

    private BitmapDescriptorFactory() {
    }

    public static void a(a aVar) {
        if (PE == null) {
            PE = (a) er.f(aVar);
        }
    }

    public static BitmapDescriptor defaultMarker() {
        try {
            return new BitmapDescriptor(hd().hi());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static BitmapDescriptor defaultMarker(float f) {
        try {
            return new BitmapDescriptor(hd().c(f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static BitmapDescriptor fromAsset(String str) {
        try {
            return new BitmapDescriptor(hd().aL(str));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static BitmapDescriptor fromBitmap(Bitmap bitmap) {
        try {
            return new BitmapDescriptor(hd().b(bitmap));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static BitmapDescriptor fromFile(String str) {
        try {
            return new BitmapDescriptor(hd().aM(str));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static BitmapDescriptor fromPath(String str) {
        try {
            return new BitmapDescriptor(hd().aN(str));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static BitmapDescriptor fromResource(int i) {
        try {
            return new BitmapDescriptor(hd().bz(i));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    private static a hd() {
        return (a) er.b(PE, (Object)"IBitmapDescriptorFactory is not initialized");
    }
}