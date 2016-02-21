package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class CameraUpdateFactory {
    private static ICameraUpdateFactoryDelegate OJ;

    private CameraUpdateFactory() {
    }

    static void a(ICameraUpdateFactoryDelegate iCameraUpdateFactoryDelegate) {
        if (OJ == null) {
            OJ = (ICameraUpdateFactoryDelegate) er.f(iCameraUpdateFactoryDelegate);
        }
    }

    private static ICameraUpdateFactoryDelegate gL() {
        return (ICameraUpdateFactoryDelegate) er.b(OJ, (Object)"CameraUpdateFactory is not initialized");
    }

    public static CameraUpdate newCameraPosition(CameraPosition cameraPosition) {
        try {
            return new CameraUpdate(gL().newCameraPosition(cameraPosition));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate newLatLng(LatLng latLng) {
        try {
            return new CameraUpdate(gL().newLatLng(latLng));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i) {
        try {
            return new CameraUpdate(gL().newLatLngBounds(latLngBounds, i));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate newLatLngBounds(LatLngBounds latLngBounds, int i, int i2, int i3) {
        try {
            return new CameraUpdate(gL().newLatLngBoundsWithSize(latLngBounds, i, i2, i3));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate newLatLngZoom(LatLng latLng, float f) {
        try {
            return new CameraUpdate(gL().newLatLngZoom(latLng, f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate scrollBy(float f, float f2) {
        try {
            return new CameraUpdate(gL().scrollBy(f, f2));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate zoomBy(float f) {
        try {
            return new CameraUpdate(gL().zoomBy(f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate zoomBy(float f, Point point) {
        try {
            return new CameraUpdate(gL().zoomByWithFocus(f, point.x, point.y));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate zoomIn() {
        try {
            return new CameraUpdate(gL().zoomIn());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate zoomOut() {
        try {
            return new CameraUpdate(gL().zoomOut());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public static CameraUpdate zoomTo(float f) {
        try {
            return new CameraUpdate(gL().zoomTo(f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}