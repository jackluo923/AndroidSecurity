package com.mixpanel.android.mpmetrics;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import com.google.android.gms.drive.DriveFile;
import com.millennialmedia.android.MMException;
import com.mixpanel.android.surveys.SurveyActivity;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import org.json.JSONException;
import org.json.JSONObject;

public class SurveyState implements Parcelable {
    public static final Creator CREATOR;
    static final /* synthetic */ boolean a;
    private static final Object h;
    private static long i = 0;
    private static SurveyState j = null;
    private static int k = 0;
    private static long l = 0;
    private static int m = 0;
    private static final String n = "MixpanelAPI SurveyState";
    private static final long o = 43200000;
    private static final String p = "com.mixpanel.android.mpmetrics.SurveyState.SURVEY_BUNDLE_KEY";
    private static final String q = "com.mixpanel.android.mpmetrics.SurveyState.DISTINCT_ID_BUNDLE_KEY";
    private static final String r = "com.mixpanel.android.mpmetrics.SurveyState.TOKEN_BUNDLE_KEY";
    private static final String s = "com.mixpanel.android.mpmetrics.SurveyState.HIGHLIGHT_COLOR_BUNDLE_KEY";
    private static final String t = "com.mixpanel.android.mpmetrics.SurveyState.ANSWERS_BUNDLE_KEY";
    private static final String u = "com.mixpanel.android.mpmetrics.SurveyState.BACKGROUND_COMPRESSED_BUNDLE_KEY";
    private final aa b;
    private final String c;
    private final String d;
    private final AnswerMap e;
    private final Bitmap f;
    private final int g;

    public static class AnswerMap implements Parcelable {
        public static final Creator CREATOR;
        private final HashMap a;

        static {
            CREATOR = new ad();
        }

        @SuppressLint({"UseSparseArrays"})
        public AnswerMap() {
            this.a = new HashMap();
        }

        public String a(Integer num) {
            return (String) this.a.get(num);
        }

        public void a(Integer num, String str) {
            this.a.put(num, str);
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            Bundle bundle = new Bundle();
            Iterator it = this.a.entrySet().iterator();
            while (it.hasNext()) {
                Entry entry = (Entry) it.next();
                bundle.putString(Integer.toString(((Integer) entry.getKey()).intValue()), (String) entry.getValue());
            }
            parcel.writeBundle(bundle);
        }
    }

    static {
        a = !SurveyState.class.desiredAssertionStatus();
        CREATOR = new ac();
        h = new Object();
        i = -1;
        j = null;
        k = 0;
        l = -1;
        m = -1;
    }

    private SurveyState(Bundle bundle) {
        this.c = bundle.getString(q);
        this.d = bundle.getString(r);
        this.g = bundle.getInt(s);
        this.e = (AnswerMap) bundle.getParcelable(t);
        byte[] byteArray = bundle.getByteArray(u);
        if (byteArray != null) {
            this.f = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
        } else {
            this.f = null;
        }
        try {
            this.b = new aa(new JSONObject(bundle.getString(p)));
        } catch (JSONException e) {
            throw new RuntimeException("Survey serialization resulted in a corrupted parcel");
        } catch (a e2) {
            throw new RuntimeException("Survey serialization resulted in a corrupted parcel");
        }
    }

    SurveyState(aa aaVar, String str, String str2, Bitmap bitmap, int i) {
        this.b = aaVar;
        this.c = str;
        this.d = str2;
        this.e = new AnswerMap();
        this.f = bitmap;
        this.g = i;
    }

    public static SurveyState a(SurveyState surveyState, int i) {
        if (a || surveyState == null) {
            long currentTimeMillis = System.currentTimeMillis() - l;
            synchronized (h) {
                if (m > 0 && currentTimeMillis > 43200000) {
                    Log.i(n, "Survey activity claimed but never released lock, possible force quit.");
                    m = -1;
                }
                if (m > 0 && m != i) {
                    return null;
                } else if (surveyState != null) {
                    m = i;
                    j = surveyState;
                    return surveyState;
                } else if (j == null) {
                    return null;
                } else {
                    m = i;
                    surveyState = j;
                    return surveyState;
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    public static void a(int i) {
        synchronized (h) {
            if (i == m) {
                m = -1;
                j = null;
            }
        }
    }

    public static void a(aa aaVar, Activity activity, String str, String str2, Bitmap bitmap, int i) {
        if (e.b(activity.getApplicationContext())) {
            long currentTimeMillis = System.currentTimeMillis() - i;
            synchronized (h) {
                if (m > 0 && currentTimeMillis > 43200000) {
                    Log.i(n, "SurveyState set long, long ago, without showing.");
                    j = null;
                }
                if (j == null) {
                    j = new SurveyState(aaVar, str, str2, bitmap, i);
                    Intent intent = new Intent(activity.getApplicationContext(), SurveyActivity.class);
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    intent.addFlags(AccessibilityNodeInfoCompat.ACTION_SET_SELECTION);
                    k++;
                    intent.putExtra("intentID", k);
                    activity.startActivity(intent);
                }
            }
        }
    }

    public aa a() {
        return this.b;
    }

    public String b() {
        return this.c;
    }

    public String c() {
        return this.d;
    }

    public Bitmap d() {
        return this.f;
    }

    public int describeContents() {
        return 0;
    }

    public AnswerMap e() {
        return this.e;
    }

    public int f() {
        return this.g;
    }

    public void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        bundle.putString(q, this.c);
        bundle.putString(r, this.d);
        bundle.putInt(s, this.g);
        bundle.putParcelable(t, this.e);
        byte[] bArr = null;
        if (this.f != null) {
            OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            this.f.compress(CompressFormat.PNG, MMException.DISPLAY_AD_NOT_READY, byteArrayOutputStream);
            bArr = byteArrayOutputStream.toByteArray();
        }
        bundle.putByteArray(u, bArr);
        bundle.putString(p, this.b.a());
        parcel.writeBundle(bundle);
    }
}