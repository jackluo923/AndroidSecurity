package com.vungle.publisher;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.vungle.publisher.db.model.Ad;

public interface am {

    public enum a {
        aware,
        downloading,
        downloaded,
        ready;

        static {
            a = new com.vungle.publisher.am.a("aware", 0);
            b = new com.vungle.publisher.am.a("downloading", 1);
            c = new com.vungle.publisher.am.a("downloaded", 2);
            d = new com.vungle.publisher.am.a("ready", 3);
            e = new com.vungle.publisher.am.a[]{a, b, c, d};
        }
    }

    public enum b implements Parcelable {
        localVideo,
        postRoll,
        preRoll,
        streamingVideo;
        public static final Creator CREATOR;

        static {
            a = new com.vungle.publisher.am.b("localVideo", 0);
            b = new com.vungle.publisher.am.b("postRoll", 1);
            c = new com.vungle.publisher.am.b("preRoll", 2);
            d = new com.vungle.publisher.am.b(Event.INTENT_STREAMING_VIDEO, 3);
            e = new com.vungle.publisher.am.b[]{a, b, c, d};
            CREATOR = new Creator() {
                public final /* synthetic */ Object createFromParcel(Parcel parcel) {
                    return com.vungle.publisher.am.b.values()[parcel.readInt()];
                }

                public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
                    return new com.vungle.publisher.am.b[i];
                }
            };
        }

        public final int describeContents() {
            return 0;
        }

        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(ordinal());
        }
    }

    void a(a aVar);

    String f();

    Ad g();

    a h();

    b i();
}