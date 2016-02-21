package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.model.internal.b;

public final class Circle {
    private final b PJ;

    public Circle(b bVar) {
        this.PJ = (b) er.f(bVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Circle)) {
            return false;
        }
        try {
            return this.PJ.a(((Circle) obj).PJ);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public LatLng getCenter() {
        try {
            return this.PJ.getCenter();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int getFillColor() {
        try {
            return this.PJ.getFillColor();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getId() {
        try {
            return this.PJ.getId();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public double getRadius() {
        try {
            return this.PJ.getRadius();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int getStrokeColor() {
        try {
            return this.PJ.getStrokeColor();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getStrokeWidth() {
        try {
            return this.PJ.getStrokeWidth();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getZIndex() {
        try {
            return this.PJ.getZIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.PJ.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isVisible() {
        try {
            return this.PJ.isVisible();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void remove() {
        try {
            this.PJ.remove();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setCenter(LatLng latLng) {
        try {
            this.PJ.setCenter(latLng);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setFillColor(int i) {
        try {
            this.PJ.setFillColor(i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setRadius(double d) {
        try {
            this.PJ.setRadius(d);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setStrokeColor(int i) {
        try {
            this.PJ.setStrokeColor(i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setStrokeWidth(float f) {
        try {
            this.PJ.setStrokeWidth(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setVisible(boolean z) {
        try {
            this.PJ.setVisible(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setZIndex(float f) {
        try {
            this.PJ.setZIndex(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}