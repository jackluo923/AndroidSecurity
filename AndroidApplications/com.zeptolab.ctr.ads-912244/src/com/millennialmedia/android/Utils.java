package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import com.brightcove.player.media.MediaService;
import com.google.android.gms.drive.DriveFile;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.ads.R;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONException;
import org.json.JSONObject;

class Utils {
    private static final String a = "Utils";

    static class HttpUtils {

        final class AnonymousClass_1 implements Runnable {
            final /* synthetic */ String a;

            AnonymousClass_1(String str) {
                this.a = str;
            }

            public void run() {
                try {
                    new DefaultHttpClient().execute(new HttpGet(this.a));
                    MMLog.b(a, "Executed Url :\"" + this.a + "\"");
                } catch (IOException e) {
                    MMLog.e(a, "Exception with HttpUtils: ", e);
                }
            }
        }

        HttpUtils() {
        }

        static void a(String str) {
            ThreadUtils.a(new AnonymousClass_1(str));
        }
    }

    static class IntentUtils {
        IntentUtils() {
        }

        static Intent a(RedirectionListenerImpl redirectionListenerImpl) {
            if (redirectionListenerImpl == null) {
                return null;
            }
            Intent intent;
            Uri uri = redirectionListenerImpl.c;
            Context context = (Context) redirectionListenerImpl.b.get();
            boolean z;
            if (context != null) {
                if (uri != null) {
                    String scheme = uri.getScheme();
                    if (scheme != null) {
                        Intent intent2;
                        if (scheme.equalsIgnoreCase(Event.INTENT_MARKET)) {
                            MMLog.a(a, "Creating Android Market intent.");
                            intent2 = new Intent("android.intent.action.VIEW", uri);
                            Event.a(context, Event.INTENT_MARKET, redirectionListenerImpl.e);
                            intent = intent2;
                        } else if (scheme.equalsIgnoreCase("rtsp")) {
                            MMLog.a(a, "Creating streaming video player intent.");
                            intent2 = new Intent(context, MMActivity.class);
                            intent2.setData(uri);
                            intent2.putExtra("class", "com.millennialmedia.android.VideoPlayerActivity");
                            intent = intent2;
                        } else if (scheme.equalsIgnoreCase(Event.INTENT_PHONE_CALL)) {
                            MMLog.a(a, "Creating telephone intent.");
                            intent2 = new Intent("android.intent.action.DIAL", uri);
                            Event.a(context, Event.INTENT_PHONE_CALL, redirectionListenerImpl.e);
                            intent = intent2;
                        } else if (scheme.equalsIgnoreCase(Event.INTENT_TXT_MESSAGE)) {
                            MMLog.a(a, "Creating txt message intent.");
                            String schemeSpecificPart = uri.getSchemeSpecificPart();
                            str = AdTrackerConstants.BLANK;
                            int indexOf = schemeSpecificPart.indexOf("?body=");
                            if (indexOf != -1 && schemeSpecificPart.length() > indexOf) {
                                str = schemeSpecificPart.substring(0, indexOf).replace(',', ';');
                            }
                            intent = new Intent("android.intent.action.VIEW", Uri.parse("sms:" + str));
                            if (indexOf == -1) {
                                intent.putExtra("sms_body", schemeSpecificPart.substring(indexOf + 6));
                            }
                            Event.a(context, Event.INTENT_TXT_MESSAGE, redirectionListenerImpl.e);
                            intent = intent;
                        } else if (scheme.equalsIgnoreCase(AdWebViewClient.MAILTO)) {
                            intent2 = new Intent("android.intent.action.VIEW", uri);
                            Event.a(context, Event.INTENT_EMAIL, redirectionListenerImpl.e);
                            intent = intent2;
                        } else if (scheme.equalsIgnoreCase(Event.INTENT_MAPS)) {
                            MMLog.a(a, "Creating Google Maps intent.");
                            intent2 = new Intent("android.intent.action.VIEW", uri);
                            Event.a(context, Event.INTENT_MAPS, redirectionListenerImpl.e);
                            intent = intent2;
                        } else if (scheme.equalsIgnoreCase("https")) {
                            MMLog.a(a, "Creating launch browser intent.");
                            intent2 = new Intent("android.intent.action.VIEW", uri);
                            Event.a(context, Event.INTENT_EXTERNAL_BROWSER, redirectionListenerImpl.e);
                            intent = intent2;
                        } else if (scheme.equalsIgnoreCase("mmbrowser")) {
                            str = uri.toString().substring(R.styleable.MapAttrs_useViewLifecycle);
                            if (!(str == null || str.contains("://"))) {
                                str = str.replaceFirst("//", "://");
                            }
                            MMLog.a(a, "MMBrowser - Creating launch browser intent.");
                            intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                            Event.a(context, Event.INTENT_EXTERNAL_BROWSER, redirectionListenerImpl.e);
                            intent = intent;
                        } else if (!scheme.equalsIgnoreCase(MediaService.DEFAULT_MEDIA_DELIVERY)) {
                            MMLog.a(a, String.format("Creating intent for unrecognized URI. %s", new Object[]{uri}));
                            intent = new Intent("android.intent.action.VIEW", uri);
                        } else if (uri.getLastPathSegment() != null && (uri.getLastPathSegment().endsWith(".mp4") || uri.getLastPathSegment().endsWith(".3gp"))) {
                            MMLog.a(a, "Creating video player intent.");
                            intent2 = new Intent(context, MMActivity.class);
                            intent2.setData(uri);
                            intent2.putExtra("class", "com.millennialmedia.android.VideoPlayerActivity");
                            Event.a(context, Event.INTENT_STREAMING_VIDEO, redirectionListenerImpl.e);
                            intent = intent2;
                        } else if (redirectionListenerImpl.canOpenOverlay()) {
                            MMLog.a(a, "Creating launch overlay intent.");
                            intent2 = new Intent(context, MMActivity.class);
                            intent2.putExtra("class", AdViewOverlayActivity.class.getCanonicalName());
                            intent2.setData(uri);
                            return intent2;
                        } else {
                            MMLog.a(a, "Creating launch browser intent.");
                            Event.a(context, Event.INTENT_EXTERNAL_BROWSER, redirectionListenerImpl.e);
                            intent = new Intent("android.intent.action.VIEW", uri);
                        }
                        if (obj == null) {
                            MMLog.a(a, String.format("%s resolved to Intent: %s", new Object[]{uri, obj}));
                        } else {
                            MMLog.a(a, String.format("%s", new Object[]{uri}));
                        }
                    }
                }
                z = false;
                if (obj == null) {
                    MMLog.a(a, String.format("%s", new Object[]{uri}));
                } else {
                    MMLog.a(a, String.format("%s resolved to Intent: %s", new Object[]{uri, obj}));
                }
            } else {
                z = false;
            }
            return intent;
        }

        static void a(Context context) {
            Intent intent = new Intent(context, MMActivity.class);
            intent.putExtra("class", "com.millennialmedia.android.AdViewOverlayActivity");
            c(context, intent);
        }

        static void a(Context context, Intent intent) {
            intent.setClass(context, MMActivity.class);
            intent.putExtra("class", "com.millennialmedia.android.AdViewOverlayActivity");
            c(context, intent);
        }

        static void a(Context context, Uri uri) {
            Intent intent = new Intent(context, MMActivity.class);
            intent.setData(uri);
            intent.putExtra("class", "com.millennialmedia.android.VideoPlayerActivity");
            c(context, intent);
        }

        static void a(Context context, File file) {
            a(context, Uri.fromFile(file));
        }

        static void a(Context context, File file, String str) {
            Intent intent = new Intent(context, MMActivity.class);
            intent.setData(Uri.fromFile(file));
            intent.putExtra(AnalyticsSQLiteHelper.EVENT_LIST_TYPE, str);
            intent.putExtra("class", "com.millennialmedia.android.BridgeMMMedia$PickerActivity");
            c(context, intent);
        }

        static void a(Context context, String str) {
            a(context, Uri.parse(str));
        }

        static void b(Context context, Intent intent) {
            intent.setClass(context, MMActivity.class);
            intent.putExtra("class", "com.millennialmedia.android.CachedVideoPlayerActivity");
            c(context, intent);
        }

        static void b(Context context, String str) {
            Intent intent = new Intent(context, MMActivity.class);
            intent.putExtra("class", "com.millennialmedia.android.AdViewOverlayActivity");
            intent.setData(Uri.parse(str));
            c(context, intent);
        }

        static void c(Context context, Intent intent) {
            if (!context instanceof Activity) {
                intent.addFlags(DriveFile.MODE_READ_ONLY);
            }
            d(context, intent);
            context.startActivity(intent);
        }

        static void c(Context context, String str) {
            c(context, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        }

        private static void d(Context context, Intent intent) {
            Uri data = intent.getData();
            if (data != null) {
                String lastPathSegment = data.getLastPathSegment();
                if (TextUtils.isEmpty(intent.getStringExtra("class")) && !TextUtils.isEmpty(lastPathSegment)) {
                    if (lastPathSegment.endsWith(".mp4") || lastPathSegment.endsWith(".3gp") || lastPathSegment.endsWith(".mkv") || lastPathSegment.endsWith("content.once")) {
                        intent.setDataAndType(intent.getData(), "video/*");
                    }
                }
            }
        }
    }

    static class ThreadUtils {
        private static final ExecutorService a;

        static {
            a = Executors.newCachedThreadPool();
        }

        ThreadUtils() {
        }

        static void a(Runnable runnable) {
            a.execute(runnable);
        }
    }

    Utils() {
    }

    static JSONObject a(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            MMLog.e(a, "Unable to calculate view dimensions for null view");
        } else {
            DisplayMetrics displayMetrics = view.getContext().getResources().getDisplayMetrics();
            if (displayMetrics != null) {
                int[] iArr = new int[2];
                view.getLocationInWindow(iArr);
                try {
                    jSONObject.put("x", (int) (((float) iArr[0]) / displayMetrics.density));
                    jSONObject.put("y", (int) (((float) iArr[1]) / displayMetrics.density));
                    jSONObject.put(MMLayout.KEY_WIDTH, (int) (((float) view.getWidth()) / displayMetrics.density));
                    jSONObject.put(MMLayout.KEY_HEIGHT, (int) (((float) view.getHeight()) / displayMetrics.density));
                } catch (JSONException e) {
                    MMLog.e(a, "Unable to build view dimensions", e);
                }
            }
        }
        return jSONObject;
    }
}