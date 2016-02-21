package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.er;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ActivityRecognitionResult implements SafeParcelable {
    public static final ActivityRecognitionResultCreator CREATOR;
    public static final String EXTRA_ACTIVITY_RESULT = "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT";
    List KP;
    long KQ;
    long KR;
    private final int wj;

    static {
        CREATOR = new ActivityRecognitionResultCreator();
    }

    public ActivityRecognitionResult(int i, List list, long j, long j2) {
        this.wj = 1;
        this.KP = list;
        this.KQ = j;
        this.KR = j2;
    }

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2) {
        this(Collections.singletonList(detectedActivity), j, j2);
    }

    public ActivityRecognitionResult(List list, long j, long j2) {
        boolean z;
        z = list != null && list.size() > 0;
        er.b(z, (Object)"Must have at least 1 detected activity");
        this.wj = 1;
        this.KP = list;
        this.KQ = j;
        this.KR = j2;
    }

    public static ActivityRecognitionResult extractResult(Intent intent) {
        return hasResult(intent) ? (ActivityRecognitionResult) intent.getExtras().get(EXTRA_ACTIVITY_RESULT) : null;
    }

    public static boolean hasResult(Intent intent) {
        return intent == null ? false : intent.hasExtra(EXTRA_ACTIVITY_RESULT);
    }

    public int describeContents() {
        return 0;
    }

    public int getActivityConfidence(int i) {
        Iterator it = this.KP.iterator();
        while (it.hasNext()) {
            DetectedActivity detectedActivity = (DetectedActivity) it.next();
            if (detectedActivity.getType() == i) {
                return detectedActivity.getConfidence();
            }
        }
        return 0;
    }

    public long getElapsedRealtimeMillis() {
        return this.KR;
    }

    public DetectedActivity getMostProbableActivity() {
        return (DetectedActivity) this.KP.get(0);
    }

    public List getProbableActivities() {
        return this.KP;
    }

    public long getTime() {
        return this.KQ;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public String toString() {
        return "ActivityRecognitionResult [probableActivities=" + this.KP + ", timeMillis=" + this.KQ + ", elapsedRealtimeMillis=" + this.KR + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        ActivityRecognitionResultCreator.a(this, parcel, i);
    }
}