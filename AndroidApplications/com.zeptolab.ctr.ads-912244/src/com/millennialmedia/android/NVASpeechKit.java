package com.millennialmedia.android;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.text.TextUtils;
import com.brightcove.player.util.ErrorUtil;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.nuance.nmdp.speechkit.DataUploadCommand;
import com.nuance.nmdp.speechkit.DataUploadResult;
import com.nuance.nmdp.speechkit.GenericCommand;
import com.nuance.nmdp.speechkit.GenericResult;
import com.nuance.nmdp.speechkit.Recognition;
import com.nuance.nmdp.speechkit.Recognizer;
import com.nuance.nmdp.speechkit.SpeechError;
import com.nuance.nmdp.speechkit.SpeechKit;
import com.nuance.nmdp.speechkit.SpeechKit.CmdSetType;
import com.nuance.nmdp.speechkit.Vocalizer;
import com.nuance.nmdp.speechkit.recognitionresult.DetailedResult;
import com.nuance.nmdp.speechkit.util.dataupload.Action;
import com.nuance.nmdp.speechkit.util.dataupload.Action.ActionType;
import com.nuance.nmdp.speechkit.util.dataupload.Data;
import com.nuance.nmdp.speechkit.util.dataupload.Data.DataType;
import com.nuance.nmdp.speechkit.util.dataupload.DataBlock;
import com.nuance.nmdp.speechkit.util.pdx.PdxValue.Dictionary;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class NVASpeechKit {
    static final float a = 0.25f;
    static final float b = 0.1f;
    static final float c = 90.0f;
    private static final String e = "NVASpeechKit";
    private static final int r = 2000;
    private static final int t = 50;
    private static String y;
    public Result[] _results;
    NuanceCredentials d;
    private WeakReference f;
    private Vocalizer g;
    private SpeechKit h;
    private Handler i;
    private com.nuance.nmdp.speechkit.Recognizer.Listener j;
    private com.nuance.nmdp.speechkit.Vocalizer.Listener k;
    private Recognizer l;
    private State m;
    private AudioLevelTracker n;
    private DataUploadCommand o;
    private CustomWordsOp p;
    private String q;
    private Runnable s;
    private Runnable u;
    private com.nuance.nmdp.speechkit.GenericCommand.Listener v;
    private com.nuance.nmdp.speechkit.DataUploadCommand.Listener w;
    private Listener x;
    private String z;

    public static interface Listener {
        void onAudioLevelUpdate(double d);

        void onAudioSampleUpdate(double d);

        void onCustomWordsAdded();

        void onCustomWordsDeleted();

        void onError();

        void onResults();

        void onStateChange(com.millennialmedia.android.NVASpeechKit.State state);
    }

    static /* synthetic */ class AnonymousClass_8 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[com.millennialmedia.android.NVASpeechKit.State.values().length];
            try {
                a[com.millennialmedia.android.NVASpeechKit.State.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[com.millennialmedia.android.NVASpeechKit.State.PROCESSING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[com.millennialmedia.android.NVASpeechKit.State.READY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[com.millennialmedia.android.NVASpeechKit.State.RECORDING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            a[com.millennialmedia.android.NVASpeechKit.State.VOCALIZING.ordinal()] = 5;
        }
    }

    static class AudioLevelTracker {
        private static final double e = 40.0d;
        private static final double f = 80.0d;
        private static final double g = 9.99d;
        private static final double h = 4.004004004004004d;
        double a;
        double b;
        int c;
        boolean d;

        public AudioLevelTracker() {
            reset();
        }

        private static double b(double d) {
            return Math.min(g, Math.max(Math.floor(d - 40.0d) / 4.004004004004004d, 0.0d));
        }

        public boolean isTrackingAudioSample() {
            return this.d;
        }

        public void reset() {
            this.b = 0.0d;
            this.c = 0;
            this.d = false;
        }

        public void startTrackingAudioSample() {
            reset();
            this.d = true;
        }

        public boolean update(double d) {
            double d2 = this.b;
            double d3 = this.a;
            this.a = d;
            this.c++;
            this.b = ((d2 * ((double) (this.c - 1))) + d) / ((double) this.c);
            return !this.d && this.a != d3;
        }
    }

    public enum CustomWordsOp {
        Add,
        Remove;

        static {
            Add = new com.millennialmedia.android.NVASpeechKit.CustomWordsOp("Add", 0);
            Remove = new com.millennialmedia.android.NVASpeechKit.CustomWordsOp("Remove", 1);
            a = new com.millennialmedia.android.NVASpeechKit.CustomWordsOp[]{Add, Remove};
        }
    }

    public class Result {
        public final int resultScore;
        public final String resultString;

        public Result(String str, double d) {
            this.resultString = str;
            this.resultScore = (int) d;
        }

        public int getResultScore() {
            return this.resultScore;
        }

        public String getResultString() {
            return this.resultString;
        }
    }

    public enum State {
        ERROR(ErrorUtil.ERROR),
        VOCALIZING("vocalizing"),
        RECORDING("recording"),
        READY("ready"),
        PROCESSING("processing");
        private String a;

        static {
            String str = "ERROR";
            String str2 = ErrorUtil.ERROR;
            ERROR = new com.millennialmedia.android.NVASpeechKit.State(str, 0, ErrorUtil.ERROR);
            str2 = "vocalizing";
            VOCALIZING = new com.millennialmedia.android.NVASpeechKit.State("VOCALIZING", 1, "vocalizing");
            str2 = "recording";
            RECORDING = new com.millennialmedia.android.NVASpeechKit.State("RECORDING", 2, "recording");
            str2 = "ready";
            READY = new com.millennialmedia.android.NVASpeechKit.State("READY", 3, "ready");
            str2 = "processing";
            PROCESSING = new com.millennialmedia.android.NVASpeechKit.State("PROCESSING", 4, "processing");
            b = new com.millennialmedia.android.NVASpeechKit.State[]{ERROR, VOCALIZING, RECORDING, READY, PROCESSING};
        }

        private State(String str) {
            this.a = str;
        }

        public String toString() {
            return this.a;
        }
    }

    static {
        y = null;
    }

    public NVASpeechKit(MMWebView mMWebView) {
        this._results = null;
        this.n = new AudioLevelTracker();
        this.s = new Runnable() {
            public void run() {
                NVASpeechKit.this.endRecording();
            }
        };
        this.u = new Runnable() {
            public void run() {
                if (NVASpeechKit.this.l != null) {
                    double a = AudioLevelTracker.b((double) NVASpeechKit.this.l.getAudioLevel());
                    MMLog.b(e, "audiolevel changed: level=" + a);
                    if (NVASpeechKit.this.n.update(a) && NVASpeechKit.this.x != null) {
                        NVASpeechKit.this.x.onAudioLevelUpdate(a);
                    }
                    if (NVASpeechKit.this.m == com.millennialmedia.android.NVASpeechKit.State.RECORDING || NVASpeechKit.this.n.d) {
                        NVASpeechKit.this.i.postDelayed(NVASpeechKit.this.u, 50);
                    }
                }
            }
        };
        this.v = new com.nuance.nmdp.speechkit.GenericCommand.Listener() {
            public void onComplete(GenericCommand genericCommand, GenericResult genericResult, SpeechError speechError) {
                if (speechError != null) {
                    MMLog.e(e, "GenericCommand listener. Error: " + speechError.getErrorDetail());
                } else {
                    MMLog.b(e, "GenericCommand listener. Success: " + genericResult.getQueryResult());
                }
                NVASpeechKit.this.m();
            }
        };
        this.w = new com.nuance.nmdp.speechkit.DataUploadCommand.Listener() {
            private void a(DataUploadCommand dataUploadCommand) {
                if (NVASpeechKit.this.x != null && NVASpeechKit.this.o == dataUploadCommand) {
                    if (NVASpeechKit.this.p == com.millennialmedia.android.NVASpeechKit.CustomWordsOp.Add) {
                        NVASpeechKit.this.x.onCustomWordsAdded();
                    } else {
                        NVASpeechKit.this.x.onCustomWordsDeleted();
                    }
                }
                NVASpeechKit.this.o = null;
            }

            public void onError(DataUploadCommand dataUploadCommand, SpeechError speechError) {
                MMLog.e(e, "DataUploadCommand listener error. command:" + dataUploadCommand.toString() + " Error:" + speechError.getErrorDetail());
                a(dataUploadCommand);
            }

            public void onResults(DataUploadCommand dataUploadCommand, DataUploadResult dataUploadResult) {
                MMLog.b(e, "DataUploadCommand listener successful command:" + dataUploadCommand.toString() + " isVocRegenerated:" + dataUploadResult.isVocRegenerated() + " results:" + dataUploadResult.toString());
                a(dataUploadCommand);
            }
        };
        this.x = new Listener() {
            public void onAudioLevelUpdate(double d) {
                NVASpeechKit.this.a(d);
            }

            public void onAudioSampleUpdate(double d) {
                NVASpeechKit.this.b(d);
            }

            public void onCustomWordsAdded() {
            }

            public void onCustomWordsDeleted() {
            }

            public void onError() {
            }

            public void onResults() {
                NVASpeechKit.this.a(NVASpeechKit.this.a(NVASpeechKit.this.getResults()).toString());
            }

            public void onStateChange(com.millennialmedia.android.NVASpeechKit.State state) {
                switch (AnonymousClass_8.a[state.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        NVASpeechKit.this.e();
                    case GoogleScorer.CLIENT_PLUS:
                        NVASpeechKit.this.c();
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        NVASpeechKit.this.a();
                    case GoogleScorer.CLIENT_APPSTATE:
                        NVASpeechKit.this.b();
                    case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                        NVASpeechKit.this.d();
                    default:
                        break;
                }
            }
        };
        if (mMWebView != null) {
            this.f = new WeakReference(mMWebView);
            a(mMWebView.getContext().getApplicationContext());
        }
        this.m = State.READY;
    }

    private String a(SpeechError speechError) {
        return speechError == null ? "No Error given" : "Speech Kit Error code:" + speechError.getErrorCode() + " detail:" + speechError.getErrorDetail() + " suggestions:" + speechError.getSuggestion();
    }

    private String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (i < bArr.length) {
            int i2 = bArr[i] & 255;
            String toHexString = Integer.toHexString(i2);
            if (i2 < 16) {
                stringBuffer.append('0');
            }
            stringBuffer.append(toHexString);
            i++;
        }
        return stringBuffer.toString();
    }

    private JSONArray a(Result[] resultArr) {
        JSONArray jSONArray = new JSONArray();
        int i = 0;
        while (i < resultArr.length) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("score", AdTrackerConstants.BLANK + resultArr[i].getResultScore());
                jSONObject.put("result", resultArr[i].getResultString());
                jSONArray.put(jSONObject);
                i++;
            } catch (JSONException e) {
                MMLog.e(e, "JSON creation error.", e);
                return null;
            }
        }
        return jSONArray;
    }

    private void a(Context context) {
        if (this.z == null) {
            this.z = context.getApplicationContext().getPackageName();
        }
    }

    private synchronized void a(State state) {
        MMLog.b(e, "recording results returned. state=" + state);
        State state2 = this.m;
        this.m = state;
        if (!(this.x == null || this.m == state2)) {
            this.x.onStateChange(state);
        }
    }

    private void a(Recognizer recognizer) {
        this.i.removeCallbacks(this.u);
        this.i.postDelayed(this.u, 50);
    }

    private void a(List list) {
        MMLog.b(e, "processResults called.");
        this._results = new Result[list.size()];
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            DetailedResult detailedResult = (DetailedResult) it.next();
            int i2 = i + 1;
            this._results[i] = new Result(detailedResult.toString(), detailedResult.getConfidenceScore());
            i = i2;
        }
    }

    private void b(SpeechError speechError) {
        switch (speechError.getErrorCode()) {
            case GoogleScorer.CLIENT_PLUS:
                if (!this.n.d) {
                    a(State.PROCESSING);
                }
                this._results = new Result[0];
                m();
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                a(State.READY);
                this.l = null;
            default:
                if (this.x != null) {
                    this.x.onError();
                    a(State.ERROR);
                    b(a(speechError));
                }
        }
    }

    private byte[] c(String str) {
        if (str == null) {
            return null;
        }
        byte[] bArr = new byte[(str.length() / 2)];
        int i = 0;
        while (i < bArr.length) {
            bArr[i] = (byte) Integer.parseInt(str.substring(i * 2, i * 2 + 2), MMException.REQUEST_NOT_PERMITTED);
            i++;
        }
        return bArr;
    }

    private MMWebView h() {
        return this.f != null ? (MMWebView) this.f.get() : null;
    }

    private void i() {
        if (h() != null) {
            this.f.clear();
        }
    }

    private String j() {
        if (this.f != null) {
            MMWebView mMWebView = (MMWebView) this.f.get();
            if (mMWebView != null) {
                return mMWebView.z();
            }
        }
        return "DEFAULT_AD_ID";
    }

    private com.nuance.nmdp.speechkit.Vocalizer.Listener k() {
        return new com.nuance.nmdp.speechkit.Vocalizer.Listener() {
            public void onSpeakingBegin(Vocalizer vocalizer, String str, Object obj) {
                MMLog.b(e, "Vocalization begins. text=" + str);
                NVASpeechKit.this.a(com.millennialmedia.android.NVASpeechKit.State.VOCALIZING);
            }

            public void onSpeakingDone(Vocalizer vocalizer, String str, SpeechError speechError, Object obj) {
                MMLog.b(e, "Vocalization has ended.");
                if (speechError != null) {
                    MMLog.e(e, "Vocalizer error: " + speechError.getErrorDetail());
                    NVASpeechKit.this.b(speechError);
                } else {
                    NVASpeechKit.this.a(com.millennialmedia.android.NVASpeechKit.State.READY);
                }
            }
        };
    }

    private com.nuance.nmdp.speechkit.Recognizer.Listener l() {
        return new com.nuance.nmdp.speechkit.Recognizer.Listener() {
            public void onError(Recognizer recognizer, SpeechError speechError) {
                MMLog.b(e, "Speech Kit Error code:" + speechError.getErrorCode() + " detail:" + speechError.getErrorDetail() + " suggestions:" + speechError.getSuggestion());
                NVASpeechKit.this.n();
                NVASpeechKit.this.b(speechError);
                NVASpeechKit.this.l = null;
                if (NVASpeechKit.this.h != null) {
                    MMLog.b(e, "Recognizer.Listener.onError: session id [" + NVASpeechKit.this.h.getSessionId() + "]");
                }
            }

            public void onRecordingBegin(Recognizer recognizer) {
                MMLog.b(e, "recording begins");
                NVASpeechKit.this._results = null;
                if (!NVASpeechKit.this.n.isTrackingAudioSample()) {
                    NVASpeechKit.this.a(com.millennialmedia.android.NVASpeechKit.State.RECORDING);
                }
                NVASpeechKit.this.a(recognizer);
                if (NVASpeechKit.this.n.isTrackingAudioSample()) {
                    NVASpeechKit.this.i.removeCallbacks(NVASpeechKit.this.s);
                    NVASpeechKit.this.i.postDelayed(NVASpeechKit.this.s, 2000);
                }
            }

            public void onRecordingDone(Recognizer recognizer) {
                MMLog.b(e, "recording has ended");
                NVASpeechKit.this.n();
                if (!NVASpeechKit.this.n.isTrackingAudioSample()) {
                    NVASpeechKit.this.a(com.millennialmedia.android.NVASpeechKit.State.PROCESSING);
                }
                if (NVASpeechKit.this.h != null) {
                    NVASpeechKit.this.q = NVASpeechKit.this.h.getSessionId();
                }
            }

            public void onResults(Recognizer recognizer, Recognition recognition) {
                MMLog.b(e, "recording results returned.");
                NVASpeechKit.this.n();
                if (NVASpeechKit.this.n.d) {
                    NVASpeechKit.this._results = new com.millennialmedia.android.NVASpeechKit.Result[0];
                    NVASpeechKit.this.m();
                } else {
                    NVASpeechKit.this.a(recognition.getDetailedResults());
                    if (NVASpeechKit.this.q != null) {
                        MMLog.b(e, "Recognizer.Listener.onResults: session id [" + NVASpeechKit.this.q + "]");
                    }
                    NVASpeechKit.this.logEvent();
                }
            }
        };
    }

    private void m() {
        if (!(this.x == null || this._results == null)) {
            if (this.n.d) {
                this.x.onAudioSampleUpdate(this.n.b);
                this.n.reset();
            } else {
                this.x.onResults();
            }
        }
        a(State.READY);
        this.l = null;
    }

    private void n() {
        if (this.i != null) {
            this.i.removeCallbacks(this.s);
            this.i.removeCallbacks(this.u);
        }
    }

    void a() {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.voiceStateChange('ready')");
        }
    }

    void a(double d) {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.audioLevelChange(" + d + ")");
        }
    }

    void a(String str) {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.recognitionResult(" + str + ")");
        }
    }

    void b() {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.voiceStateChange('recording')");
        }
    }

    void b(double d) {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.backgroundAudioLevel(" + d + ")");
        }
    }

    void b(String str) {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.voiceError('" + str + "')");
        }
    }

    void c() {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.voiceStateChange('processing')");
        }
    }

    public void cancelRecording() {
        if (this.l != null) {
            MMLog.b(e, "cancel RECORDING");
            this.l.cancel();
            this.l = null;
            a(State.READY);
        }
    }

    void d() {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.voiceStateChange('vocalizing')");
        }
    }

    void e() {
        MMWebView h = h();
        if (h != null) {
            h.loadUrl("javascript:MMJS.sdk.voiceStateChange('error')");
        }
    }

    public boolean endRecording() {
        if (this.l == null) {
            return false;
        }
        MMLog.b(e, "end RECORDING");
        this.l.stopRecording();
        this.l = null;
        return true;
    }

    String f() {
        return this.h != null ? this.h.getSessionId() : AdTrackerConstants.BLANK;
    }

    synchronized String g() {
        String str;
        if (y != null) {
            str = y;
        } else {
            Context context;
            if (this.f != null) {
                MMWebView mMWebView = (MMWebView) this.f.get();
                if (mMWebView != null) {
                    context = mMWebView.getContext();
                    if (context != null) {
                        str = null;
                    } else {
                        str = Secure.getString(context.getContentResolver(), "android_id");
                        if (str != null) {
                            str = null;
                        } else {
                            try {
                                str = MMSDK.a(MessageDigest.getInstance("SHA1").digest(str.getBytes()));
                                y = str;
                            } catch (Exception e) {
                                MMLog.e(e, "Problem with nuanceid", e);
                                str = null;
                            }
                        }
                    }
                }
            }
            context = null;
            if (context != null) {
                str = Secure.getString(context.getContentResolver(), "android_id");
                if (str != null) {
                    str = MMSDK.a(MessageDigest.getInstance("SHA1").digest(str.getBytes()));
                    y = str;
                } else {
                    str = null;
                }
            } else {
                str = null;
            }
        }
        return str;
    }

    public Result[] getResults() {
        return this._results;
    }

    public synchronized State getState() {
        return this.m;
    }

    public boolean initialize(NuanceCredentials nuanceCredentials, Context context) {
        MMLog.b(e, "initialize called.");
        if (nuanceCredentials == null || context == null) {
            return false;
        }
        this.d = nuanceCredentials;
        if (this.h != null) {
            try {
                this.h.connect();
            } catch (IllegalStateException e) {
                this.h = null;
            }
        }
        if (this.h == null) {
            byte[] c = c(nuanceCredentials.b);
            MMLog.b(e, nuanceCredentials.toString());
            this.h = SpeechKit.initialize(context, "1.0", nuanceCredentials.a, nuanceCredentials.c, nuanceCredentials.d, false, c, CmdSetType.NVC);
            this.k = k();
            this.j = l();
            this.i = new Handler(Looper.getMainLooper());
            this.h.connect();
            a(State.READY);
            return true;
        } else {
            MMLog.b(e, "Already initialized. Skipping.");
            return false;
        }
    }

    public void logEvent() {
        if (this.h != null) {
            Dictionary dictionary = new Dictionary();
            dictionary.put("nva_ad_network_id", "MillenialMedia");
            dictionary.put("nva_device_id", g());
            dictionary.put("nva_ad_publisher_id", this.z);
            String str = AdTrackerConstants.BLANK;
            if (!(this.d == null || TextUtils.isEmpty(this.d.e))) {
                str = this.d.e;
                dictionary.put("nva_ad_session_id", this.d.e);
            }
            String j = j();
            if (!TextUtils.isEmpty(j)) {
                dictionary.put("nva_ad_id", j);
            }
            if (this.q != null) {
                dictionary.put("nva_nvc_session_id", this.q);
                String str2 = this.q;
                this.q = null;
            } else {
                this.h.getSessionId();
            }
            MMLog.b(e, "Sending log revision command to server. sessionId[" + this.h.getSessionId() + "] deviceId[" + g() + "] adId[" + j + "] mmSessionId[" + str + "]");
            this.h.createLogRevisionCmd("NVA_LOG_EVENT", dictionary, this.h.getSessionId(), this.v, this.i).start();
        }
    }

    public void release() {
        MMLog.b(e, "release called.");
        stopActions();
        n();
        if (this.h != null) {
            this.h.release();
            a(State.READY);
            this.h = null;
        }
        this.o = null;
        i();
    }

    public void setSpeechKitListener(Listener listener) {
        this.x = listener;
    }

    public boolean startRecording(String str) {
        MMLog.b(e, "RECORDING INVOKED.");
        if (this.m != State.READY || this.h == null) {
            return false;
        }
        this.q = null;
        this.l = this.h.createRecognizer("dictation", 1, str, this.j, this.i);
        MMLog.b(e, "START RECORDING");
        this.l.start();
        return true;
    }

    public void startSampleRecording() {
        this.n.startTrackingAudioSample();
        startRecording("en_US");
    }

    public void stopActions() {
        if (this.h != null) {
            try {
                this.h.cancelCurrent();
            } catch (Exception e) {
                MMLog.e(e, "No speech kit to disconnect.", e);
            }
        }
    }

    public boolean textToSpeech(String str, String str2) {
        MMLog.b(e, "TTS INVOKED.");
        if (this.m != State.READY || this.h == null) {
            return false;
        }
        this.g = this.h.createVocalizerWithLanguage(str2, this.k, this.i);
        this.g.speakString(str, this);
        return true;
    }

    public void updateCustomWords(CustomWordsOp customWordsOp, String[] strArr) {
        if (this.h != null) {
            DataBlock dataBlock = new DataBlock();
            MMLog.b(e, "Creating dataupload command and " + (customWordsOp == CustomWordsOp.Add ? "adding" : "deleting") + " words.");
            Data data = new Data("nva_custom_word_uploads", DataType.CUSTOMWORDS);
            Action action = new Action(customWordsOp == CustomWordsOp.Add ? ActionType.ADD : ActionType.REMOVE);
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str = strArr[i];
                action.addWord(str);
                MMLog.b(e, "\tword: '" + str + "'");
                i++;
            }
            data.addAction(action);
            dataBlock.addData(data);
            int checksum = dataBlock.getChecksum();
            this.p = customWordsOp;
            this.o = this.h.createDataUploadCmd(dataBlock, checksum, checksum, this.w, this.i);
            this.o.start();
        }
    }
}