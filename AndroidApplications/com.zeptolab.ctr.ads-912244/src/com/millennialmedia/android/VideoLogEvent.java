package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.brightcove.player.media.CuePointFields;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.json.JSONArray;
import org.json.JSONObject;

class VideoLogEvent implements Parcelable, Externalizable {
    public static final Creator CREATOR;
    static final long a = 795553873017368584L;
    private static final String d;
    long b;
    String[] c;

    static {
        d = VideoLogEvent.class.getName();
        CREATOR = new Creator() {
            public VideoLogEvent createFromParcel(Parcel parcel) {
                return new VideoLogEvent(parcel);
            }

            public VideoLogEvent[] newArray(int i) {
                return new VideoLogEvent[i];
            }
        };
    }

    VideoLogEvent(Parcel parcel) {
        try {
            this.b = parcel.readLong();
            this.c = new String[parcel.readInt()];
            parcel.readStringArray(this.c);
        } catch (Exception e) {
            MMLog.e(d, "VideoLogEvent parcel creation exception: ", e);
        }
    }

    VideoLogEvent(JSONObject jSONObject) {
        a(jSONObject);
    }

    private void a(JSONObject jSONObject) {
        int i = 0;
        if (jSONObject != null) {
            this.b = (long) (jSONObject.optInt(CuePointFields.TIME) * 1000);
            JSONArray optJSONArray = jSONObject.optJSONArray("urls");
            if (optJSONArray != null) {
                this.c = new String[optJSONArray.length()];
                while (i < optJSONArray.length()) {
                    this.c[i] = optJSONArray.optString(i);
                    i++;
                }
            } else {
                this.c = new String[0];
            }
        }
    }

    public int describeContents() {
        return 0;
    }

    public void readExternal(ObjectInput objectInput) {
        this.b = objectInput.readLong();
        int readInt = objectInput.readInt();
        this.c = new String[readInt];
        int i = 0;
        while (i < readInt) {
            this.c[i] = (String) objectInput.readObject();
            i++;
        }
    }

    public void writeExternal(ObjectOutput objectOutput) {
        objectOutput.writeLong(this.b);
        objectOutput.writeInt(this.c.length);
        String[] strArr = this.c;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            objectOutput.writeObject(strArr[i]);
            i++;
        }
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeInt(this.c.length);
        parcel.writeStringArray(this.c);
    }
}