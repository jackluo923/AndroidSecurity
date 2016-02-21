package com.vungle.publisher;

import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.log.Logger;
import com.zeptolab.ctr.scorer.GoogleScorer;
import org.json.JSONException;
import org.json.JSONObject;

public final class an extends WebChromeClient {
    private a a;

    public static class a {
        public void a_() {
        }

        public void b() {
        }

        public void c() {
        }
    }

    public an(a aVar) {
        this.a = aVar;
    }

    public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        Logger.v(Logger.AD_TAG, new StringBuilder("js prompt: ").append(str2).toString());
        boolean startsWith = str2.startsWith("vungle:");
        if (startsWith) {
            String str4 = null;
            try {
                str4 = str2.substring(GoogleScorer.CLIENT_ALL);
                JSONObject jSONObject = new JSONObject(str4);
                String string = jSONObject.getString("method");
                jSONObject.getString("params");
                if ("close".equalsIgnoreCase(string)) {
                    this.a.a();
                } else if (AdTrackerConstants.GOAL_DOWNLOAD.equalsIgnoreCase(string)) {
                    this.a.b();
                } else if ("replay".equalsIgnoreCase(string)) {
                    this.a.c();
                } else {
                    Logger.w(Logger.AD_TAG, new StringBuilder("unknown javascript method: ").append(string).toString());
                }
            } catch (IndexOutOfBoundsException e) {
                Logger.w(Logger.AD_TAG, "no javascript method call");
            } catch (JSONException e2) {
                Logger.w(Logger.AD_TAG, new StringBuilder("invalid json ").append(str4).toString(), e2);
            } catch (Exception e3) {
                Logger.e(Logger.AD_TAG, e3);
            }
            jsPromptResult.cancel();
        }
        return startsWith;
    }
}