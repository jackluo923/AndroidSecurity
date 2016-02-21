package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

public final class ApplicationMetadata implements SafeParcelable {
    public static final Creator CREATOR;
    String mName;
    private final int wj;
    String wk;
    List wl;
    List wm;
    String wn;
    Uri wo;

    static {
        CREATOR = new a();
    }

    private ApplicationMetadata() {
        this.wj = 1;
        this.wl = new ArrayList();
        this.wm = new ArrayList();
    }

    ApplicationMetadata(int i, String str, String str2, List list, List list2, String str3, Uri uri) {
        this.wj = i;
        this.wk = str;
        this.mName = str2;
        this.wl = list;
        this.wm = list2;
        this.wn = str3;
        this.wo = uri;
    }

    public boolean areNamespacesSupported(List list) {
        return this.wm != null && this.wm.containsAll(list);
    }

    public Uri cR() {
        return this.wo;
    }

    public int describeContents() {
        return 0;
    }

    public String getApplicationId() {
        return this.wk;
    }

    public List getImages() {
        return this.wl;
    }

    public String getName() {
        return this.mName;
    }

    public String getSenderAppIdentifier() {
        return this.wn;
    }

    int getVersionCode() {
        return this.wj;
    }

    public boolean isNamespaceSupported(String str) {
        return this.wm != null && this.wm.contains(str);
    }

    public String toString() {
        return this.mName;
    }

    public void writeToParcel(Parcel parcel, int i) {
        a.a(this, parcel, i);
    }
}