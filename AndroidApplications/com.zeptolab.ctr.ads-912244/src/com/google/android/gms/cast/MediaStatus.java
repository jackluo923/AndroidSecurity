package com.google.android.gms.cast;

import com.admarvel.android.ads.Constants;
import com.google.android.gms.internal.dr;
import org.json.JSONObject;

public final class MediaStatus {
    public static final long COMMAND_PAUSE = 1;
    public static final long COMMAND_SEEK = 2;
    public static final long COMMAND_SET_VOLUME = 4;
    public static final long COMMAND_SKIP_BACKWARD = 32;
    public static final long COMMAND_SKIP_FORWARD = 16;
    public static final long COMMAND_TOGGLE_MUTE = 8;
    public static final int IDLE_REASON_CANCELED = 2;
    public static final int IDLE_REASON_ERROR = 4;
    public static final int IDLE_REASON_FINISHED = 1;
    public static final int IDLE_REASON_INTERRUPTED = 3;
    public static final int IDLE_REASON_NONE = 0;
    public static final int PLAYER_STATE_BUFFERING = 4;
    public static final int PLAYER_STATE_IDLE = 1;
    public static final int PLAYER_STATE_PAUSED = 3;
    public static final int PLAYER_STATE_PLAYING = 2;
    public static final int PLAYER_STATE_UNKNOWN = 0;
    private JSONObject wP;
    private MediaInfo wQ;
    private long wY;
    private double wZ;
    private int xa;
    private int xb;
    private long xc;
    private long xd;
    private double xe;
    private boolean xf;

    public MediaStatus(JSONObject jSONObject) {
        a(jSONObject, IDLE_REASON_NONE);
    }

    public int a(JSONObject jSONObject, int i) {
        int i2;
        long b;
        int i3 = PLAYER_STATE_PLAYING;
        long j = jSONObject.getLong("mediaSessionId");
        if (j != this.wY) {
            this.wY = j;
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (jSONObject.has("playerState")) {
            int i4;
            String string = jSONObject.getString("playerState");
            if (string.equals("IDLE")) {
                i4 = 1;
            } else if (string.equals("PLAYING")) {
                i4 = 2;
            } else if (string.equals("PAUSED")) {
                i4 = 3;
            } else if (string.equals("BUFFERING")) {
                i4 = 4;
            } else {
                i4 = 0;
            }
            if (i4 != this.xa) {
                this.xa = i4;
                i2 |= 2;
            }
            if (i4 == 1 && jSONObject.has("idleReason")) {
                string = jSONObject.getString("idleReason");
                if (!string.equals("CANCELLED")) {
                    if (string.equals("INTERRUPTED")) {
                        i3 = 3;
                    } else if (string.equals("FINISHED")) {
                        i3 = 1;
                    } else if (string.equals("ERROR")) {
                        i3 = 4;
                    } else {
                        i3 = 0;
                    }
                }
                if (i3 != this.xb) {
                    this.xb = i3;
                    i2 |= 2;
                }
            }
        }
        if (jSONObject.has("playbackRate")) {
            double d = jSONObject.getDouble("playbackRate");
            if (this.wZ != d) {
                this.wZ = d;
                i2 |= 2;
            }
        }
        if (jSONObject.has("currentTime") && (i & 2) == 0) {
            b = dr.b(jSONObject.getDouble("currentTime"));
            if (b != this.xc) {
                this.xc = b;
                i2 |= 2;
            }
        }
        if (jSONObject.has("supportedMediaCommands")) {
            b = jSONObject.getLong("supportedMediaCommands");
            if (b != this.xd) {
                this.xd = b;
                i2 |= 2;
            }
        }
        if (jSONObject.has("volume") && (i & 1) == 0) {
            JSONObject jSONObject2 = jSONObject.getJSONObject("volume");
            double d2 = jSONObject2.getDouble("level");
            if (d2 != this.xe) {
                this.xe = d2;
                i2 |= 2;
            }
            boolean z = jSONObject2.getBoolean("muted");
            if (z != this.xf) {
                this.xf = z;
                i2 |= 2;
            }
        }
        if (jSONObject.has("customData")) {
            this.wP = jSONObject.getJSONObject("customData");
            i2 |= 2;
        }
        if (!jSONObject.has("media")) {
            return i2;
        }
        jSONObject2 = jSONObject.getJSONObject("media");
        this.wQ = new MediaInfo(jSONObject2);
        i2 |= 2;
        return jSONObject2.has(Constants.NATIVE_AD_METADATA_ELEMENT) ? i2 | 4 : i2;
    }

    public long cU() {
        return this.wY;
    }

    public JSONObject getCustomData() {
        return this.wP;
    }

    public int getIdleReason() {
        return this.xb;
    }

    public MediaInfo getMediaInfo() {
        return this.wQ;
    }

    public double getPlaybackRate() {
        return this.wZ;
    }

    public int getPlayerState() {
        return this.xa;
    }

    public long getStreamPosition() {
        return this.xc;
    }

    public double getStreamVolume() {
        return this.xe;
    }

    public boolean isMediaCommandSupported(long j) {
        return (this.xd & j) != 0;
    }

    public boolean isMute() {
        return this.xf;
    }
}