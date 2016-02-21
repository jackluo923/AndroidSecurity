package com.inmobi.monetization.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.inmobi.androidsdk.impl.imai.IMAIController;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDUtil;
import com.inmobi.re.container.IMWebView;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;

public class TrackerView extends View {
    public static final int ID = 999;
    WebViewClient a;
    private IMWebView b;
    private boolean c;
    private String d;
    private ArrayList e;
    private boolean f;

    public TrackerView(Context context, String str, String str2) {
        super(context);
        this.c = false;
        this.e = null;
        this.f = false;
        this.a = new a(this);
        if (str != null && str2 != null) {
            this.d = str2;
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(R.styleable.MapAttrs_uiZoomControls);
            setLayoutParams(layoutParams);
            setBackgroundColor(0);
            IMWebView.setIMAIController(IMAIController.class);
            this.b = new IMWebView(context, null, false, false);
            this.b.getSettings().setJavaScriptEnabled(true);
            this.b.getSettings().setCacheMode(GoogleScorer.CLIENT_PLUS);
            this.b.setWebViewClient(this.a);
            this.b.loadData(str, WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT);
            this.e = new ArrayList();
            setId(ID);
        }
    }

    private String a() {
        return this.d + "recordEvent(18)";
    }

    private String a(HashMap hashMap) {
        StringBuilder stringBuilder = new StringBuilder();
        if (hashMap == null || hashMap.isEmpty()) {
            stringBuilder.append(this.d + "recordEvent(8)");
            return stringBuilder.toString();
        } else {
            stringBuilder.append(this.d + "recordEvent(8, ");
            JSONObject jSONObject = new JSONObject();
            UIDUtil.bindToJSON(hashMap, jSONObject);
            stringBuilder.append(jSONObject.toString());
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    public void click(HashMap hashMap) {
        Log.debug(Constants.LOG_TAG, "Handle Click");
        String a = a(hashMap);
        if (this.f) {
            injectJavaScript(a);
        } else if (this.e != null) {
            this.e.add(a);
        }
    }

    public void destroy() {
        if (this.b != null) {
            this.b.destroy();
            this.b = null;
        }
        if (this.e != null) {
            this.e.clear();
            this.e = null;
        }
        this.c = false;
        this.f = false;
    }

    public void handleImpression(String str) {
        Log.debug(Constants.LOG_TAG, "Handle Impression");
        injectJavaScript(str);
    }

    public void injectJavaScript(String str) {
        if (str != null) {
            try {
                if (str.length() < 400) {
                    Log.internal(Constants.LOG_TAG, str);
                }
                if (this.b != null) {
                    this.b.loadUrl("javascript:try{" + str + "}catch(e){}");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (i == 0 && !this.c) {
            this.c = true;
            if (this.f) {
                handleImpression(a());
            } else if (this.e != null) {
                this.e.add(a());
            }
        }
    }
}