package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.brightcove.player.event.Event;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.plus.PlusShare;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.Externalizable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class VideoAd extends CachedAd implements Parcelable, Externalizable {
    public static final Creator CREATOR;
    private static final String G = "VideoAd";
    static final String k = "video.dat";
    static final long l = 2679125946930815832L;
    String[] A;
    String[] B;
    boolean C;
    ArrayList D;
    ArrayList E;
    DTOCachedVideo F;
    private String H;
    boolean m;
    boolean n;
    String o;
    String p;
    String q;
    String r;
    boolean s;
    boolean t;
    String[] u;
    String[] v;
    long w;
    long x;
    long y;
    String[] z;

    private static class VideoFilenameFilter implements FilenameFilter {
        private WeakReference a;

        public VideoFilenameFilter(VideoAd videoAd) {
            this.a = new WeakReference(videoAd);
        }

        public boolean accept(File file, String str) {
            VideoAd videoAd = (VideoAd) this.a.get();
            if (videoAd == null) {
                return false;
            }
            String e = videoAd.e();
            return e == null ? false : str.startsWith(e);
        }
    }

    private static class VideoIterator extends Iterator {
        boolean a;
        private WeakReference b;
        private WeakReference f;

        public VideoIterator(Context context, VideoAd videoAd) {
            this.a = false;
            this.b = new WeakReference(videoAd);
            this.f = new WeakReference(context);
        }

        void a() {
            if (!this.a) {
                Context context = (Context) this.f.get();
                if (context != null) {
                    a(context);
                }
            }
            super.a();
        }

        void a(Context context) {
            VideoAd videoAd = (VideoAd) this.b.get();
            if (videoAd != null && AdCache.j(context, videoAd.H + k)) {
                MMLog.a(G, String.format("VideoAd video file %s was deleted.", new Object[]{videoAd.H}));
            }
        }

        boolean a(CachedAd cachedAd) {
            if (cachedAd != null && cachedAd instanceof VideoAd) {
                VideoAd videoAd = (VideoAd) cachedAd;
                VideoAd videoAd2 = (VideoAd) this.b.get();
                if (videoAd2 != null && videoAd.H.equals(videoAd2.H)) {
                    this.a = true;
                }
            }
            return super.a(cachedAd);
        }
    }

    static {
        CREATOR = new Creator() {
            public VideoAd createFromParcel(Parcel parcel) {
                return new VideoAd(parcel);
            }

            public VideoAd[] newArray(int i) {
                return new VideoAd[i];
            }
        };
    }

    public VideoAd() {
        this.D = new ArrayList();
        this.E = new ArrayList();
    }

    VideoAd(Parcel parcel) {
        super(parcel);
        this.D = new ArrayList();
        this.E = new ArrayList();
        try {
            this.u = new String[parcel.readInt()];
            parcel.readStringArray(this.u);
            this.v = new String[parcel.readInt()];
            parcel.readStringArray(this.v);
            boolean[] zArr = new boolean[5];
            parcel.readBooleanArray(zArr);
            this.m = zArr[0];
            this.s = zArr[1];
            this.t = zArr[2];
            this.C = zArr[3];
            this.n = zArr[4];
            this.o = parcel.readString();
            this.p = parcel.readString();
            this.q = parcel.readString();
            this.r = parcel.readString();
            this.H = parcel.readString();
            this.w = parcel.readLong();
            this.x = parcel.readLong();
            this.y = parcel.readLong();
            this.D = parcel.readArrayList(VideoImage.class.getClassLoader());
            this.E = parcel.readArrayList(VideoLogEvent.class.getClassLoader());
            this.z = new String[parcel.readInt()];
            parcel.readStringArray(this.z);
            this.A = new String[parcel.readInt()];
            parcel.readStringArray(this.A);
            this.B = new String[parcel.readInt()];
            parcel.readStringArray(this.B);
        } catch (Exception e) {
            MMLog.e(G, "Exception with videoad parcel creation: ", e);
        }
    }

    VideoAd(String str) {
        this.D = new ArrayList();
        this.E = new ArrayList();
        if (str != null) {
            JSONObject jSONObject;
            JSONObject jSONObject2 = null;
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                MMLog.e(G, "VideoAd json exception: ", e);
                jSONObject = jSONObject2;
            }
            if (jSONObject != null) {
                jSONObject = jSONObject.optJSONObject(Event.VIDEO);
                if (jSONObject != null) {
                    a(jSONObject);
                }
            }
        }
    }

    static void a(Context context, String str, RedirectionListenerImpl redirectionListenerImpl) {
        if (str != null) {
            VideoAd videoAd = (VideoAd) AdCache.i(context, str);
            if (videoAd == null || !videoAd.a(context, null, false)) {
                MMLog.d(G, String.format("mmvideo: Ad %s cannot be shown at this time.", new Object[]{str}));
            } else {
                redirectionListenerImpl.updateLastVideoViewedTime();
                MMLog.a(G, String.format("mmvideo: attempting to play video %s", new Object[]{str}));
                videoAd.a(context, redirectionListenerImpl.e);
                redirectionListenerImpl.startingVideo();
            }
        }
    }

    static boolean a(Context context, String str) {
        return AdCache.h(context, str + k);
    }

    static boolean a(Context context, String str, String str2) {
        boolean b = AdCache.b(str, str2 + k, context);
        MMLog.a(G, String.format("Caching completed successfully (" + str2 + k + ")? %b", new Object[]{Boolean.valueOf(b)}));
        return b;
    }

    static Uri b(Context context, String str) {
        return Uri.fromFile(AdCache.g(context, str + k));
    }

    private void e(Context context) {
        AdCache.a(context, (int)GoogleScorer.CLIENT_PLUS, new VideoIterator(context, this));
    }

    void a(Context context, long j) {
        IntentUtils.b(context, b(context, j));
    }

    void a(DTOCachedVideo dTOCachedVideo) {
        this.F = dTOCachedVideo;
    }

    protected void a(JSONObject jSONObject) {
        int i;
        int i2 = 0;
        super.a(jSONObject);
        JSONArray optJSONArray = jSONObject.optJSONArray("startActivity");
        this.p = jSONObject.optString("overlayURL", null);
        this.q = jSONObject.optString("endURL", null);
        this.r = jSONObject.optString("cacheMissURL", null);
        this.H = jSONObject.optString("videoFileId", null);
        if (optJSONArray != null) {
            this.u = new String[optJSONArray.length()];
            i = 0;
            while (i < optJSONArray.length()) {
                this.u[i] = optJSONArray.optString(i);
                i++;
            }
        } else {
            this.u = new String[0];
        }
        optJSONArray = jSONObject.optJSONArray("endActivity");
        if (optJSONArray != null) {
            this.v = new String[optJSONArray.length()];
            i = 0;
            while (i < optJSONArray.length()) {
                this.v[i] = optJSONArray.optString(i);
                i++;
            }
        } else {
            this.v = new String[0];
        }
        optJSONArray = jSONObject.optJSONArray("cacheComplete");
        if (optJSONArray != null) {
            this.z = new String[optJSONArray.length()];
            i = 0;
            while (i < optJSONArray.length()) {
                this.z[i] = optJSONArray.optString(i);
                i++;
            }
        } else {
            this.z = new String[0];
        }
        optJSONArray = jSONObject.optJSONArray("cacheFailed");
        if (optJSONArray != null) {
            this.A = new String[optJSONArray.length()];
            i = 0;
            while (i < optJSONArray.length()) {
                this.A[i] = optJSONArray.optString(i);
                i++;
            }
        } else {
            this.A = new String[0];
        }
        optJSONArray = jSONObject.optJSONArray("videoError");
        if (optJSONArray != null) {
            this.B = new String[optJSONArray.length()];
            i = 0;
            while (i < optJSONArray.length()) {
                this.B[i] = optJSONArray.optString(i);
                i++;
            }
        } else {
            this.B = new String[0];
        }
        this.m = jSONObject.optBoolean("showVideoPlayerControls");
        this.t = jSONObject.optBoolean("showCountdownHUD");
        this.C = jSONObject.optBoolean("reloadOverlayOnRestart");
        JSONObject optJSONObject = jSONObject.optJSONObject("onCompletion");
        if (optJSONObject != null) {
            this.o = optJSONObject.optString(PlusShare.KEY_CALL_TO_ACTION_URL, null);
            this.s = optJSONObject.optBoolean("stayInPlayer");
        }
        this.w = (long) (jSONObject.optDouble(Fields.DURATION, 0.0d) * 1000.0d);
        this.x = jSONObject.optLong("contentLength");
        this.y = jSONObject.optLong("closeAfterDelay");
        optJSONArray = jSONObject.optJSONArray("buttons");
        if (optJSONArray != null) {
            i = 0;
            while (i < optJSONArray.length()) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                if (optJSONObject2 != null) {
                    this.D.add(new VideoImage(optJSONObject2));
                }
                i++;
            }
        }
        JSONArray optJSONArray2 = jSONObject.optJSONArray("log");
        if (optJSONArray2 != null) {
            while (i2 < optJSONArray2.length()) {
                JSONObject optJSONObject3 = optJSONArray2.optJSONObject(i2);
                if (optJSONObject3 != null) {
                    this.E.add(new VideoLogEvent(optJSONObject3));
                }
                i2++;
            }
        }
    }

    boolean a(Context context) {
        return true;
    }

    boolean a(Context context, MMAdImpl mMAdImpl, boolean z) {
        if (z) {
            return !a() && d(context) && HandShake.a(context).a(mMAdImpl.h, this.g);
        } else if (a() || !d(context)) {
            return false;
        } else {
            return true;
        }
    }

    Intent b(Context context, long j) {
        Intent intent = new Intent();
        intent.putExtra("videoId", e());
        if (j != -4) {
            intent.putExtra("internalId", j);
        }
        intent.setData(Uri.parse(AdCache.g(context).getAbsolutePath() + File.separator + this.H + k));
        return intent;
    }

    boolean b(Context context) {
        boolean b = AdCache.b(this.h, this.H + k, context);
        if (b) {
            int i = 0;
            while (i < this.D.size()) {
                VideoImage videoImage = (VideoImage) this.D.get(i);
                boolean a = AdCache.a(videoImage.b, e() + videoImage.a(), context);
                if (!a) {
                    b = a;
                    break;
                } else {
                    i++;
                    b = a;
                }
            }
        }
        if (!b) {
            if (this.j) {
                c(context);
            }
            HttpGetRequest.a(this.A);
        } else if (b) {
            if (this.e != null && this.e.length() > 0) {
                AdCache.a(context, this.e);
            }
            HttpGetRequest.a(this.z);
        }
        MMLog.a(G, String.format("Caching completed successfully? %b", new Object[]{Boolean.valueOf(b)}));
        return b;
    }

    int c() {
        return 1;
    }

    void c(Context context) {
        super.c(context);
        e(context);
        AdCache.b(context, this.e);
        MMLog.a(G, String.format("Ad %s was deleted.", new Object[]{e()}));
    }

    String d() {
        return "Video";
    }

    boolean d(Context context) {
        int size = this.D.size() + 1;
        File h = AdCache.h(context);
        File g = AdCache.g(context);
        if (h == null || g == null) {
            return false;
        }
        boolean z;
        String[] list = h.list(new VideoFilenameFilter(this));
        z = (list == null || list.length < size) ? false : 1;
        if (z && g != null && !new File(g, this.H + k).exists()) {
            return false;
        }
        Iterator it = this.D.iterator();
        while (it.hasNext()) {
            if (!new File(h, e() + ((VideoImage) it.next()).a()).exists()) {
                return false;
            }
        }
        return z;
    }

    public int describeContents() {
        return 0;
    }

    void f() {
        if (this.u != null) {
            MMLog.b(G, "Cached video begin event logged");
            int i = 0;
            while (i < this.u.length) {
                Event.a(this.u[i]);
                i++;
            }
        }
    }

    void g() {
        if (this.v != null) {
            MMLog.b(G, "Cached video end event logged");
            int i = 0;
            while (i < this.v.length) {
                Event.a(this.v[i]);
                i++;
            }
        }
    }

    boolean h() {
        Iterator it = this.D.iterator();
        while (it.hasNext()) {
            if (((VideoImage) it.next()).t) {
                return true;
            }
        }
        return false;
    }

    public void readExternal(ObjectInput objectInput) {
        int i = 0;
        super.readExternal(objectInput);
        this.m = objectInput.readBoolean();
        this.o = (String) objectInput.readObject();
        this.p = (String) objectInput.readObject();
        this.q = (String) objectInput.readObject();
        this.r = (String) objectInput.readObject();
        this.H = (String) objectInput.readObject();
        this.s = objectInput.readBoolean();
        this.t = objectInput.readBoolean();
        this.C = objectInput.readBoolean();
        int readInt = objectInput.readInt();
        this.u = new String[readInt];
        int i2 = 0;
        while (i2 < readInt) {
            this.u[i2] = (String) objectInput.readObject();
            i2++;
        }
        readInt = objectInput.readInt();
        this.v = new String[readInt];
        i2 = 0;
        while (i2 < readInt) {
            this.v[i2] = (String) objectInput.readObject();
            i2++;
        }
        this.w = objectInput.readLong();
        this.n = objectInput.readBoolean();
        this.x = objectInput.readLong();
        this.y = objectInput.readLong();
        readInt = objectInput.readInt();
        this.z = new String[readInt];
        i2 = 0;
        while (i2 < readInt) {
            this.z[i2] = (String) objectInput.readObject();
            i2++;
        }
        readInt = objectInput.readInt();
        this.A = new String[readInt];
        i2 = 0;
        while (i2 < readInt) {
            this.A[i2] = (String) objectInput.readObject();
            i2++;
        }
        readInt = objectInput.readInt();
        this.B = new String[readInt];
        i2 = 0;
        while (i2 < readInt) {
            this.B[i2] = (String) objectInput.readObject();
            i2++;
        }
        this.D.clear();
        readInt = objectInput.readInt();
        i2 = 0;
        while (i2 < readInt) {
            this.D.add((VideoImage) objectInput.readObject());
            i2++;
        }
        this.E.clear();
        i2 = objectInput.readInt();
        while (i < i2) {
            this.E.add((VideoLogEvent) objectInput.readObject());
            i++;
        }
    }

    public void writeExternal(ObjectOutput objectOutput) {
        int i = 0;
        super.writeExternal(objectOutput);
        objectOutput.writeBoolean(this.m);
        objectOutput.writeObject(this.o);
        objectOutput.writeObject(this.p);
        objectOutput.writeObject(this.q);
        objectOutput.writeObject(this.r);
        objectOutput.writeObject(this.H);
        objectOutput.writeBoolean(this.s);
        objectOutput.writeBoolean(this.t);
        objectOutput.writeBoolean(this.C);
        objectOutput.writeInt(this.u.length);
        String[] strArr = this.u;
        int length = strArr.length;
        int i2 = 0;
        while (i2 < length) {
            objectOutput.writeObject(strArr[i2]);
            i2++;
        }
        objectOutput.writeInt(this.v.length);
        strArr = this.v;
        length = strArr.length;
        i2 = 0;
        while (i2 < length) {
            objectOutput.writeObject(strArr[i2]);
            i2++;
        }
        objectOutput.writeLong(this.w);
        objectOutput.writeBoolean(this.n);
        objectOutput.writeLong(this.x);
        objectOutput.writeLong(this.y);
        objectOutput.writeInt(this.z.length);
        strArr = this.z;
        length = strArr.length;
        i2 = 0;
        while (i2 < length) {
            objectOutput.writeObject(strArr[i2]);
            i2++;
        }
        objectOutput.writeInt(this.A.length);
        strArr = this.A;
        length = strArr.length;
        i2 = 0;
        while (i2 < length) {
            objectOutput.writeObject(strArr[i2]);
            i2++;
        }
        objectOutput.writeInt(this.B.length);
        String[] strArr2 = this.B;
        int length2 = strArr2.length;
        while (i < length2) {
            objectOutput.writeObject(strArr2[i]);
            i++;
        }
        objectOutput.writeInt(this.D.size());
        Iterator it = this.D.iterator();
        while (it.hasNext()) {
            objectOutput.writeObject((VideoImage) it.next());
        }
        objectOutput.writeInt(this.E.size());
        it = this.E.iterator();
        while (it.hasNext()) {
            objectOutput.writeObject((VideoLogEvent) it.next());
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.u.length);
        parcel.writeStringArray(this.u);
        parcel.writeInt(this.v.length);
        parcel.writeStringArray(this.v);
        parcel.writeBooleanArray(new boolean[]{this.m, this.s, this.t, this.C, this.n});
        parcel.writeString(this.o);
        parcel.writeString(this.q);
        parcel.writeString(this.p);
        parcel.writeString(this.r);
        parcel.writeString(this.H);
        parcel.writeLong(this.w);
        parcel.writeLong(this.x);
        parcel.writeLong(this.y);
        parcel.writeList(this.D);
        parcel.writeList(this.E);
        parcel.writeInt(this.z.length);
        parcel.writeStringArray(this.z);
        parcel.writeInt(this.A.length);
        parcel.writeStringArray(this.A);
        parcel.writeInt(this.B.length);
        parcel.writeStringArray(this.B);
    }
}