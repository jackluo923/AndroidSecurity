package com.google.android.gms.cast;

import android.text.TextUtils;
import com.admarvel.android.ads.Constants;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fp;
import org.json.JSONException;
import org.json.JSONObject;

public final class MediaInfo {
    public static final int STREAM_TYPE_BUFFERED = 1;
    public static final int STREAM_TYPE_INVALID = -1;
    public static final int STREAM_TYPE_LIVE = 2;
    public static final int STREAM_TYPE_NONE = 0;
    private final String wK;
    private int wL;
    private String wM;
    private MediaMetadata wN;
    private long wO;
    private JSONObject wP;

    public static class Builder {
        private final MediaInfo wQ;

        public Builder(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("Content ID cannot be empty");
            }
            this.wQ = new MediaInfo(str);
        }

        public MediaInfo build() {
            this.wQ.cS();
            return this.wQ;
        }

        public com.google.android.gms.cast.MediaInfo.Builder setContentType(String str) {
            this.wQ.setContentType(str);
            return this;
        }

        public com.google.android.gms.cast.MediaInfo.Builder setCustomData(JSONObject jSONObject) {
            this.wQ.a(jSONObject);
            return this;
        }

        public com.google.android.gms.cast.MediaInfo.Builder setMetadata(MediaMetadata mediaMetadata) {
            this.wQ.a(mediaMetadata);
            return this;
        }

        public com.google.android.gms.cast.MediaInfo.Builder setStreamDuration(long j) {
            this.wQ.j(j);
            return this;
        }

        public com.google.android.gms.cast.MediaInfo.Builder setStreamType(int i) {
            this.wQ.setStreamType(i);
            return this;
        }
    }

    MediaInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("content ID cannot be null or empty");
        }
        this.wK = str;
        this.wL = -1;
    }

    MediaInfo(JSONObject jSONObject) {
        this.wK = jSONObject.getString("contentId");
        String string = jSONObject.getString("streamType");
        if ("NONE".equals(string)) {
            this.wL = 0;
        } else if ("BUFFERED".equals(string)) {
            this.wL = 1;
        } else if ("LIVE".equals(string)) {
            this.wL = 2;
        } else {
            this.wL = -1;
        }
        this.wM = jSONObject.getString("contentType");
        if (jSONObject.has(Constants.NATIVE_AD_METADATA_ELEMENT)) {
            JSONObject jSONObject2 = jSONObject.getJSONObject(Constants.NATIVE_AD_METADATA_ELEMENT);
            this.wN = new MediaMetadata(jSONObject2.getInt("metadataType"));
            this.wN.b(jSONObject2);
        }
        this.wO = dr.b(jSONObject.optDouble(Fields.DURATION, 0.0d));
        this.wP = jSONObject.optJSONObject("customData");
    }

    void a(MediaMetadata mediaMetadata) {
        this.wN = mediaMetadata;
    }

    void a(JSONObject jSONObject) {
        this.wP = jSONObject;
    }

    void cS() {
        if (TextUtils.isEmpty(this.wK)) {
            throw new IllegalArgumentException("content ID cannot be null or empty");
        } else if (TextUtils.isEmpty(this.wM)) {
            throw new IllegalArgumentException("content type cannot be null or empty");
        } else if (this.wL == -1) {
            throw new IllegalArgumentException("a valid stream type must be specified");
        }
    }

    public JSONObject cT() {
        JSONObject jSONObject = new JSONObject();
        try {
            Object obj;
            jSONObject.put("contentId", this.wK);
            switch (this.wL) {
                case STREAM_TYPE_BUFFERED:
                    obj = "BUFFERED";
                    break;
                case STREAM_TYPE_LIVE:
                    obj = "LIVE";
                    break;
                default:
                    obj = "NONE";
                    break;
            }
            jSONObject.put("streamType", obj);
            if (this.wM != null) {
                jSONObject.put("contentType", this.wM);
            }
            if (this.wN != null) {
                jSONObject.put(Constants.NATIVE_AD_METADATA_ELEMENT, this.wN.cT());
            }
            jSONObject.put(Fields.DURATION, dr.l(this.wO));
            if (this.wP != null) {
                jSONObject.put("customData", this.wP);
            }
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public boolean equals(MediaInfo mediaInfo) {
        boolean z = STREAM_TYPE_BUFFERED;
        if (this == mediaInfo) {
            return true;
        }
        if (!(mediaInfo instanceof MediaInfo)) {
            return false;
        }
        mediaInfo = mediaInfo;
        if ((this.wP == null) != (mediaInfo.wP == null)) {
            return false;
        }
        if (this.wP != null && mediaInfo.wP != null && !fp.d(this.wP, mediaInfo.wP)) {
            return false;
        }
        if (!(dr.a(this.wK, mediaInfo.wK) && this.wL == mediaInfo.wL && dr.a(this.wM, mediaInfo.wM) && dr.a(this.wN, mediaInfo.wN) && this.wO == mediaInfo.wO)) {
            z = false;
        }
        return z;
    }

    public String getContentId() {
        return this.wK;
    }

    public String getContentType() {
        return this.wM;
    }

    public JSONObject getCustomData() {
        return this.wP;
    }

    public MediaMetadata getMetadata() {
        return this.wN;
    }

    public long getStreamDuration() {
        return this.wO;
    }

    public int getStreamType() {
        return this.wL;
    }

    public int hashCode() {
        return ep.hashCode(new Object[]{this.wK, Integer.valueOf(this.wL), this.wM, this.wN, Long.valueOf(this.wO), String.valueOf(this.wP)});
    }

    void j(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Stream duration cannot be negative");
        }
        this.wO = j;
    }

    void setContentType(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("content type cannot be null or empty");
        }
        this.wM = str;
    }

    void setStreamType(int i) {
        if (i < -1 || i > 2) {
            throw new IllegalArgumentException("invalid stream type");
        }
        this.wL = i;
    }
}