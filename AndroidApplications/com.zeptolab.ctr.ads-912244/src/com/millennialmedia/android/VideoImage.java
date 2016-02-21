package com.millennialmedia.android;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.widget.ImageButton;
import android.widget.RelativeLayout.LayoutParams;
import com.admarvel.android.ads.Constants;
import com.google.android.gms.plus.PlusShare;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.json.JSONArray;
import org.json.JSONObject;

class VideoImage implements Parcelable, Externalizable {
    public static final Creator CREATOR;
    static final long a = 808334584720834205L;
    private static final String w;
    String b;
    long c;
    String[] d;
    String e;
    String f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l;
    int m;
    int n;
    long o;
    long p;
    float q;
    float r;
    long s;
    boolean t;
    ImageButton u;
    LayoutParams v;

    static {
        w = VideoImage.class.getName();
        CREATOR = new Creator() {
            public VideoImage createFromParcel(Parcel parcel) {
                return new VideoImage(parcel);
            }

            public VideoImage[] newArray(int i) {
                return new VideoImage[i];
            }
        };
    }

    public VideoImage() {
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.q = 1.0f;
        this.r = 1.0f;
        this.s = 1000;
    }

    VideoImage(Parcel parcel) {
        boolean z = true;
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.q = 1.0f;
        this.r = 1.0f;
        this.s = 1000;
        try {
            this.b = parcel.readString();
            this.c = parcel.readLong();
            this.d = new String[parcel.readInt()];
            parcel.readStringArray(this.d);
            this.e = parcel.readString();
            this.f = parcel.readString();
            this.g = parcel.readInt();
            this.h = parcel.readInt();
            this.i = parcel.readInt();
            this.j = parcel.readInt();
            this.k = parcel.readInt();
            this.l = parcel.readInt();
            this.m = parcel.readInt();
            this.n = parcel.readInt();
            this.o = parcel.readLong();
            this.p = parcel.readLong();
            this.q = parcel.readFloat();
            this.r = parcel.readFloat();
            this.s = parcel.readLong();
            if (parcel.readInt() != 1) {
                z = false;
            }
            this.t = z;
        } catch (Exception e) {
            MMLog.e(w, "VideoImage parcel creation exception: ", e);
        }
    }

    VideoImage(JSONObject jSONObject) {
        this.g = 0;
        this.h = 0;
        this.i = 0;
        this.j = 0;
        this.q = 1.0f;
        this.r = 1.0f;
        this.s = 1000;
        a(jSONObject);
    }

    private void a(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject != null) {
            this.b = jSONObject.optString(Constants.NATIVE_AD_IMAGE_ELEMENT, null);
            this.c = jSONObject.optLong("contentLength");
            JSONArray optJSONArray = jSONObject.optJSONArray("activity");
            if (optJSONArray != null) {
                this.d = new String[optJSONArray.length()];
                while (i < optJSONArray.length()) {
                    this.d[i] = optJSONArray.optString(i);
                    i++;
                }
            } else {
                this.d = new String[0];
            }
            this.e = jSONObject.optString(PlusShare.KEY_CALL_TO_ACTION_URL, null);
            this.f = jSONObject.optString("overlayOrientation", null);
            this.k = jSONObject.optInt("android-layout");
            this.l = jSONObject.optInt("android-layoutAnchor");
            this.m = jSONObject.optInt("android-layout2");
            this.n = jSONObject.optInt("android-layoutAnchor2");
            this.g = jSONObject.optInt("android-paddingTop");
            this.i = jSONObject.optInt("android-paddingLeft");
            this.j = jSONObject.optInt("android-paddingRight");
            this.h = jSONObject.optInt("android-paddingBottom");
            this.o = (long) (jSONObject.optDouble("appearanceDelay", 0.0d) * 1000.0d);
            this.p = (long) (jSONObject.optDouble("inactivityTimeout", 0.0d) * 1000.0d);
            JSONObject optJSONObject = jSONObject.optJSONObject("opacity");
            if (optJSONObject != null) {
                this.q = (float) optJSONObject.optDouble("start", 1.0d);
                this.r = (float) optJSONObject.optDouble("end", 1.0d);
                this.s = (long) (optJSONObject.optDouble("fadeDuration", 1.0d) * 1000.0d);
            }
            this.t = jSONObject.optBoolean("is_leavebehind");
        }
    }

    String a() {
        if (this.b != null) {
            Uri parse = Uri.parse(this.b);
            if (!(parse == null || parse.getLastPathSegment() == null)) {
                return parse.getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat");
            }
        }
        return null;
    }

    public int describeContents() {
        return 0;
    }

    public void readExternal(ObjectInput objectInput) {
        this.b = (String) objectInput.readObject();
        this.c = objectInput.readLong();
        int readInt = objectInput.readInt();
        this.d = new String[readInt];
        int i = 0;
        while (i < readInt) {
            this.d[i] = (String) objectInput.readObject();
            i++;
        }
        this.e = (String) objectInput.readObject();
        this.f = (String) objectInput.readObject();
        this.g = objectInput.readInt();
        this.h = objectInput.readInt();
        this.i = objectInput.readInt();
        this.j = objectInput.readInt();
        this.k = objectInput.readInt();
        this.l = objectInput.readInt();
        this.m = objectInput.readInt();
        this.n = objectInput.readInt();
        this.o = objectInput.readLong();
        this.p = objectInput.readLong();
        this.q = objectInput.readFloat();
        this.r = objectInput.readFloat();
        this.s = objectInput.readLong();
        this.t = objectInput.readBoolean();
    }

    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.b);
        objectOutput.writeLong(this.c);
        objectOutput.writeInt(this.d.length);
        String[] strArr = this.d;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            objectOutput.writeObject(strArr[i]);
            i++;
        }
        objectOutput.writeObject(this.e);
        objectOutput.writeObject(this.f);
        objectOutput.writeInt(this.g);
        objectOutput.writeInt(this.h);
        objectOutput.writeInt(this.i);
        objectOutput.writeInt(this.j);
        objectOutput.writeInt(this.k);
        objectOutput.writeInt(this.l);
        objectOutput.writeInt(this.m);
        objectOutput.writeInt(this.n);
        objectOutput.writeLong(this.o);
        objectOutput.writeLong(this.p);
        objectOutput.writeFloat(this.q);
        objectOutput.writeFloat(this.r);
        objectOutput.writeLong(this.s);
        objectOutput.writeBoolean(this.t);
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeLong(this.c);
        parcel.writeInt(this.d.length);
        parcel.writeStringArray(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.j);
        parcel.writeInt(this.k);
        parcel.writeInt(this.l);
        parcel.writeInt(this.m);
        parcel.writeInt(this.n);
        parcel.writeLong(this.o);
        parcel.writeLong(this.p);
        parcel.writeFloat(this.q);
        parcel.writeFloat(this.r);
        parcel.writeLong(this.s);
        parcel.writeInt(this.t ? 1 : 0);
    }
}