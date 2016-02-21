package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.model.internal.IPolylineDelegate;
import java.util.List;

public final class Polyline {
    private final IPolylineDelegate Qr;

    public Polyline(IPolylineDelegate iPolylineDelegate) {
        this.Qr = (IPolylineDelegate) er.f(iPolylineDelegate);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Polyline)) {
            return false;
        }
        try {
            return this.Qr.equalsRemote(((Polyline) obj).Qr);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int getColor() {
        try {
            return this.Qr.getColor();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getId() {
        try {
            return this.Qr.getId();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public List getPoints() {
        try {
            return this.Qr.getPoints();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getWidth() {
        try {
            return this.Qr.getWidth();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getZIndex() {
        try {
            return this.Qr.getZIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.Qr.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isGeodesic() {
        try {
            return this.Qr.isGeodesic();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isVisible() {
        try {
            return this.Qr.isVisible();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void remove() {
        try {
            this.Qr.remove();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setColor(int i) {
        try {
            this.Qr.setColor(i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setGeodesic(boolean z) {
        try {
            this.Qr.setGeodesic(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPoints(List list) {
        try {
            this.Qr.setPoints(list);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setVisible(boolean z) {
        try {
            this.Qr.setVisible(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setWidth(float f) {
        try {
            this.Qr.setWidth(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setZIndex(float f) {
        try {
            this.Qr.setZIndex(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}