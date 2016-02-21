package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.er;
import com.google.android.gms.maps.model.internal.d;

public final class Marker {
    private final d Qe;

    public Marker(d dVar) {
        this.Qe = (d) er.f(dVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Marker)) {
            return false;
        }
        try {
            return this.Qe.h(((Marker) obj).Qe);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getAlpha() {
        try {
            return this.Qe.getAlpha();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getId() {
        try {
            return this.Qe.getId();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public LatLng getPosition() {
        try {
            return this.Qe.getPosition();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getRotation() {
        try {
            return this.Qe.getRotation();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getSnippet() {
        try {
            return this.Qe.getSnippet();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getTitle() {
        try {
            return this.Qe.getTitle();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.Qe.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void hideInfoWindow() {
        try {
            this.Qe.hideInfoWindow();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isDraggable() {
        try {
            return this.Qe.isDraggable();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isFlat() {
        try {
            return this.Qe.isFlat();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isInfoWindowShown() {
        try {
            return this.Qe.isInfoWindowShown();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isVisible() {
        try {
            return this.Qe.isVisible();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void remove() {
        try {
            this.Qe.remove();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setAlpha(float f) {
        try {
            this.Qe.setAlpha(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setAnchor(float f, float f2) {
        try {
            this.Qe.setAnchor(f, f2);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setDraggable(boolean z) {
        try {
            this.Qe.setDraggable(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setFlat(boolean z) {
        try {
            this.Qe.setFlat(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setIcon(BitmapDescriptor bitmapDescriptor) {
        try {
            this.Qe.i(bitmapDescriptor.gK());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setInfoWindowAnchor(float f, float f2) {
        try {
            this.Qe.setInfoWindowAnchor(f, f2);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPosition(LatLng latLng) {
        try {
            this.Qe.setPosition(latLng);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setRotation(float f) {
        try {
            this.Qe.setRotation(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setSnippet(String str) {
        try {
            this.Qe.setSnippet(str);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setTitle(String str) {
        try {
            this.Qe.setTitle(str);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setVisible(boolean z) {
        try {
            this.Qe.setVisible(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void showInfoWindow() {
        try {
            this.Qe.showInfoWindow();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}