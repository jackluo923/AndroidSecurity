package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.model.internal.e;
import java.util.List;

public final class Polygon {
    private final e Qn;

    public Polygon(e eVar) {
        this.Qn = (e) er.f(eVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Polygon)) {
            return false;
        }
        try {
            return this.Qn.a(((Polygon) obj).Qn);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int getFillColor() {
        try {
            return this.Qn.getFillColor();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public List getHoles() {
        try {
            return this.Qn.getHoles();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getId() {
        try {
            return this.Qn.getId();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public List getPoints() {
        try {
            return this.Qn.getPoints();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int getStrokeColor() {
        try {
            return this.Qn.getStrokeColor();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getStrokeWidth() {
        try {
            return this.Qn.getStrokeWidth();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getZIndex() {
        try {
            return this.Qn.getZIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.Qn.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isGeodesic() {
        try {
            return this.Qn.isGeodesic();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isVisible() {
        try {
            return this.Qn.isVisible();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void remove() {
        try {
            this.Qn.remove();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setFillColor(int i) {
        try {
            this.Qn.setFillColor(i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setGeodesic(boolean z) {
        try {
            this.Qn.setGeodesic(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setHoles(List list) {
        try {
            this.Qn.setHoles(list);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPoints(List list) {
        try {
            this.Qn.setPoints(list);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setStrokeColor(int i) {
        try {
            this.Qn.setStrokeColor(i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setStrokeWidth(float f) {
        try {
            this.Qn.setStrokeWidth(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setVisible(boolean z) {
        try {
            this.Qn.setVisible(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setZIndex(float f) {
        try {
            this.Qn.setZIndex(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}