package com.millennialmedia.android;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.brightcove.player.media.MediaService;
import com.google.android.gms.plus.PlusShare;
import com.millennialmedia.android.NVASpeechKit.CustomWordsOp;
import java.io.File;
import java.util.Map;

public class BridgeMMSpeechkit extends MMJSObject implements OnCompletionListener, PeriodicListener {
    private static final String n = "BridgeMMSpeechkit";
    private String a;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private String m;

    private static class SingletonHolder {
        public static final SpeechKitHolder INSTANCE;

        static {
            INSTANCE = new SpeechKitHolder();
        }

        private SingletonHolder() {
        }
    }

    private static class SpeechKitHolder {
        private NVASpeechKit a;

        private SpeechKitHolder() {
        }

        public NVASpeechKit getSpeechKit() {
            return this.a;
        }

        public boolean release() {
            if (this.a == null) {
                return false;
            }
            ThreadUtils.a(new Runnable() {
                public void run() {
                    synchronized (SpeechKitHolder.this) {
                        if (SpeechKitHolder.this != null) {
                            SpeechKitHolder.this.cancelRecording();
                            SpeechKitHolder.this.release();
                            SpeechKitHolder.this = null;
                        }
                    }
                }
            });
            return true;
        }

        public void setSpeechKit(NVASpeechKit nVASpeechKit) {
            this.a = nVASpeechKit;
        }
    }

    BridgeMMSpeechkit() {
        this.a = "startRecording";
        this.d = "endRecording";
        this.e = "cacheAudio";
        this.f = "getSessionId";
        this.g = "playAudio";
        this.h = "textToSpeech";
        this.i = "stopAudio";
        this.j = "sampleBackgroundAudioLevel";
        this.k = "releaseVoice";
        this.l = "addCustomVoiceWords";
        this.m = "deleteCustomVoiceWords";
    }

    private MMJSResponse a(Map map) {
        Context context = (Context) this.b.get();
        String str = (String) map.get("path");
        if (!(context == null || str == null)) {
            Audio a = Audio.a(context);
            if (a == null) {
                return null;
            }
            if (a.a()) {
                return MMJSResponse.b("Audio already playing.");
            }
            if (str.startsWith(MediaService.DEFAULT_MEDIA_DELIVERY)) {
                return a.a(Uri.parse(str), Boolean.parseBoolean((String) map.get("repeat")));
            }
            File g = AdCache.g(context, str);
            if (g.exists()) {
                return a.a(Uri.fromFile(g), Boolean.parseBoolean((String) map.get("repeat")));
            }
        }
        return null;
    }

    static void a(NVASpeechKit nVASpeechKit) {
        b().release();
        b().setSpeechKit(nVASpeechKit);
    }

    static boolean a() {
        return b().release();
    }

    static SpeechKitHolder b() {
        return SingletonHolder.INSTANCE;
    }

    static NVASpeechKit c() {
        return b().getSpeechKit();
    }

    private NVASpeechKit e() {
        MMWebView mMWebView = (MMWebView) this.c.get();
        if (mMWebView != null && mMWebView.A() && c() != null) {
            return c();
        }
        Context context = mMWebView.getContext();
        if (context != null) {
            NVASpeechKit nVASpeechKit = new NVASpeechKit(mMWebView);
            a(nVASpeechKit);
            NuanceCredentials nuanceCredentials = HandShake.a(context).j;
            if (nuanceCredentials != null) {
                nVASpeechKit.initialize(nuanceCredentials, context.getApplicationContext());
            }
            return nVASpeechKit;
        }
        return null;
    }

    private NVASpeechKit f() {
        MMWebView mMWebView = (MMWebView) this.c.get();
        return (mMWebView == null || !mMWebView.C()) ? null : c();
    }

    private NVASpeechKit g() {
        return c();
    }

    MMJSResponse a(String str, Map map) {
        if (this.a.equals(str)) {
            return startRecording(map);
        }
        if (this.d.equals(str)) {
            return endRecording(map);
        }
        if (this.e.equals(str)) {
            return cacheAudio(map);
        }
        if (this.f.equals(str)) {
            return getSessionId(map);
        }
        if (this.g.equals(str)) {
            return playAudio(map);
        }
        if (this.h.equals(str)) {
            return textToSpeech(map);
        }
        if (this.i.equals(str)) {
            return stopAudio(map);
        }
        if (this.j.equals(str)) {
            return sampleBackgroundAudioLevel(map);
        }
        if (this.k.equals(str)) {
            return releaseVoice(map);
        }
        if (this.l.equals(str)) {
            return addCustomVoiceWords(map);
        }
        return this.m.equals(str) ? deleteCustomVoiceWords(map) : null;
    }

    void a(String str) {
        MMWebView mMWebView = (MMWebView) this.c.get();
        if (mMWebView != null) {
            mMWebView.loadUrl(str);
        }
    }

    public MMJSResponse addCustomVoiceWords(Map map) {
        NVASpeechKit e = e();
        if (e == null) {
            return MMJSResponse.b("Unable to create speech kit");
        }
        String str = (String) map.get("words");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        e.updateCustomWords(CustomWordsOp.Add, str.split(","));
        a("javascript:MMJS.sdk.customVoiceWordsAdded()");
        return MMJSResponse.a("Added " + str);
    }

    public MMJSResponse cacheAudio(Map map) {
        String str = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL);
        if (!URLUtil.isValidUrl(str)) {
            return MMJSResponse.b("Invalid url");
        }
        if (this.b != null) {
            Context context = (Context) this.b.get();
            if (context != null && AdCache.b(str, str.substring(str.lastIndexOf("/") + 1), context)) {
                a("javascript:MMJS.sdk.audioCached()");
                return MMJSResponse.a("Successfully cached audio at " + str);
            }
        }
        return MMJSResponse.b("Failed to cache audio at" + str);
    }

    public MMJSResponse deleteCustomVoiceWords(Map map) {
        NVASpeechKit e = e();
        if (e == null) {
            return MMJSResponse.b("Unable to create speech kit");
        }
        String str = (String) map.get("words");
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        e.updateCustomWords(CustomWordsOp.Remove, str.split(","));
        a("javascript:MMJS.sdk.customVoiceWordsDeleted()");
        return MMJSResponse.a("Deleted " + str);
    }

    public MMJSResponse endRecording(Map map) {
        NVASpeechKit f = f();
        if (f == null) {
            return MMJSResponse.b("Unable to get speech kit");
        }
        synchronized (f) {
            if (f.endRecording()) {
                MMJSResponse a = MMJSResponse.a();
                return a;
            } else {
                return MMJSResponse.b("Failed in speechKit");
            }
        }
    }

    public MMJSResponse getSessionId(Map map) {
        NVASpeechKit f = f();
        if (f == null) {
            return MMJSResponse.b("No SpeechKit session open.");
        }
        Object f2 = f.f();
        return TextUtils.isEmpty(f2) ? MMJSResponse.b("No SpeechKit session open.") : MMJSResponse.a(f2);
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        a("javascript:MMJS.sdk.audioCompleted()");
        Context context = (Context) this.b.get();
        if (context != null) {
            Audio a = Audio.a(context);
            if (a != null) {
                a.b((OnCompletionListener)this);
                a.b(this);
            }
        }
    }

    public void onUpdate(int i) {
        a("javascript:MMJS.sdk.audioPositionChange(" + i + ")");
    }

    public MMJSResponse playAudio(Map map) {
        if (e() == null) {
            return MMJSResponse.b("Unable to create speech kit");
        }
        if (!URLUtil.isValidUrl((String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL))) {
            return MMJSResponse.b("Invalid url");
        }
        String str = (String) map.get(PlusShare.KEY_CALL_TO_ACTION_URL);
        if (!TextUtils.isEmpty(str)) {
            Context context = (Context) this.b.get();
            if (context != null) {
                Audio a = Audio.a(context);
                if (a != null) {
                    a.a((OnCompletionListener)this);
                    a.a(this);
                }
                map.put("path", str);
                MMJSResponse a2 = a(map);
                if (a2 == null || a2.c != 1) {
                    return a2;
                }
                a("javascript:MMJS.sdk.audioStarted()");
                return a2;
            }
        }
        return null;
    }

    public MMJSResponse releaseVoice(Map map) {
        return a() ? MMJSResponse.b("Unable to get speech kit") : MMJSResponse.a("released speechkit");
    }

    public MMJSResponse sampleBackgroundAudioLevel(Map map) {
        NVASpeechKit e = e();
        if (e == null) {
            return MMJSResponse.b("Unable to create speech kit");
        }
        e.startSampleRecording();
        return null;
    }

    public MMJSResponse startRecording(Map map) {
        NVASpeechKit e = e();
        if (e == null) {
            return MMJSResponse.b("Unable to create speech kit");
        }
        String str = (String) map.get("language");
        if (TextUtils.isEmpty(str)) {
            str = "en_GB";
        }
        return e.startRecording(str) ? MMJSResponse.a() : MMJSResponse.b("Failed in speechKit");
    }

    public MMJSResponse stopAudio(Map map) {
        NVASpeechKit f = f();
        if (f == null) {
            return MMJSResponse.b("Unable to get speech kit");
        }
        f.stopActions();
        if (this.b != null) {
            Audio a = Audio.a((Context) this.b.get());
            if (a != null) {
                return a.b();
            }
        }
        return MMJSResponse.a();
    }

    public MMJSResponse textToSpeech(Map map) {
        MMLog.b(n, "@@-Calling textToSpeech");
        NVASpeechKit e = e();
        if (e == null) {
            return MMJSResponse.b("Unable to create speech kit");
        }
        String str = (String) map.get("language");
        String str2 = (String) map.get("text");
        if (TextUtils.isEmpty(str)) {
            str = "en_GB";
        }
        e.stopActions();
        return e.textToSpeech(str2, str) ? MMJSResponse.a() : MMJSResponse.b("Failed in speechKit");
    }
}