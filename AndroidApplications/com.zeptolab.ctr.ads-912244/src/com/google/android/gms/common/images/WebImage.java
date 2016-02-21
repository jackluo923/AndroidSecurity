package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ep;
import com.google.android.gms.plus.PlusShare;
import org.json.JSONException;
import org.json.JSONObject;

public final class WebImage implements SafeParcelable {
    public static final Creator CREATOR;
    private final Uri AR;
    private final int v;
    private final int w;
    private final int wj;

    static {
        CREATOR = new b();
    }

    WebImage(int i, Uri uri, int i2, int i3) {
        this.wj = i;
        this.AR = uri;
        this.w = i2;
        this.v = i3;
    }

    public WebImage(Uri uri) {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int i2) {
        this(1, uri, i, i2);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }

    public WebImage(JSONObject jSONObject) {
        this(c(jSONObject), jSONObject.optInt(MMLayout.KEY_WIDTH, 0), jSONObject.optInt(MMLayout.KEY_HEIGHT, 0));
    }

    private static Uri c(JSONObject jSONObject) {
        if (!jSONObject.has(PlusShare.KEY_CALL_TO_ACTION_URL)) {
            return null;
        }
        try {
            return Uri.parse(jSONObject.getString(PlusShare.KEY_CALL_TO_ACTION_URL));
        } catch (JSONException e) {
            return null;
        }
    }

    public JSONObject cT() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PlusShare.KEY_CALL_TO_ACTION_URL, this.AR.toString());
            jSONObject.put(MMLayout.KEY_WIDTH, this.w);
            jSONObject.put(MMLayout.KEY_HEIGHT, this.v);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(WebImage webImage) {
        if (this == webImage) {
            return true;
        }
        if (webImage == null || !(webImage instanceof WebImage)) {
            return false;
        }
        webImage = webImage;
        return ep.equal(this.AR, webImage.AR) && this.w == webImage.w && this.v == webImage.v;
    }

    public int getHeight() {
        return this.v;
    }

    public Uri getUrl() {
        return this.AR;
    }

    int getVersionCode() {
        return this.wj;
    }

    public int getWidth() {
        return this.w;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{this.AR, Integer.valueOf(this.w), Integer.valueOf(this.v)});
    }

    public String toString() {
        return String.format("Image %dx%d %s", new Object[]{Integer.valueOf(this.w), Integer.valueOf(this.v), this.AR.toString()});
    }

    public void writeToParcel(Parcel parcel, int i) {
        b.a(this, parcel, i);
    }
}