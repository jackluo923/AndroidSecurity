package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;

class InterstitialAd extends CachedAd implements Parcelable, Externalizable {
    public static final Creator CREATOR;
    static final long k = 5158660334173309853L;
    static final String o = "EXTRA_CONTENT";
    static final String p = "EXTRA_AD_URL";
    private static final String q;
    String l;
    String m;
    HttpMMHeaders n;

    static {
        q = InterstitialAd.class.getName();
        CREATOR = new Creator() {
            public InterstitialAd createFromParcel(Parcel parcel) {
                return new InterstitialAd(parcel);
            }

            public InterstitialAd[] newArray(int i) {
                return new InterstitialAd[i];
            }
        };
    }

    InterstitialAd(Parcel parcel) {
        super(parcel);
        try {
            this.l = parcel.readString();
            this.m = parcel.readString();
            this.n = (HttpMMHeaders) parcel.readParcelable(HttpMMHeaders.class.getClassLoader());
        } catch (Exception e) {
            MMLog.e(q, "Interstitial problem reading parcel: ", e);
        }
    }

    private Intent b(Context context, long j) {
        Intent intent = new Intent();
        Parcelable overlaySettings = new OverlaySettings();
        overlaySettings.z = j;
        overlaySettings.u = this.l;
        overlaySettings.v = this.m;
        overlaySettings.a(this.n);
        overlaySettings.y = true;
        intent.putExtra("settings", overlaySettings);
        intent.putExtra("internalId", j);
        return intent;
    }

    void a(Context context, long j) {
        IntentUtils.a(context, b(context, j));
    }

    boolean a(Context context) {
        return true;
    }

    boolean a(Context context, MMAdImpl mMAdImpl, boolean z) {
        if (z) {
            return this.l != null && this.l.length() > 0 && this.m != null && this.m.length() > 0 && HandShake.a(context).a(mMAdImpl.h, this.g);
        } else if (this.l == null || this.l.length() <= 0 || this.m == null || this.m.length() <= 0) {
            return false;
        } else {
            return true;
        }
    }

    boolean b(Context context) {
        return true;
    }

    int c() {
        return GoogleScorer.CLIENT_PLUS;
    }

    String d() {
        return "Interstitial";
    }

    boolean d(Context context) {
        return true;
    }

    public int describeContents() {
        return 0;
    }

    public void readExternal(ObjectInput objectInput) {
        super.readExternal(objectInput);
        this.l = (String) objectInput.readObject();
        this.m = (String) objectInput.readObject();
        this.n = (HttpMMHeaders) objectInput.readObject();
    }

    public void writeExternal(ObjectOutput objectOutput) {
        super.writeExternal(objectOutput);
        objectOutput.writeObject(this.l);
        objectOutput.writeObject(this.m);
        objectOutput.writeObject(this.n);
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.l);
        parcel.writeString(this.m);
        parcel.writeParcelable(this.n, i);
    }
}