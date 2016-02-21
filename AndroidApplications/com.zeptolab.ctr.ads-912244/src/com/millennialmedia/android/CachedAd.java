package com.millennialmedia.android;

import android.content.Context;
import android.os.Parcel;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.monetization.internal.TrackerView;
import java.io.Externalizable;
import java.io.File;
import java.io.FileFilter;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

abstract class CachedAd implements Externalizable {
    static final long a = 316862728709355974L;
    static final int b = 1;
    static final int c = 2;
    static final int d = 3;
    private static final String k = "CachedAd";
    String e;
    Date f;
    long g;
    String h;
    int i;
    boolean j;
    private String l;

    CachedAd() {
        this.j = false;
        this.g = System.currentTimeMillis();
    }

    protected CachedAd(Parcel parcel) {
        this.j = false;
        try {
            this.l = parcel.readString();
            this.e = parcel.readString();
            this.f = (Date) parcel.readSerializable();
            this.g = parcel.readLong();
            boolean[] zArr = new boolean[1];
            parcel.readBooleanArray(zArr);
            this.j = zArr[0];
            this.h = parcel.readString();
            this.i = parcel.readInt();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    static CachedAd a(String str) {
        if (MMSDK.a >= 5) {
            MMLog.a(k, "Received cached ad.");
            int length = str.length();
            if (length > 1000) {
                int i;
                int i2 = TrackerView.ID;
                int i3 = 0;
                while (i2 < length) {
                    MMLog.a(k, str.substring(i3, i2));
                    i3 = i2 + 1000;
                    if (i3 > length) {
                        i3 = length - 1;
                        break;
                    } else {
                        i = i2;
                        i2 = i3;
                        i3 = i;
                    }
                }
                i = i3;
                i3 = i2;
                i2 = i;
                MMLog.a(k, str.substring(i2, i3));
            } else {
                MMLog.a(k, str);
            }
        }
        return str.length() > 0 ? new VideoAd(str) : null;
    }

    abstract void a(Context context, long j);

    protected void a(JSONObject jSONObject) {
        this.l = jSONObject.optString(AnalyticsEvent.EVENT_ID, null);
        this.e = jSONObject.optString("vid", null);
        this.h = jSONObject.optString("content-url", null);
        String optString = jSONObject.optString("expiration", null);
        if (optString != null) {
            try {
                this.f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ZZZZ").parse(optString);
            } catch (ParseException e) {
                MMLog.e(k, "Exception deserializing cached ad: ", e);
            }
        }
    }

    boolean a() {
        return this.f != null && this.f.getTime() <= System.currentTimeMillis();
    }

    abstract boolean a(Context context);

    abstract boolean a(Context context, MMAdImpl mMAdImpl, boolean z);

    void b(String str) {
        this.l = str;
    }

    boolean b() {
        return this.l != null && this.l.length() > 0 && this.h != null && this.h.length() > 0;
    }

    abstract boolean b(Context context);

    abstract int c();

    void c(Context context) {
        int i = 0;
        File h = AdCache.h(context);
        if (h != null && h.isDirectory()) {
            try {
                File[] listFiles = h.listFiles(new FileFilter() {
                    public boolean accept(File file) {
                        return file.isFile() && file.getName().startsWith(CachedAd.this.l);
                    }
                });
                MMLog.a(k, String.format("Deleting %d files for %s.", new Object[]{Integer.valueOf(listFiles.length), this.l}));
                while (i < listFiles.length) {
                    listFiles[i].delete();
                    i++;
                }
            } catch (Exception e) {
                MMLog.e(k, "Exception deleting cached ad: ", e);
            }
        }
    }

    abstract String d();

    abstract boolean d(Context context);

    String e() {
        return this.l;
    }

    public boolean equals(CachedAd cachedAd) {
        if (this == cachedAd) {
            return true;
        }
        if (!(cachedAd instanceof CachedAd)) {
            return false;
        }
        return this.l.equals(cachedAd.l);
    }

    public void readExternal(ObjectInput objectInput) {
        this.l = (String) objectInput.readObject();
        this.e = (String) objectInput.readObject();
        this.f = (Date) objectInput.readObject();
        this.g = objectInput.readLong();
        this.h = (String) objectInput.readObject();
    }

    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeObject(this.l);
        objectOutput.writeObject(this.e);
        objectOutput.writeObject(this.f);
        objectOutput.writeLong(this.g);
        objectOutput.writeObject(this.h);
    }

    protected void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.l);
        parcel.writeString(this.e);
        parcel.writeSerializable(this.f);
        parcel.writeLong(this.g);
        parcel.writeBooleanArray(new boolean[]{this.j});
        parcel.writeString(this.h);
        parcel.writeInt(this.i);
    }
}