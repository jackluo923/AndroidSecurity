package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelUtils.ErrorReason;
import com.admarvel.android.ads.AdMarvelUtils.SDKAdNetwork;
import com.admarvel.android.util.Logging;
import com.brightcove.player.event.Event;
import com.brightcove.player.model.Video.Fields;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;

public class AdMarvelInterstitialAds {
    private static String DEFAULT_IMAGE_WEB_VIEW_CSS;
    private static String DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT;
    private static String DEFAULT_WEB_VIEW_CSS;
    private static String DEFAULT_WEB_VIEW_HTML_FORMAT;
    private static String DEFAULT_WEB_VIEW_VIEWPORT;
    protected static final String GUID;
    private static String IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT;
    private static String ORMMA_WEB_VIEW_CSS;
    private static boolean enableClickRedirect;
    public static boolean enableOfflineSDK;
    private static final f listener;
    private final HashMap admarvelInterstitialAds;
    private final int backgroundColor;
    WeakReference contextReference;
    private boolean enableAutoScaling;
    private final Handler handler;
    private final d internalAdMarvelInterstitialAdapterListener;
    private final AtomicLong lockTimestamp;
    private Map optionalFlags;
    private final int textBackgroundColor;
    private final int textBorderColor;
    private final int textFontColor;

    public static interface AdMarvelInterstitialAdListener {
        void onAdMarvelVideoActivityLaunched(AdMarvelVideoActivity adMarvelVideoActivity);

        void onAdmarvelActivityLaunched(AdMarvelActivity adMarvelActivity);

        void onClickInterstitialAd(String str);

        void onCloseInterstitialAd();

        void onFailedToReceiveInterstitialAd(SDKAdNetwork sDKAdNetwork, String str, int i, ErrorReason errorReason);

        void onReceiveInterstitialAd(SDKAdNetwork sDKAdNetwork, String str, AdMarvelAd adMarvelAd);

        void onRequestInterstitialAd();
    }

    private static class a implements Runnable {
        private final Map a;
        private final String b;
        private final String c;
        private final String d;
        private final int e;
        private final String f;
        private final WeakReference g;
        private final int h;
        private final String i;
        private final WeakReference j;
        private final Handler k;

        public a(Map map, String str, String str2, String str3, int i, String str4, AdMarvelInterstitialAds adMarvelInterstitialAds, int i2, String str5, Context context, Handler handler) {
            this.a = map;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = i;
            this.f = str4;
            this.g = new WeakReference(adMarvelInterstitialAds);
            this.h = i2;
            this.i = str5;
            this.j = new WeakReference(context);
            this.k = handler;
        }

        public void run() {
            Context context = (Context) this.j.get();
            if (((AdMarvelInterstitialAds) this.g.get()) != null && context != null) {
                new g(context).execute(new Object[]{this.a, this.b, this.c, this.d, Integer.valueOf(this.e), this.f, adMarvelInterstitialAds, Integer.valueOf(this.h), this.i, this.k});
            }
        }
    }

    private static class b implements Runnable {
        private final Map a;
        private final String b;
        private final String c;
        private final String d;
        private final int e;
        private final String f;
        private final WeakReference g;
        private final int h;
        private final String i;
        private final WeakReference j;
        private final Handler k;

        public b(Map map, String str, String str2, String str3, int i, String str4, AdMarvelInterstitialAds adMarvelInterstitialAds, int i2, String str5, Context context, Handler handler) {
            this.a = map;
            this.b = str;
            this.c = str2;
            this.d = str3;
            this.e = i;
            this.f = str4;
            this.g = new WeakReference(adMarvelInterstitialAds);
            this.h = i2;
            this.i = str5;
            this.j = new WeakReference(context);
            this.k = handler;
        }

        public void run() {
            Context context = (Context) this.j.get();
            if (((AdMarvelInterstitialAds) this.g.get()) != null && context != null) {
                new g(context).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[]{this.a, this.b, this.c, this.d, Integer.valueOf(this.e), this.f, adMarvelInterstitialAds, Integer.valueOf(this.h), this.i, this.k});
            }
        }
    }

    private static class c implements Runnable {
        private final AdMarvelAd a;
        private final Context b;

        public c(AdMarvelAd adMarvelAd, Context context) {
            this.a = adMarvelAd;
            this.b = context;
        }

        public void run() {
            if (this.a != null) {
                this.a.setResponseJson();
            }
            com.admarvel.android.util.a b = com.admarvel.android.util.a.b(this.b);
            if (b != null && this.a != null) {
                int a = b.a(this.b);
                this.a.setAdHistoryCounter(a);
                b.a(this.a.getAdHistoryDumpString(), a);
            }
        }
    }

    private static class d implements AdMarvelInterstitialAdapterListener {
        private final WeakReference a;
        private WeakReference b;
        private AdMarvelAd c;

        public d(AdMarvelInterstitialAds adMarvelInterstitialAds) {
            this.a = new WeakReference(adMarvelInterstitialAds);
        }

        public void a(AdMarvelAd adMarvelAd) {
            this.c = adMarvelAd;
            this.b = new WeakReference(adMarvelAd);
        }

        public void onClickInterstitialAd(String str) {
            AdMarvelAd adMarvelAd = (AdMarvelAd) this.b.get();
            AdMarvelInterstitialAds adMarvelInterstitialAds = (AdMarvelInterstitialAds) this.a.get();
            if (adMarvelInterstitialAds != null && adMarvelInterstitialAds.contextReference != null && adMarvelInterstitialAds.contextReference.get() != null && adMarvelAd != null) {
                Context context = (Context) adMarvelInterstitialAds.contextReference.get();
                if (context != null && listener != null) {
                    listener.a(context, str, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
                }
            }
        }

        public void onCloseInterstitialAd() {
            if (listener != null) {
                listener.b();
            }
        }

        public void onFailedToReceiveInterstitialAd(SDKAdNetwork sDKAdNetwork, String str, int i, ErrorReason errorReason, AdMarvelAd adMarvelAd) {
            AdMarvelInterstitialAds adMarvelInterstitialAds = (AdMarvelInterstitialAds) this.a.get();
            if (adMarvelInterstitialAds != null) {
                boolean z = 0;
                if (adMarvelAd.getRetry().equals(Boolean.valueOf(true)) && adMarvelAd.getRetrynum() <= adMarvelAd.getMaxretries()) {
                    String bannerid;
                    int retrynum = adMarvelAd.getRetrynum() + 1;
                    String excluded = adMarvelAd.getExcluded();
                    if (adMarvelAd.getExcluded() == null) {
                        bannerid = adMarvelAd.getBannerid();
                    } else if (adMarvelAd.getExcluded().length() > 0) {
                        bannerid = excluded + "," + adMarvelAd.getBannerid();
                    } else {
                        bannerid = adMarvelAd.getBannerid();
                    }
                    if (adMarvelInterstitialAds.contextReference == null || ((Context) adMarvelInterstitialAds.contextReference.get()) == null || Version.getAndroidSDKVersion() < 11) {
                        adMarvelInterstitialAds.handler.post(new a(adMarvelAd.getTargetParams(), adMarvelAd.getPartnerId(), adMarvelAd.getSiteId(), adMarvelAd.getAndroidId(), adMarvelAd.getOrientation(), adMarvelAd.getDeviceConnectivity(), adMarvelInterstitialAds, retrynum, bannerid, (Context) adMarvelInterstitialAds.contextReference.get(), adMarvelInterstitialAds.handler));
                    } else {
                        adMarvelInterstitialAds.handler.post(new b(adMarvelAd.getTargetParams(), adMarvelAd.getPartnerId(), adMarvelAd.getSiteId(), adMarvelAd.getAndroidId(), adMarvelAd.getOrientation(), adMarvelAd.getDeviceConnectivity(), adMarvelInterstitialAds, retrynum, bannerid, (Context) adMarvelInterstitialAds.contextReference.get(), adMarvelInterstitialAds.handler));
                        z = true;
                    }
                    z = true;
                }
                if (i == 0 && adMarvelInterstitialAds.contextReference != null) {
                    Context context = (Context) adMarvelInterstitialAds.contextReference.get();
                    if (context != null && listener != null) {
                        listener.a(context, sDKAdNetwork, str, i, errorReason, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
                    }
                }
            }
        }

        public void onReceiveInterstitialAd(SDKAdNetwork sDKAdNetwork, String str, AdMarvelAd adMarvelAd) {
            AdMarvelInterstitialAds adMarvelInterstitialAds = (AdMarvelInterstitialAds) this.a.get();
            if (adMarvelInterstitialAds != null && adMarvelInterstitialAds.contextReference != null && adMarvelInterstitialAds.contextReference.get() != null) {
                Context context = (Context) adMarvelInterstitialAds.contextReference.get();
                if (context != null && listener != null) {
                    listener.a(context, sDKAdNetwork, str, adMarvelAd, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
                }
            }
        }

        public void onRequestInterstitialAd() {
            if (listener != null) {
                listener.a();
            }
        }
    }

    static {
        DEFAULT_WEB_VIEW_CSS = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style>";
        DEFAULT_IMAGE_WEB_VIEW_CSS = "<style>#u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S{display:table;height:100%;width:100%;margin:0;padding:0;background-color:transparent;}#u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S>div{display:table-cell;vertical-align:middle;text-align:center;}</style>";
        ORMMA_WEB_VIEW_CSS = "<style>* {-webkit-tap-highlight-color: rgba(0,0,0,0.0);} body {background-color:transparent;margin:0px;padding:0px;}</style><script type='text/javascript' src='http://admarvel.s3.amazonaws.com/js/admarvel_compete_v1.1.js'></script>";
        DEFAULT_WEB_VIEW_HTML_FORMAT = "<html><head>%s</head><body><div align=\"center\">%s</div></body></html>";
        DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT = "<html><head>%s</head><body id=\"u2nfwuKbaKzVwGmUNmk7wFVXHwzy7S\"><div>%s</div></body></html>";
        DEFAULT_WEB_VIEW_VIEWPORT = "<meta name=\"viewport\" content=\"initial-scale=1.0,maximum-scale=1.0,target-densitydpi=device-dpi, width=device-width\" />";
        IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT = "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\" />";
        listener = new f();
        enableClickRedirect = true;
        GUID = UUID.randomUUID().toString();
    }

    public AdMarvelInterstitialAds(Context context, int i, int i2, int i3, int i4) {
        this.enableAutoScaling = true;
        this.lockTimestamp = new AtomicLong(0);
        this.contextReference = new WeakReference(context);
        this.internalAdMarvelInterstitialAdapterListener = new d(this);
        this.handler = new Handler();
        this.admarvelInterstitialAds = new HashMap();
        if (i == 0) {
            this.backgroundColor = 0;
        } else {
            this.backgroundColor = -16777216 | i;
        }
        if (i2 == 0) {
            this.textBackgroundColor = 0;
        } else {
            this.textBackgroundColor = -16777216 | i2;
        }
        this.textFontColor = i3;
        this.textBorderColor = i4;
    }

    public static synchronized void disableNetworkActivity() {
        synchronized (AdMarvelInterstitialAds.class) {
            com.admarvel.android.util.a.b.a();
        }
    }

    private void displayPendingAdMarvelAd(String str, AdMarvelAd adMarvelAd) {
        String str2 = (String) this.admarvelInterstitialAds.get(str);
        if (str2 != null && str2.length() > 0) {
            Context context = (Context) this.contextReference.get();
            String str3 = str + "|" + "custom";
            if (context != null) {
                if (enableOfflineSDK) {
                    new com.admarvel.android.util.a.b().a(adMarvelAd, context, this.handler);
                } else if (!enableOfflineSDK) {
                    new Utils(context, this.handler).firePixel(adMarvelAd);
                }
                String str4 = (String) this.admarvelInterstitialAds.get(str3);
                Intent intent;
                if (str4 == null || !str4.equals("custom")) {
                    intent = new Intent(context, AdMarvelActivity.class);
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    intent.putExtra(Event.SOURCE, "campaign");
                    intent.putExtra(Constants.HTML, str2);
                    intent.putExtra("xml", adMarvelAd.getXml());
                    intent.putExtra("backgroundcolor", this.backgroundColor);
                    intent.putExtra("isInterstitial", true);
                    intent.putExtra("isInterstitialClick", false);
                    intent.putExtra("GUID", GUID);
                    adMarvelAd.removeNonStringEntriesTargetParam();
                    try {
                        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                        objectOutputStream.writeObject(adMarvelAd);
                        objectOutputStream.close();
                        intent.putExtra("serialized_admarvelad", byteArrayOutputStream.toByteArray());
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    context.startActivity(intent);
                } else {
                    this.admarvelInterstitialAds.remove(str3);
                    intent = new Intent(context, AdMarvelVideoActivity.class);
                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                    intent.putExtra(Constants.HTML, str2);
                    intent.putExtra("GUID", GUID);
                    context.startActivity(intent);
                }
            }
        }
    }

    public static synchronized void enableNetworkActivity(Activity activity, String str) {
        synchronized (AdMarvelInterstitialAds.class) {
            com.admarvel.android.util.a.b.b(activity, str);
        }
    }

    public static boolean getEnableClickRedirect() {
        return enableClickRedirect;
    }

    public static f getListener() {
        return listener;
    }

    public static void initializeOfflineSDK(Activity activity, String str) {
        enableOfflineSDK = true;
        com.admarvel.android.util.a.b.a(activity, str);
    }

    public static void setEnableClickRedirect(boolean z) {
        enableClickRedirect = z;
    }

    public static void setListener(AdMarvelInterstitialAdListener adMarvelInterstitialAdListener) {
        listener.a(adMarvelInterstitialAdListener);
    }

    protected void disableAdRequest(String str, AdMarvelAd adMarvelAd, Context context) {
        if (context != null) {
            String str2;
            try {
                str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                int i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
                str2 = str2 != null ? Fields.DURATION + str2 + i + AdMarvelUtils.getSDKVersion() : Fields.DURATION + i + AdMarvelUtils.getSDKVersion();
            } catch (NameNotFoundException e) {
                Logging.log(Log.getStackTraceString(e));
                str2 = null;
            }
            if (str2 != null) {
                Editor edit = context.getSharedPreferences(Utils.encodeString("admarvel"), 0).edit();
                edit.putString(Utils.encodeString(str2), DateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis() + ((long) (Integer.parseInt(str) * 1000)))));
                edit.commit();
                Logging.log("requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST");
                listener.a(context, null, null, 304, Utils.getErrorReason(304), adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
            }
        }
    }

    public void displayInterstitial(Activity activity, SDKAdNetwork sDKAdNetwork, String str, AdMarvelAd adMarvelAd) {
        AdMarvelAdapter adMarvelAdapter = null;
        if (sDKAdNetwork == SDKAdNetwork.GOOGLEPLAY) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GOOGLEPLAY_SDK_ADAPTER_FULL_CLASSNAME);
            } catch (Exception e) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.RHYTHM) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.RHYTHM_SDK_ADAPTER_FULL_CLASSNAME);
            } catch (Exception e2) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.GREYSTRIPE) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.GREYSTRIPE_SDK_ADAPTER_FULL_CLASSNAME);
            } catch (Exception e3) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.MILLENNIAL) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.MILLENNIAL_SDK_APAPTER_FULL_CLASSNAME);
            } catch (Exception e4) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.AMAZON) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.AMAZON_SDK_APAPTER_FULL_CLASSNAME);
            } catch (Exception e5) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.ADCOLONY) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.ADCOLONY_SDK_APAPTER_FULL_CLASSNAME);
            } catch (Exception e6) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.PULSE3D) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.PULSE3D_SDK_APAPTER_FULL_CLASSNAME);
            } catch (Exception e7) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.FACEBOOK) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.FACEBOOK_SDK_APAPTER_FULL_CLASSNAME);
            } catch (Exception e8) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.INMOBI) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.INMOBI_SDK_APAPTER_FULL_CLASSNAME);
            } catch (Exception e9) {
            }
        } else if (sDKAdNetwork == SDKAdNetwork.HEYZAP) {
            try {
                adMarvelAdapter = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", Constants.HEYZAP_SDK_APAPTER_FULL_CLASSNAME);
            } catch (Exception e10) {
            }
        }
        if (adMarvelAdapter != null) {
            adMarvelAdapter.displayInterstitial(activity, str);
            new Utils(activity, this.handler).firePixel(adMarvelAd);
            if (this.contextReference != null && this.contextReference.get() != null && this.handler != null) {
                this.handler.postDelayed(new c(adMarvelAd, (Context) this.contextReference.get()), 3000);
            }
        } else if (sDKAdNetwork == SDKAdNetwork.ADMARVEL) {
            displayPendingAdMarvelAd(str, adMarvelAd);
        }
    }

    public int getAdMarvelBackgroundColor() {
        return this.backgroundColor;
    }

    public int getTextBackgroundColor() {
        return this.textBackgroundColor;
    }

    public int getTextBorderColor() {
        return this.textBorderColor;
    }

    public int getTextFontColor() {
        return this.textFontColor;
    }

    public boolean isAutoScalingEnabled() {
        return this.enableAutoScaling;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void requestNewInterstitialAd(android.content.Context r21, java.util.Map r22, java.lang.String r23, java.lang.String r24) {
        throw new UnsupportedOperationException("Method not decompiled: com.admarvel.android.ads.AdMarvelInterstitialAds.requestNewInterstitialAd(android.content.Context, java.util.Map, java.lang.String, java.lang.String):void");
        /*
        r20 = this;
        r9 = 0;
        if (r22 == 0) goto L_0x000a;
    L_0x0003:
        r9 = new java.util.HashMap;	 Catch:{ Exception -> 0x013b }
        r0 = r22;
        r9.<init>(r0);	 Catch:{ Exception -> 0x013b }
    L_0x000a:
        r1 = new java.lang.ref.WeakReference;	 Catch:{ Exception -> 0x013b }
        r0 = r21;
        r1.<init>(r0);	 Catch:{ Exception -> 0x013b }
        r0 = r20;
        r0.contextReference = r1;	 Catch:{ Exception -> 0x013b }
        r1 = "admarvel";
        r1 = com.admarvel.android.ads.Utils.encodeString(r1);	 Catch:{ Exception -> 0x013b }
        r2 = 0;
        r0 = r21;
        r2 = r0.getSharedPreferences(r1, r2);	 Catch:{ Exception -> 0x013b }
        r1 = r21.getPackageManager();	 Catch:{ Exception -> 0x013b }
        r3 = r21.getPackageName();	 Catch:{ Exception -> 0x013b }
        r4 = 0;
        r1 = r1.getPackageInfo(r3, r4);	 Catch:{ Exception -> 0x013b }
        r1 = r1.versionName;	 Catch:{ Exception -> 0x013b }
        r3 = r21.getPackageManager();	 Catch:{ Exception -> 0x013b }
        r4 = r21.getPackageName();	 Catch:{ Exception -> 0x013b }
        r5 = 0;
        r3 = r3.getPackageInfo(r4, r5);	 Catch:{ Exception -> 0x013b }
        r3 = r3.versionCode;	 Catch:{ Exception -> 0x013b }
        if (r1 == 0) goto L_0x00b7;
    L_0x0042:
        r4 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x013b }
        r4.<init>();	 Catch:{ Exception -> 0x013b }
        r5 = "duration";
        r4 = r4.append(r5);	 Catch:{ Exception -> 0x013b }
        r1 = r4.append(r1);	 Catch:{ Exception -> 0x013b }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x013b }
        r3 = com.admarvel.android.ads.AdMarvelUtils.getSDKVersion();	 Catch:{ Exception -> 0x013b }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x013b }
        r1 = r1.toString();	 Catch:{ Exception -> 0x013b }
    L_0x0061:
        if (r1 == 0) goto L_0x00d3;
    L_0x0063:
        r1 = com.admarvel.android.ads.Utils.encodeString(r1);	 Catch:{ Exception -> 0x013b }
        r3 = 0;
        r1 = r2.getString(r1, r3);	 Catch:{ Exception -> 0x013b }
        if (r1 == 0) goto L_0x00d3;
    L_0x006e:
        r2 = r1.length();	 Catch:{ Exception -> 0x013b }
        if (r2 <= 0) goto L_0x00d3;
    L_0x0074:
        r2 = java.text.DateFormat.getDateTimeInstance();	 Catch:{ Exception -> 0x013b }
        r1 = r2.parse(r1);	 Catch:{ Exception -> 0x013b }
        r2 = java.text.DateFormat.getDateTimeInstance();	 Catch:{ Exception -> 0x013b }
        r3 = new java.util.Date;	 Catch:{ Exception -> 0x013b }
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x013b }
        r3.<init>(r4);	 Catch:{ Exception -> 0x013b }
        r2 = r2.format(r3);	 Catch:{ Exception -> 0x013b }
        r3 = java.text.DateFormat.getDateTimeInstance();	 Catch:{ Exception -> 0x013b }
        r2 = r3.parse(r2);	 Catch:{ Exception -> 0x013b }
        r1 = r2.before(r1);	 Catch:{ Exception -> 0x013b }
        if (r1 == 0) goto L_0x00d3;
    L_0x009b:
        r1 = "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST";
        com.admarvel.android.util.Logging.log(r1);	 Catch:{ Exception -> 0x013b }
        r1 = listener;	 Catch:{ Exception -> 0x013b }
        r3 = 0;
        r4 = 0;
        r5 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r2 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r6 = com.admarvel.android.ads.Utils.getErrorReason(r2);	 Catch:{ Exception -> 0x013b }
        r8 = 0;
        r10 = "";
        r2 = r21;
        r7 = r24;
        r1.a(r2, r3, r4, r5, r6, r7, r8, r9, r10);	 Catch:{ Exception -> 0x013b }
    L_0x00b6:
        return;
    L_0x00b7:
        r1 = new java.lang.StringBuilder;	 Catch:{ Exception -> 0x013b }
        r1.<init>();	 Catch:{ Exception -> 0x013b }
        r4 = "duration";
        r1 = r1.append(r4);	 Catch:{ Exception -> 0x013b }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x013b }
        r3 = com.admarvel.android.ads.AdMarvelUtils.getSDKVersion();	 Catch:{ Exception -> 0x013b }
        r1 = r1.append(r3);	 Catch:{ Exception -> 0x013b }
        r1 = r1.toString();	 Catch:{ Exception -> 0x013b }
        goto L_0x0061;
    L_0x00d3:
        r10 = r23.trim();	 Catch:{ Exception -> 0x013b }
        r11 = r24.trim();	 Catch:{ Exception -> 0x013b }
        r1 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x013b }
        r0 = r20;
        r3 = r0.lockTimestamp;	 Catch:{ Exception -> 0x013b }
        r4 = java.lang.System.currentTimeMillis();	 Catch:{ Exception -> 0x013b }
        r3 = r3.getAndSet(r4);	 Catch:{ Exception -> 0x013b }
        r1 = r1 - r3;
        r3 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        r1 = (r1 > r3 ? 1 : (r1 == r3? 0 : -1));
        if (r1 <= 0) goto L_0x0169;
    L_0x00f2:
        r1 = listener;	 Catch:{ Exception -> 0x013b }
        r1.a();	 Catch:{ Exception -> 0x013b }
        r12 = 0;
        if (r9 == 0) goto L_0x0103;
    L_0x00fa:
        r1 = "UNIQUE_ID";
        r1 = r9.get(r1);	 Catch:{ Exception -> 0x013b }
        r1 = (java.lang.String) r1;	 Catch:{ Exception -> 0x013b }
        r12 = r1;
    L_0x0103:
        if (r12 != 0) goto L_0x010f;
    L_0x0105:
        r1 = com.admarvel.android.util.e.c(r21);	 Catch:{ Exception -> 0x013b }
        r0 = r21;
        r12 = r1.b(r0);	 Catch:{ Exception -> 0x013b }
    L_0x010f:
        r1 = com.admarvel.android.ads.Version.getAndroidSDKVersion();	 Catch:{ Exception -> 0x013b }
        r2 = 11;
        if (r1 < r2) goto L_0x0145;
    L_0x0117:
        r0 = r20;
        r1 = r0.handler;	 Catch:{ Exception -> 0x013b }
        r8 = new com.admarvel.android.ads.AdMarvelInterstitialAds$b;	 Catch:{ Exception -> 0x013b }
        r13 = com.admarvel.android.ads.Utils.getScreenOrientation(r21);	 Catch:{ Exception -> 0x013b }
        r14 = com.admarvel.android.ads.Utils.getDeviceConnectivitiy(r21);	 Catch:{ Exception -> 0x013b }
        r16 = 0;
        r17 = "";
        r0 = r20;
        r0 = r0.handler;	 Catch:{ Exception -> 0x013b }
        r19 = r0;
        r15 = r20;
        r18 = r21;
        r8.<init>(r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19);	 Catch:{ Exception -> 0x013b }
        r1.post(r8);	 Catch:{ Exception -> 0x013b }
        goto L_0x00b6;
    L_0x013b:
        r1 = move-exception;
        r1 = android.util.Log.getStackTraceString(r1);
        com.admarvel.android.util.Logging.log(r1);
        goto L_0x00b6;
    L_0x0145:
        r0 = r20;
        r1 = r0.handler;	 Catch:{ Exception -> 0x013b }
        r8 = new com.admarvel.android.ads.AdMarvelInterstitialAds$a;	 Catch:{ Exception -> 0x013b }
        r13 = com.admarvel.android.ads.Utils.getScreenOrientation(r21);	 Catch:{ Exception -> 0x013b }
        r14 = com.admarvel.android.ads.Utils.getDeviceConnectivitiy(r21);	 Catch:{ Exception -> 0x013b }
        r16 = 0;
        r17 = "";
        r0 = r20;
        r0 = r0.handler;	 Catch:{ Exception -> 0x013b }
        r19 = r0;
        r15 = r20;
        r18 = r21;
        r8.<init>(r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19);	 Catch:{ Exception -> 0x013b }
        r1.post(r8);	 Catch:{ Exception -> 0x013b }
        goto L_0x00b6;
    L_0x0169:
        r1 = "requestNewAd: AD REQUEST PENDING, IGNORING REQUEST";
        com.admarvel.android.util.Logging.log(r1);	 Catch:{ Exception -> 0x013b }
        r1 = listener;	 Catch:{ Exception -> 0x013b }
        r3 = 0;
        r4 = 0;
        r5 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r2 = 304; // 0x130 float:4.26E-43 double:1.5E-321;
        r6 = com.admarvel.android.ads.Utils.getErrorReason(r2);	 Catch:{ Exception -> 0x013b }
        r8 = 0;
        r10 = "";
        r2 = r21;
        r7 = r11;
        r1.a(r2, r3, r4, r5, r6, r7, r8, r9, r10);	 Catch:{ Exception -> 0x013b }
        goto L_0x00b6;
        */
    }

    public void requestNewInterstitialAd(Context context, Map map, String str, String str2, Activity activity) {
        requestNewInterstitialAd(context, map, str, str2);
    }

    protected void requestPendingAdMarvelAd(AdMarvelAd adMarvelAd, Context context) {
        String str = AdTrackerConstants.BLANK;
        if (adMarvelAd != null) {
            Object xhtml;
            if (adMarvelAd.getAdType() == AdType.CUSTOM) {
                xhtml = adMarvelAd.getXhtml();
            } else if (!adMarvelAd.getAdType().equals(AdType.IMAGE) || !adMarvelAd.hasImage() || adMarvelAd.getImageWidth() <= 0 || adMarvelAd.getImageHeight() <= 0) {
                if (adMarvelAd.getXhtml().contains("ORMMA_API")) {
                    xhtml = String.format(DEFAULT_WEB_VIEW_HTML_FORMAT, new Object[]{ORMMA_WEB_VIEW_CSS, adMarvelAd.getXHTML()});
                } else {
                    xhtml = String.format(DEFAULT_WEB_VIEW_HTML_FORMAT, new Object[]{DEFAULT_WEB_VIEW_CSS, adMarvelAd.getXHTML() + Utils.WEB_VIEW_HTML_DYNAMIC_VIEWPORT});
                }
            } else if (Version.getAndroidSDKVersion() >= 7) {
                float deviceWidth = ((float) (Utils.getDeviceWidth(context) < Utils.getDeviceHeight(context) ? Utils.getDeviceWidth(context) : Utils.getDeviceHeight(context))) / Utils.getDeviceDensity(context);
                Logging.log("Device Relative Screen Width :" + deviceWidth);
                str = "<a href=\"" + adMarvelAd.getClickURL() + "\"><img src=\"" + adMarvelAd.getImageURL() + "\" width=\"" + deviceWidth + "\"\" /></a>";
                xhtml = String.format(DEFAULT_IMAGE_WEB_VIEW_HTML_FORMAT, new Object[]{DEFAULT_IMAGE_WEB_VIEW_CSS + IMAGE_AD_AUTOSCALED_WEB_VIEW_VIEWPORT, str});
            } else if (context != null) {
                int deviceHeight;
                int deviceHeight2;
                int imageWidth;
                deviceHeight = Utils.getScreenOrientation(context) == 2 ? Utils.getDeviceHeight(context) : Utils.getDeviceWidth(context);
                deviceHeight2 = Utils.getScreenOrientation(context) == 1 ? Utils.getDeviceHeight(context) : Utils.getDeviceWidth(context);
                if (this.enableAutoScaling) {
                    imageWidth = (int) (((float) adMarvelAd.getImageWidth()) * Utils.getScalingFactor(context, deviceHeight, adMarvelAd.getImageWidth()));
                    deviceHeight = (int) (Utils.getScalingFactor(context, deviceHeight, adMarvelAd.getImageWidth()) * ((float) adMarvelAd.getImageHeight()));
                } else {
                    imageWidth = adMarvelAd.getImageWidth();
                    deviceHeight = adMarvelAd.getImageHeight();
                }
                str = "<a href=\"" + adMarvelAd.getClickURL() + "\"><img src=\"" + adMarvelAd.getImageURL() + "\" width=\"" + imageWidth + "\" height=\"" + Math.min(deviceHeight, deviceHeight2) + "\" /></a>";
                xhtml = String.format(DEFAULT_WEB_VIEW_HTML_FORMAT, new Object[]{DEFAULT_WEB_VIEW_CSS + DEFAULT_WEB_VIEW_VIEWPORT, str});
            } else {
                xhtml = String.format(DEFAULT_WEB_VIEW_HTML_FORMAT, new Object[]{DEFAULT_WEB_VIEW_CSS + DEFAULT_WEB_VIEW_VIEWPORT, adMarvelAd.getXHTML()});
            }
            String str2 = adMarvelAd.getPartnerId() + "|" + adMarvelAd.getSiteId();
            this.admarvelInterstitialAds.put(str2, xhtml);
            if (adMarvelAd.getAdType() == AdType.CUSTOM) {
                this.admarvelInterstitialAds.put(str2 + "|" + "custom", "custom");
            }
            listener.a(context, SDKAdNetwork.ADMARVEL, str2, adMarvelAd, adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
        } else if (listener != null) {
            listener.a(context, SDKAdNetwork.ADMARVEL, AdTrackerConstants.BLANK, 304, Utils.getErrorReason(304), AdTrackerConstants.BLANK, 0, null, AdTrackerConstants.BLANK);
        }
    }

    void requestPendingAdapterAd(Map map, AdMarvelAd adMarvelAd, String str, Context context) {
        int i = 304;
        try {
            AdMarvelAdapter instance = AdMarvelAdapterInstances.getInstance("ADMARVELGUID", str);
            if (this.internalAdMarvelInterstitialAdapterListener != null) {
                this.internalAdMarvelInterstitialAdapterListener.a(adMarvelAd);
            }
            instance.requestIntersitialNewAd(this.internalAdMarvelInterstitialAdapterListener, context, adMarvelAd, map, this.backgroundColor, this.textFontColor);
        } catch (Exception e) {
            Logging.log(Log.getStackTraceString(e));
            listener.a(context, adMarvelAd.getSdkAdNetwork(), adMarvelAd.getPubId(), i, Utils.getErrorReason(i), adMarvelAd.getSiteId(), adMarvelAd.getId(), adMarvelAd.getTargetParams(), adMarvelAd.getIpAddress());
        }
    }

    public void setAdMarvelBackgroundColor(int i) {
    }

    public void setEnableAutoScaling(boolean z) {
        this.enableAutoScaling = z;
    }

    public void setOptionalFlags(Map map) {
        this.optionalFlags = map;
    }

    public void setTextBackgroundColor(int i) {
    }
}