package com.mopub.mobileads;

import android.app.Activity;
import android.net.Uri;
import android.util.Log;
import com.mopub.mobileads.util.HttpResponses;
import com.mopub.mobileads.util.Strings;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;

abstract class AdLoadTask {
    WeakReference a;

    class CustomEventAdLoadTask extends AdLoadTask {
        private Map b;

        public CustomEventAdLoadTask(AdViewController adViewController, Map map) {
            super(adViewController);
            this.b = map;
        }

        void a() {
            AdViewController adViewController = (AdViewController) this.a.get();
            if (adViewController != null && !adViewController.m()) {
                adViewController.c();
                adViewController.a().a(this.b);
            }
        }

        void b() {
            this.b = null;
        }
    }

    @Deprecated
    class LegacyCustomEventAdLoadTask extends AdLoadTask {
        private Header b;

        public LegacyCustomEventAdLoadTask(AdViewController adViewController, Header header) {
            super(adViewController);
            this.b = header;
        }

        void a() {
            AdViewController adViewController = (AdViewController) this.a.get();
            if (adViewController != null && !adViewController.m()) {
                adViewController.c();
                MoPubView a = adViewController.a();
                if (this.b == null) {
                    Log.i("MoPub", "Couldn't call custom method because the server did not specify one.");
                    a.b(MoPubErrorCode.e);
                } else {
                    String value = this.b.getValue();
                    Log.i("MoPub", new StringBuilder("Trying to call method named ").append(value).toString());
                    Activity activity = a.getActivity();
                    try {
                        activity.getClass().getMethod(value, new Class[]{MoPubView.class}).invoke(activity, new Object[]{a});
                    } catch (NoSuchMethodException e) {
                        Log.d("MoPub", new StringBuilder("Couldn't perform custom method named ").append(value).append("(MoPubView view) because your activity class has no such method").toString());
                        a.b(MoPubErrorCode.e);
                    } catch (Exception e2) {
                        Log.d("MoPub", new StringBuilder("Couldn't perform custom method named ").append(value).toString());
                        a.b(MoPubErrorCode.e);
                    }
                }
            }
        }

        void b() {
            this.b = null;
        }
    }

    class TaskExtractor {
        private final HttpResponse a;
        private final AdViewController b;
        private String c;
        private String d;
        private String e;

        TaskExtractor(HttpResponse httpResponse, AdViewController adViewController) {
            this.a = httpResponse;
            this.b = adViewController;
        }

        private AdLoadTask a(String str) {
            Map hashMap = new HashMap();
            hashMap.put("X-Custom-Event-Class-Name", this.d);
            if (str != null) {
                hashMap.put("X-Custom-Event-Class-Data", str);
            }
            return new CustomEventAdLoadTask(this.b, hashMap);
        }

        private AdLoadTask b() {
            Log.i("MoPub", "Performing custom event.");
            this.d = HttpResponses.a(this.a, "X-Custom-Event-Class-Name");
            if (this.d != null) {
                return a(HttpResponses.a(this.a, "X-Custom-Event-Class-Data"));
            }
            return new LegacyCustomEventAdLoadTask(this.b, this.a.getFirstHeader("X-Customselector"));
        }

        private boolean b(String str) {
            return "mraid".equals(this.c) || "html".equals(str);
        }

        private AdLoadTask c() {
            String a;
            HttpEntity entity = this.a.getEntity();
            a = entity != null ? Strings.a(entity.getContent()) : "";
            String a2 = HttpResponses.a(this.a, "X-Launchpage");
            String a3 = HttpResponses.a(this.a, "X-Clickthrough");
            boolean c = HttpResponses.c(this.a, "X-Scrollable");
            Map hashMap = new HashMap();
            hashMap.put("Html-Response-Body", Uri.encode(a));
            hashMap.put("Scrollable", Boolean.toString(c));
            if (a2 != null) {
                hashMap.put("Redirect-Url", a2);
            }
            if (a3 != null) {
                hashMap.put("Clickthrough-Url", a3);
            }
            return a(Utils.a(hashMap));
        }

        private AdLoadTask d() {
            return a(HttpResponses.a(this.a, "X-Nativeparams"));
        }

        AdLoadTask a() {
            this.c = HttpResponses.a(this.a, "X-Adtype");
            this.e = HttpResponses.a(this.a, "X-Fulladtype");
            this.d = AdTypeTranslator.a(this.b.a(), this.c, this.e);
            if ("custom".equals(this.c)) {
                return b();
            }
            return b(this.c) ? c() : d();
        }
    }

    AdLoadTask(AdViewController adViewController) {
        this.a = new WeakReference(adViewController);
    }

    static AdLoadTask a(HttpResponse httpResponse, AdViewController adViewController) {
        return new TaskExtractor(httpResponse, adViewController).a();
    }

    abstract void a();

    abstract void b();
}