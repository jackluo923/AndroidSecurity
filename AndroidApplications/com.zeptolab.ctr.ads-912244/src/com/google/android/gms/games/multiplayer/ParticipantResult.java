package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.gr;

public final class ParticipantResult implements SafeParcelable {
    public static final ParticipantResultCreator CREATOR;
    public static final int MATCH_RESULT_DISAGREED = 5;
    public static final int MATCH_RESULT_DISCONNECT = 4;
    public static final int MATCH_RESULT_LOSS = 1;
    public static final int MATCH_RESULT_NONE = 3;
    public static final int MATCH_RESULT_TIE = 2;
    public static final int MATCH_RESULT_UNINITIALIZED = -1;
    public static final int MATCH_RESULT_WIN = 0;
    public static final int PLACING_UNINITIALIZED = -1;
    private final String GZ;
    private final int JF;
    private final int JG;
    private final int wj;

    static {
        CREATOR = new ParticipantResultCreator();
    }

    public ParticipantResult(int i, String str, int i2, int i3) {
        this.wj = i;
        this.GZ = (String) er.f(str);
        er.v(gr.isValid(i2));
        this.JF = i2;
        this.JG = i3;
    }

    public ParticipantResult(String str, int i, int i2) {
        this(1, str, i, i2);
    }

    public int describeContents() {
        return MATCH_RESULT_WIN;
    }

    public String getParticipantId() {
        return this.GZ;
    }

    public int getPlacing() {
        return this.JG;
    }

    public int getResult() {
        return this.JF;
    }

    public int getVersionCode() {
        return this.wj;
    }

    public void writeToParcel(Parcel parcel, int i) {
        ParticipantResultCreator.a(this, parcel, i);
    }
}