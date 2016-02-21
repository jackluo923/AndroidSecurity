package com.inmobi.re.container;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebView;
import android.widget.AbsoluteLayout.LayoutParams;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.controller.util.Constants;

class a extends WebChromeClient {
    final /* synthetic */ IMWebView a;

    class a implements OnKeyListener {
        a() {
        }

        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed when html5 video is playing");
            IMWebView.l(a.this);
            return false;
        }
    }

    class b implements OnTouchListener {
        b() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    class c implements OnClickListener {
        final /* synthetic */ JsResult a;

        c(JsResult jsResult) {
            this.a = jsResult;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.a.confirm();
        }
    }

    class d implements OnFocusChangeListener {
        d() {
        }

        public void onFocusChange(View view, boolean z) {
            IMWebView.j(a.this).requestFocus();
        }
    }

    class e implements OnTouchListener {
        e() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    class f implements OnClickListener {
        final /* synthetic */ Callback a;
        final /* synthetic */ String b;

        f(Callback callback, String str) {
            this.a = callback;
            this.b = str;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.a.invoke(this.b, false, false);
        }
    }

    class g implements OnClickListener {
        final /* synthetic */ Callback a;
        final /* synthetic */ String b;

        g(Callback callback, String str) {
            this.a = callback;
            this.b = str;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.a.invoke(this.b, true, false);
        }
    }

    class h implements OnKeyListener {
        h() {
        }

        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                Log.debug(Constants.RENDERING_LOG_TAG, "Back Button pressed when html5 video is playing");
                IMWebView.j(a.this).stopPlayback();
                IMWebView.l(a.this);
            }
            return false;
        }
    }

    a(IMWebView iMWebView) {
        this.a = iMWebView;
    }

    public void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
        boolean z = false;
        try {
            Builder builder = new Builder(IMWebView.h(this.a));
            builder.setTitle("Locations access");
            builder.setMessage("Allow location access").setCancelable(true).setPositiveButton("Accept", new g(callback, str)).setNegativeButton("Decline", new f(callback, str));
            builder.create().show();
            super.onGeolocationPermissionsShowPrompt(str, callback);
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "Exception while accessing location from creative ", e);
            callback.invoke(str, z, z);
        }
    }

    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        Log.debug(Constants.RENDERING_LOG_TAG, "IMWebView-> onJsAlert, " + str2);
        try {
            Context expandedActivity;
            expandedActivity = (this.a.isExpanded() || this.a.mIsInterstitialAd) ? this.a.getExpandedActivity() : webView.getContext();
            new Builder(expandedActivity).setTitle(str).setMessage(str2).setPositiveButton(17039370, new c(jsResult)).setCancelable(false).create().show();
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "webchrome client exception onJSAlert ", e);
        }
        return true;
    }

    public void onShowCustomView(View view, CustomViewCallback customViewCallback) {
        IMWebView.a(this.a, view);
        IMWebView.a(this.a, customViewCallback);
        Log.debug(Constants.RENDERING_LOG_TAG, "onShowCustomView ******************************" + view);
        try {
            IMWebView.a(this.a, IMWebView.g(this.a), new b());
            IMWebView.g(this.a).setOnTouchListener(new e());
            if (view instanceof FrameLayout) {
                IMWebView.a(this.a, (FrameLayout) view);
                FrameLayout frameLayout = (FrameLayout) IMWebView.h(this.a).findViewById(16908290);
                if (IMWebView.i(this.a).getFocusedChild() instanceof VideoView) {
                    Context expandedActivity;
                    IMWebView.a(this.a, (VideoView) IMWebView.i(this.a).getFocusedChild());
                    expandedActivity = (this.a.isExpanded() || this.a.mIsInterstitialAd) ? this.a.getExpandedActivity() : view.getContext();
                    IMWebView.j(this.a).setMediaController(new MediaController(expandedActivity));
                    IMWebView.i(this.a).setBackgroundColor(-16777216);
                    IMWebView.j(this.a).setOnCompletionListener(IMWebView.k(this.a));
                    IMWebView.j(this.a).setOnFocusChangeListener(new d());
                    frameLayout.addView(IMWebView.g(this.a), new LayoutParams(-1, -1, 0, 0));
                    Log.debug(Constants.RENDERING_LOG_TAG, "Registering");
                    IMWebView.a(this.a, IMWebView.g(this.a), new h());
                } else {
                    IMWebView.a(this.a, view);
                    view.setBackgroundColor(-16777216);
                    Log.debug(Constants.RENDERING_LOG_TAG, "adding " + view);
                    frameLayout.addView(view, new LayoutParams(-1, -1, 0, 0));
                    IMWebView.a(this.a, IMWebView.g(this.a), new a());
                }
            }
        } catch (Exception e) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMWebview onShowCustomView exception ", e);
        }
    }
}