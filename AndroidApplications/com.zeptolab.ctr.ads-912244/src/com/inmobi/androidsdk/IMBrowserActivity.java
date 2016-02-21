package com.inmobi.androidsdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Message;
import android.provider.MediaStore.Images.Media;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.brightcove.player.event.Event;
import com.google.android.gms.plus.PlusShare;
import com.heyzap.house.impl.AbstractActivity;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.CustomView.SwitchIconType;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.Constants;
import com.inmobi.re.controller.util.StartActivityForResultCallback;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

@SuppressLint({"UseSparseArrays"})
public class IMBrowserActivity extends Activity {
    public static final String ANIMATED = "isAnimationEnabledOnDimiss";
    public static final int BROWSER_ACTIVITY = 100;
    public static final String EXPANDDATA = "data";
    public static final int EXPAND_ACTIVITY = 102;
    public static final String EXTRA_BROWSER_ACTIVITY_TYPE = "extra_browser_type";
    public static final String EXTRA_URL = "extra_url";
    public static final int GET_IMAGE = 101;
    public static final int INTERSTITIAL_ACTIVITY = 101;
    private static IMWebView b;
    private static IMWebViewListener c;
    private static IMWebView d;
    private static FrameLayout e;
    private static Message f;
    private static Map l;
    private static int m;
    private static Activity o;
    private IMWebView a;
    private RelativeLayout g;
    private float h;
    private Boolean i;
    private CustomView j;
    private long k;
    private int n;
    private WebViewClient p;

    class a implements OnKeyListener {
        a() {
        }

        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                if (d != null) {
                    d.close();
                }
                IMBrowserActivity.this.finish();
                o.finish();
            }
            return false;
        }
    }

    class b implements OnTouchListener {
        b() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    class c implements OnKeyListener {
        c() {
        }

        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                IMBrowserActivity.this.finish();
                o.finish();
            }
            return false;
        }
    }

    class d implements OnClickListener {
        d() {
        }

        public void onClick(View view) {
            if (d != null) {
                d.close();
            }
            IMBrowserActivity.this.finish();
        }
    }

    class e implements OnTouchListener {
        e() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                view.setBackgroundColor(-7829368);
                if (IMBrowserActivity.this.canGoBack()) {
                    IMBrowserActivity.this.goBack();
                } else {
                    IMBrowserActivity.this.finish();
                }
            } else if (motionEvent.getAction() == 0) {
                view.setBackgroundColor(-16711681);
            }
            return true;
        }
    }

    class f implements OnTouchListener {
        f() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                view.setBackgroundColor(-7829368);
                if (IMBrowserActivity.this.canGoForward()) {
                    IMBrowserActivity.this.goForward();
                }
            } else if (motionEvent.getAction() == 0) {
                view.setBackgroundColor(-16711681);
            }
            return true;
        }
    }

    class g implements OnTouchListener {
        g() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                view.setBackgroundColor(-7829368);
                IMBrowserActivity.this.finish();
            } else if (motionEvent.getAction() == 0) {
                view.setBackgroundColor(-16711681);
            }
            return true;
        }
    }

    class h implements OnTouchListener {
        h() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                view.setBackgroundColor(-7829368);
                IMBrowserActivity.this.doHidePlayers();
                IMBrowserActivity.this.reload();
            } else if (motionEvent.getAction() == 0) {
                view.setBackgroundColor(-16711681);
            }
            return true;
        }
    }

    class i implements OnClickListener {
        i() {
        }

        public void onClick(View view) {
            if (!(b == null || b.mInterstitialController == null)) {
                b.mInterstitialController.handleInterstitialClose();
            }
            IMBrowserActivity.this.finish();
        }
    }

    static {
        l = new HashMap();
        m = 0;
    }

    public IMBrowserActivity() {
        this.k = 0;
        this.p = new a(this);
    }

    private String a(String str) {
        int i = 0;
        if (str == null || AdTrackerConstants.BLANK.equals(str)) {
            return null;
        }
        Date parse;
        SimpleDateFormat[] simpleDateFormatArr = JSUtilityController.formats;
        int i2 = 0;
        while (i2 < simpleDateFormatArr.length) {
            try {
                parse = simpleDateFormatArr[i2].parse(str);
                break;
            } catch (Exception e) {
                i2++;
            }
        }
        parse = null;
        simpleDateFormatArr = JSUtilityController.calendarUntiFormats;
        int length = simpleDateFormatArr.length;
        while (i < length) {
            try {
                return simpleDateFormatArr[i].format(Long.valueOf(parse.getTime()));
            } catch (Exception e2) {
                i++;
            }
        }
        return null;
    }

    private String a(JSONArray jSONArray) {
        int i = 0;
        if (jSONArray != null) {
            try {
                if (jSONArray.length() != 0) {
                    StringBuilder stringBuilder = new StringBuilder();
                    while (i < jSONArray.length()) {
                        stringBuilder.append(jSONArray.get(i) + ",");
                        i++;
                    }
                    String toString = stringBuilder.toString();
                    int length = toString.length();
                    if (length == 0) {
                        return null;
                    }
                    try {
                        return toString.charAt(length + -1) == ',' ? toString.substring(0, length - 1) : toString;
                    } catch (Exception e) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't parse json in create calendar event", e);
                        return toString;
                    }
                }
            } catch (Exception e2) {
                Throwable th = e2;
                th.printStackTrace();
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", th);
            }
        }
        return null;
    }

    private String a(JSONArray jSONArray, int i, int i2) {
        int i3 = 0;
        if (jSONArray != null) {
            try {
                if (jSONArray.length() != 0) {
                    StringBuilder stringBuilder = new StringBuilder();
                    while (i3 < jSONArray.length()) {
                        int i4 = jSONArray.getInt(i3);
                        if (i4 >= i && i4 <= i2) {
                            stringBuilder.append(i4 + ",");
                        }
                        i3++;
                    }
                    String toString = stringBuilder.toString();
                    int length = toString.length();
                    if (length == 0) {
                        return null;
                    }
                    try {
                        return toString.charAt(length + -1) == ',' ? toString.substring(0, length - 1) : toString;
                    } catch (Exception e) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Couldn't parse json in create calendar event", e);
                        return toString;
                    }
                }
            } catch (Exception e2) {
                Throwable th = e2;
                th.printStackTrace();
                Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", th);
            }
        }
        return null;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(int r7, java.lang.String r8, java.lang.String r9, java.lang.String r10, int r11) {
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.androidsdk.IMBrowserActivity.a(int, java.lang.String, java.lang.String, java.lang.String, int):void");
        /*
        r6 = this;
        r5 = 0;
        r1 = 0;
        switch(r7) {
            case 1: goto L_0x003d;
            case 2: goto L_0x0040;
            case 3: goto L_0x0043;
            default: goto L_0x0005;
        };
    L_0x0005:
        r0 = r1;
    L_0x0006:
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r2 = r2.append(r8);
        r3 = " ";
        r2 = r2.append(r3);
        r2 = r2.append(r9);
        r3 = " ";
        r2 = r2.append(r3);
        r2 = r2.append(r10);
        r2 = r2.toString();
        r3 = new android.content.Intent;
        r3.<init>();
        r4 = "text/plain";
        r3.setType(r4);
        r3.setPackage(r0);
        r0 = "android.intent.extra.TEXT";
        r3.putExtra(r0, r2);
        r6.startActivityForResult(r3, r11);	 Catch:{ Exception -> 0x0046 }
    L_0x003c:
        return;
    L_0x003d:
        r0 = "";
        goto L_0x0006;
    L_0x0040:
        r0 = "com.google.android.apps.plus";
        goto L_0x0006;
    L_0x0043:
        r0 = "com.twitter.android";
        goto L_0x0006;
    L_0x0046:
        r0 = move-exception;
        switch(r7) {
            case 1: goto L_0x0064;
            case 2: goto L_0x00ae;
            case 3: goto L_0x00c8;
            default: goto L_0x004a;
        };
    L_0x004a:
        r0 = r1;
    L_0x004b:
        if (r0 == 0) goto L_0x00ed;
    L_0x004d:
        r2 = new android.content.Intent;
        r3 = "android.intent.action.VIEW";
        r2.<init>(r3);
        r0 = android.net.Uri.parse(r0);
        r2.setData(r0);
        r6.startActivityForResult(r2, r11);	 Catch:{ Exception -> 0x005f }
        goto L_0x003c;
    L_0x005f:
        r0 = move-exception;
        r6.onActivityResult(r11, r5, r1);
        goto L_0x003c;
    L_0x0064:
        r0 = new java.lang.StringBuilder;	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0.<init>();	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "https://www.facebook.com/dialog/feed?app_id=181821551957328&link=";
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "UTF-8";
        r3 = java.net.URLEncoder.encode(r9, r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "&picture=";
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "UTF-8";
        r3 = java.net.URLEncoder.encode(r10, r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "&name=&description=";
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "UTF-8";
        r3 = java.net.URLEncoder.encode(r8, r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "&redirect_uri=";
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "UTF-8";
        r3 = java.net.URLEncoder.encode(r9, r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.toString();	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        goto L_0x004b;
    L_0x00ae:
        r0 = new java.lang.StringBuilder;	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0.<init>();	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "https://m.google.com/app/plus/x/?v=compose&content=";
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "UTF-8";
        r3 = java.net.URLEncoder.encode(r2, r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.toString();	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        goto L_0x004b;
    L_0x00c8:
        r0 = new java.lang.StringBuilder;	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0.<init>();	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "http://twitter.com/home?status=";
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r3 = "UTF-8";
        r3 = java.net.URLEncoder.encode(r2, r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.append(r3);	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        r0 = r0.toString();	 Catch:{ UnsupportedEncodingException -> 0x00e3 }
        goto L_0x004b;
    L_0x00e3:
        r0 = move-exception;
        r3 = "[InMobi]-[RE]-4.4.1";
        r4 = "UTF-8 encoding not supported? What sorcery is this?";
        com.inmobi.commons.internal.Log.internal(r3, r4, r0);
        goto L_0x004a;
    L_0x00ed:
        r0 = new android.content.Intent;
        r0.<init>();
        r3 = "text/plain";
        r0.setType(r3);
        r3 = "android.intent.extra.TEXT";
        r0.putExtra(r3, r2);
        r6.startActivityForResult(r0, r11);	 Catch:{ Exception -> 0x0101 }
        goto L_0x003c;
    L_0x0101:
        r0 = move-exception;
        r6.onActivityResult(r11, r5, r1);
        goto L_0x003c;
        */
    }

    private void a(long j, long j2, String str, String str2, String str3, String str4, String str5, int i) {
        try {
            Intent intent = new Intent("android.intent.action.EDIT");
            intent.setType("vnd.android.cursor.item/event");
            intent.putExtra("beginTime", j);
            intent.putExtra("allDay", false);
            intent.putExtra(Event.END_TIME, j2);
            intent.putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_TITLE, str2);
            intent.putExtra("eventLocation", str);
            intent.putExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION, str3);
            if (str4.equals("transparent")) {
                intent.putExtra("availability", 1);
            } else {
                if (str4.equals("opaque")) {
                    intent.putExtra("availability", 0);
                }
            }
            if (!AdTrackerConstants.BLANK.equals(str5) && VERSION.SDK_INT > 8) {
                StringBuilder stringBuilder = new StringBuilder();
                try {
                    JSONObject jSONObject = new JSONObject(str5);
                    String optString = jSONObject.optString("frequency");
                    if (optString == null || AdTrackerConstants.BLANK.equals(optString)) {
                        if (this.a != null) {
                            this.a.raiseError("Frequency is incorrect in recurrence rule", "createCalendarEvent");
                        }
                        startActivityForResult(intent, i);
                        return;
                    } else {
                        if ("daily".equals(optString) || "weekly".equals(optString) || "monthly".equals(optString) || "yearly".equals(optString)) {
                            stringBuilder.append("freq=" + optString + ";");
                        }
                        optString = jSONObject.optString("interval");
                        if (optString != null) {
                            try {
                                if (!AdTrackerConstants.BLANK.equals(optString)) {
                                    stringBuilder.append("interval=" + Integer.parseInt(optString) + ";");
                                }
                            } catch (Exception e) {
                                Throwable th = e;
                                if (this.a != null) {
                                    this.a.raiseError("Interval is incorrect in recurrence rule", "createCalendarEvent");
                                }
                                Log.internal(Constants.RENDERING_LOG_TAG, "Invalid interval in recurrence rule", th);
                            }
                        }
                        optString = a(jSONObject.optString("expires"));
                        if (optString != null) {
                            stringBuilder.append("until=" + optString.replace("+", "Z+").replace("-", "Z-") + ";");
                        } else if (this.a != null) {
                            this.a.raiseError("Date format is incorrect in until", "createCalendarEvent");
                        }
                        optString = a(jSONObject.optJSONArray("daysInWeek"));
                        if (optString != null) {
                            stringBuilder.append("byday=" + optString + ";");
                        }
                        optString = a(jSONObject.optJSONArray("daysInMonth"), -30, ApiEventType.API_MRAID_ASYNC_PING);
                        if (optString != null) {
                            stringBuilder.append("bymonthday=" + optString + ";");
                        }
                        optString = a(jSONObject.optJSONArray("daysInYear"), -364, 365);
                        if (optString != null) {
                            stringBuilder.append("byyearday=" + optString + ";");
                        }
                        optString = a(jSONObject.optJSONArray("weeksInMonth"), ConfigException.MISSING_CONFIG_CHANGES, GoogleScorer.CLIENT_APPSTATE);
                        if (optString != null) {
                            stringBuilder.append("byweekno=" + optString + ";");
                        }
                        optString = a(jSONObject.optJSONArray("monthsInYear"), 1, R.styleable.MapAttrs_useViewLifecycle);
                        if (optString != null) {
                            stringBuilder.append("bymonth=" + optString + ";");
                        }
                        Log.internal(Constants.RENDERING_LOG_TAG, "Recurrence rule : " + stringBuilder.toString());
                        if (!AdTrackerConstants.BLANK.equals(stringBuilder.toString())) {
                            intent.putExtra("rrule", stringBuilder.toString());
                        }
                    }
                } catch (Exception e2) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Exception parsing recurrence rule", e2);
                }
            }
            startActivityForResult(intent, i);
        } catch (Exception e3) {
            onActivityResult(i, 0, null);
        }
    }

    private void a(Intent intent) {
        String stringExtra = intent.getStringExtra(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY);
        int intExtra = intent.getIntExtra(AnalyticsEvent.EVENT_ID, 0);
        if (stringExtra.equals("takeCameraPicture")) {
            Uri uri = (Uri) intent.getExtras().get("URI");
            Intent intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
            intent2.putExtra("output", uri);
            try {
                startActivityForResult(intent2, intExtra);
            } catch (Exception e) {
                onActivityResult(intExtra, 0, null);
            }
        } else if (stringExtra.equals("getGalleryImage")) {
            try {
                startActivityForResult(new Intent("android.intent.action.PICK", Media.EXTERNAL_CONTENT_URI), intExtra);
            } catch (Exception e2) {
                onActivityResult(intExtra, 0, null);
            }
        } else if (stringExtra.equals("postToSocial")) {
            a(intent.getIntExtra("socialType", 0), intent.getStringExtra("text"), intent.getStringExtra("link"), intent.getStringExtra(com.admarvel.android.ads.Constants.NATIVE_AD_IMAGE_ELEMENT), intExtra);
        } else if (stringExtra.equals("createCalendarEvent")) {
            a(intent.getLongExtra("start", 0), intent.getLongExtra("end", 0), intent.getStringExtra("location"), intent.getStringExtra(PlusShare.KEY_CONTENT_DEEP_LINK_METADATA_DESCRIPTION), intent.getStringExtra("summary"), intent.getStringExtra("transparency"), intent.getStringExtra("recurrence"), intExtra);
        }
    }

    private void a(ViewGroup viewGroup) {
        View linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setId(BROWSER_ACTIVITY);
        linearLayout.setWeightSum(100.0f);
        linearLayout.setOnTouchListener(new b());
        linearLayout.setBackgroundResource(17301658);
        linearLayout.setBackgroundColor(-7829368);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), (int) (44.0f * this.h));
        layoutParams.addRule(R.styleable.MapAttrs_useViewLifecycle);
        viewGroup.addView(linearLayout, layoutParams);
        layoutParams = new LinearLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
        layoutParams.weight = 25.0f;
        View customView = new CustomView(this, this.h, SwitchIconType.CLOSE_ICON);
        linearLayout.addView(customView, layoutParams);
        customView.setOnTouchListener(new g());
        customView = new CustomView(this, this.h, SwitchIconType.REFRESH);
        linearLayout.addView(customView, layoutParams);
        customView.setOnTouchListener(new h());
        customView = new CustomView(this, this.h, SwitchIconType.BACK);
        linearLayout.addView(customView, layoutParams);
        customView.setOnTouchListener(new e());
        this.j = new CustomView(this, this.h, SwitchIconType.FORWARD_INACTIVE);
        linearLayout.addView(this.j, layoutParams);
        this.j.setOnTouchListener(new f());
    }

    public static int generateId(StartActivityForResultCallback startActivityForResultCallback) {
        m++;
        l.put(Integer.valueOf(m), startActivityForResultCallback);
        return m;
    }

    public static void requestOnAdDismiss(Message message) {
        f = message;
    }

    public static void setExpandedLayout(FrameLayout frameLayout) {
        if (frameLayout != null) {
            e = frameLayout;
        }
    }

    public static void setExpandedWebview(IMWebView iMWebView) {
        if (iMWebView != null) {
            d = iMWebView;
        }
    }

    public static void setOriginalActivity(Activity activity) {
        if (activity != null) {
            o = activity;
        }
    }

    public static void setWebViewListener(IMWebViewListener iMWebViewListener) {
        c = iMWebViewListener;
    }

    public static void setWebview(IMWebView iMWebView) {
        if (iMWebView != null) {
            b = iMWebView;
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        try {
            ((StartActivityForResultCallback) l.get(Integer.valueOf(i))).onActivityResult(i2, intent);
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "onActivityResult failed", e);
        }
        l.remove(Integer.valueOf(i2));
        if (this.a == null) {
            finish();
        }
    }

    public void onConfigurationChanged(Configuration configuration) {
        if (configuration.orientation == 2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
        } else {
            Log.internal(Constants.RENDERING_LOG_TAG, "In allow true,  device orientation:ORIENTATION_PORTRAIT");
        }
        if (this.a != null) {
            this.a.onOrientationEventChange();
        }
        super.onConfigurationChanged(configuration);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        this.n = intent.getIntExtra(EXTRA_BROWSER_ACTIVITY_TYPE, BROWSER_ACTIVITY);
        this.k = intent.getLongExtra(ANIMATED, 0);
        if (this.n == 100) {
            requestWindowFeature(1);
            if (VERSION.SDK_INT < 9 || VERSION.SDK_INT >= 11) {
                getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
            }
            WindowManager windowManager = (WindowManager) getSystemService("window");
            windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
            if (intent.getStringExtra(AbstractActivity.ACTIVITY_INTENT_ACTION_KEY) != null) {
                a(intent);
            }
            this.h = getResources().getDisplayMetrics().density;
            String stringExtra = intent.getStringExtra(EXTRA_URL);
            this.i = Boolean.valueOf(intent.getBooleanExtra("FIRST_INSTANCE", false));
            Log.debug(Constants.RENDERING_LOG_TAG, "IMBrowserActivity-> onCreate");
            CookieSyncManager.createInstance(this);
            CookieSyncManager.getInstance().startSync();
            this.g = new RelativeLayout(this);
            if (stringExtra != null) {
                boolean booleanExtra = intent.getBooleanExtra("QAMODE", false);
                this.a = new IMWebView(this, c, true, true);
                LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
                layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
                layoutParams.addRule(GoogleScorer.CLIENT_PLUS, BROWSER_ACTIVITY);
                this.g.setBackgroundColor(-1);
                this.g.addView(this.a, layoutParams);
                a(this.g);
                this.a.getSettings().setJavaScriptEnabled(true);
                this.a.setExternalWebViewClient(this.p);
                this.a.getSettings().setLoadWithOverviewMode(true);
                this.a.getSettings().setUseWideViewPort(true);
                if (VERSION.SDK_INT >= 8) {
                    this.a.loadUrl(stringExtra, null);
                } else {
                    this.a.loadUrl(stringExtra);
                }
                if (booleanExtra) {
                    HashMap hashMap = new HashMap();
                    hashMap.put("mk-carrier", Constants.QA_MODE_IP);
                    hashMap.put("x-real-ip", Constants.QA_MODE_IP);
                }
                setContentView(this.g);
            }
        } else if (this.n == 101) {
            b.setActivity(this);
            b.mInterstitialController.setActivity(this);
            b.mInterstitialController.changeContentAreaForInterstitials(this.k);
            findViewById = findViewById(MRAIDInterstitialController.INT_CLOSE_BUTTON);
            if (findViewById != null) {
                findViewById.setOnClickListener(new i());
            }
            b.setOnKeyListener(new c());
        } else if (this.n == 102) {
            if (!(e == null || e.getParent() == null)) {
                ((ViewGroup) e.getParent()).removeView(e);
            }
            setContentView(e);
            d.setState(ViewState.EXPANDED);
            d.mIsViewable = true;
            d.mExpandController.setActivity(this);
            d.setBrowserActivity(this);
            d.mExpandController.handleOrientationForExpand();
            findViewById = findViewById(MRAIDExpandController.EXP_CLOSE_BUTTON);
            if (findViewById != null) {
                findViewById.setOnClickListener(new d());
            }
            d.setOnKeyListener(new a());
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        try {
            c = null;
            if (this.a != null) {
                this.a.mAudioVideoController.releaseAllPlayers();
            }
            if (f != null && this.i.booleanValue()) {
                f.sendToTarget();
                f = null;
            }
            if (b != null) {
                b.mAudioVideoController.releaseAllPlayers();
                b = null;
            }
            if (e != null) {
                e = null;
            }
            if (d != null) {
                d = null;
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception in onDestroy ", e);
        }
    }

    protected void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
    }

    protected void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
    }
}