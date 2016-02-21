package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.dr;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class CastDevice implements SafeParcelable {
    public static final Creator CREATOR;
    private String wC;
    String wD;
    private Inet4Address wE;
    private String wF;
    private String wG;
    private String wH;
    private int wI;
    private List wJ;
    private final int wj;

    static {
        CREATOR = new b();
    }

    private CastDevice() {
        this(1, null, null, null, null, null, -1, new ArrayList());
    }

    CastDevice(int i, String str, String str2, String str3, String str4, String str5, int i2, List list) {
        this.wj = i;
        this.wC = str;
        this.wD = str2;
        if (this.wD != null) {
            try {
                InetAddress byName = InetAddress.getByName(this.wD);
                if (byName instanceof Inet4Address) {
                    this.wE = (Inet4Address) byName;
                }
            } catch (UnknownHostException e) {
                this.wE = null;
            }
        }
        this.wF = str3;
        this.wG = str4;
        this.wH = str5;
        this.wI = i2;
        this.wJ = list;
    }

    public static CastDevice getFromBundle(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(CastDevice.class.getClassLoader());
        return (CastDevice) bundle.getParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE");
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(CastDevice castDevice) {
        if (castDevice == this) {
            return true;
        }
        if (!(castDevice instanceof CastDevice)) {
            return false;
        }
        castDevice = castDevice;
        if (getDeviceId() == null) {
            return castDevice.getDeviceId() == null;
        } else if (dr.a(this.wC, castDevice.wC) && dr.a(this.wE, castDevice.wE) && dr.a(this.wG, castDevice.wG) && dr.a(this.wF, castDevice.wF) && dr.a(this.wH, castDevice.wH) && this.wI == castDevice.wI && dr.a(this.wJ, castDevice.wJ)) {
            return true;
        } else {
            return false;
        }
    }

    public String getDeviceId() {
        return this.wC;
    }

    public String getDeviceVersion() {
        return this.wH;
    }

    public String getFriendlyName() {
        return this.wF;
    }

    public WebImage getIcon(int i, int i2) {
        WebImage webImage = null;
        if (this.wJ.isEmpty()) {
            return null;
        }
        if (i <= 0 || i2 <= 0) {
            return (WebImage) this.wJ.get(0);
        }
        Iterator it = this.wJ.iterator();
        WebImage webImage2 = null;
        while (it.hasNext()) {
            WebImage webImage3 = (WebImage) it.next();
            int width = webImage3.getWidth();
            int height = webImage3.getHeight();
            if (width < i || height < i2) {
                if (width < i && height < i2 && (webImage == null || (webImage.getWidth() < width && webImage.getHeight() < height))) {
                    webImage = webImage2;
                }
                webImage3 = webImage;
                webImage = webImage2;
            } else {
                if (webImage2 == null || (webImage2.getWidth() > width && webImage2.getHeight() > height)) {
                    WebImage webImage4 = webImage;
                    webImage = webImage3;
                    webImage3 = webImage4;
                }
                webImage3 = webImage;
                webImage = webImage2;
            }
            webImage2 = webImage;
            webImage = webImage3;
        }
        if (webImage2 == null) {
            webImage2 = webImage != null ? webImage : (WebImage) this.wJ.get(0);
        }
        return webImage2;
    }

    public List getIcons() {
        return Collections.unmodifiableList(this.wJ);
    }

    public Inet4Address getIpAddress() {
        return this.wE;
    }

    public String getModelName() {
        return this.wG;
    }

    public int getServicePort() {
        return this.wI;
    }

    int getVersionCode() {
        return this.wj;
    }

    public boolean hasIcons() {
        return !this.wJ.isEmpty();
    }

    public int hashCode() {
        return this.wC == null ? 0 : this.wC.hashCode();
    }

    public boolean isSameDevice(CastDevice castDevice) {
        if (castDevice == null) {
            return false;
        }
        if (getDeviceId() != null) {
            return dr.a(getDeviceId(), castDevice.getDeviceId());
        }
        return castDevice.getDeviceId() == null;
    }

    public void putInBundle(Bundle bundle) {
        if (bundle != null) {
            bundle.putParcelable("com.google.android.gms.cast.EXTRA_CAST_DEVICE", this);
        }
    }

    public String toString() {
        return String.format("\"%s\" (%s)", new Object[]{this.wF, this.wC});
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}