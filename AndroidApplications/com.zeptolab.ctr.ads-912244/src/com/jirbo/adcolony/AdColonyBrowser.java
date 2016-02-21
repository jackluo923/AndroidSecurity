package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class AdColonyBrowser extends Activity {
    static boolean enable_back_button;
    static boolean enable_forward_button;
    static boolean finishing;
    static boolean first_draw;
    static boolean is_open;
    static boolean loading;
    static boolean page_loaded;
    static boolean should_recycle;
    public static String url;
    ADCImage back_button;
    boolean back_button_down;
    ADCImage back_button_enabled;
    RelativeLayout bar_layout;
    ADCImage browser_icon;
    ADCImage close_button;
    boolean close_button_down;
    DisplayMetrics dm;
    ADCImage forward_button;
    boolean forward_button_down;
    ADCImage forward_button_enabled;
    ADCImage glow_button;
    ButtonOverlay overlay;
    ProgressBar pb;
    ADCImage reload_button;
    boolean reload_button_down;
    ShadowOverlay shadow_overlay;
    ADCImage stop_button;
    WebView web_view;
    RelativeLayout web_view_layout;

    class ButtonOverlay extends View {
        Rect bounds;
        Paint paint;

        public ButtonOverlay(Activity activity) {
            super(activity);
            this.bounds = new Rect();
            this.paint = new Paint();
        }

        public void addProgress() {
            LayoutParams layoutParams = new RelativeLayout.LayoutParams(AdColonyBrowser.this.pb.getWidth(), AdColonyBrowser.this.pb.getHeight());
            layoutParams.topMargin = (AdColonyBrowser.this.bar_layout.getHeight() - AdColonyBrowser.this.stop_button.height) / 2;
            layoutParams.leftMargin = AdColonyBrowser.this.bar_layout.getWidth() / 10 + AdColonyBrowser.this.stop_button.x() + AdColonyBrowser.this.stop_button.width;
            if (first_draw && AdColonyBrowser.this.stop_button.x() != 0) {
                AdColonyBrowser.this.web_view_layout.removeView(AdColonyBrowser.this.pb);
                AdColonyBrowser.this.web_view_layout.addView(AdColonyBrowser.this.pb, layoutParams);
                first_draw = false;
            }
            if (AdColonyBrowser.this.pb.getLayoutParams() != null) {
                AdColonyBrowser.this.pb.getLayoutParams().height = AdColonyBrowser.this.stop_button.height;
                AdColonyBrowser.this.pb.getLayoutParams().width = AdColonyBrowser.this.stop_button.width;
            }
        }

        public boolean clicked(ADCImage aDCImage, int i, int i2) {
            return i < (aDCImage.x() + aDCImage.width) + 16 && i > aDCImage.x() - 16 && i2 < aDCImage.y() + aDCImage.height + 16 && i2 > aDCImage.y() - 16;
        }

        public void draw_upstates() {
            AdColonyBrowser.this.back_button_down = false;
            AdColonyBrowser.this.forward_button_down = false;
            AdColonyBrowser.this.reload_button_down = false;
            AdColonyBrowser.this.close_button_down = false;
            invalidate();
        }

        public void onDraw(Canvas canvas) {
            getDrawingRect(this.bounds);
            int height = (AdColonyBrowser.this.bar_layout.getHeight() - AdColonyBrowser.this.back_button.height) / 2;
            if (enable_back_button) {
                AdColonyBrowser.this.back_button_enabled.draw(canvas, AdColonyBrowser.this.back_button.width, height);
            } else {
                AdColonyBrowser.this.back_button.draw(canvas, AdColonyBrowser.this.back_button.width, height);
            }
            if (enable_forward_button) {
                AdColonyBrowser.this.forward_button_enabled.draw(canvas, AdColonyBrowser.this.back_button.x() + AdColonyBrowser.this.bar_layout.getWidth() / 10 + AdColonyBrowser.this.back_button.width, height);
            } else {
                AdColonyBrowser.this.forward_button.draw(canvas, AdColonyBrowser.this.back_button.x() + AdColonyBrowser.this.bar_layout.getWidth() / 10 + AdColonyBrowser.this.back_button.width, height);
            }
            if (loading) {
                AdColonyBrowser.this.stop_button.draw(canvas, AdColonyBrowser.this.forward_button.x() + AdColonyBrowser.this.forward_button.width + AdColonyBrowser.this.bar_layout.getWidth() / 10, height);
            } else {
                AdColonyBrowser.this.reload_button.draw(canvas, AdColonyBrowser.this.forward_button.x() + AdColonyBrowser.this.forward_button.width + AdColonyBrowser.this.bar_layout.getWidth() / 10, height);
            }
            AdColonyBrowser.this.close_button.draw(canvas, AdColonyBrowser.this.bar_layout.getWidth() - AdColonyBrowser.this.close_button.width * 2, height);
            if (AdColonyBrowser.this.back_button_down) {
                AdColonyBrowser.this.glow_button.set_position(AdColonyBrowser.this.back_button.x() - AdColonyBrowser.this.glow_button.width / 2 + AdColonyBrowser.this.back_button.width / 2, AdColonyBrowser.this.back_button.y() - AdColonyBrowser.this.glow_button.height / 2 + AdColonyBrowser.this.back_button.height / 2);
                AdColonyBrowser.this.glow_button.draw(canvas);
            }
            if (AdColonyBrowser.this.forward_button_down) {
                AdColonyBrowser.this.glow_button.set_position(AdColonyBrowser.this.forward_button.x() - AdColonyBrowser.this.glow_button.width / 2 + AdColonyBrowser.this.forward_button.width / 2, AdColonyBrowser.this.forward_button.y() - AdColonyBrowser.this.glow_button.height / 2 + AdColonyBrowser.this.forward_button.height / 2);
                AdColonyBrowser.this.glow_button.draw(canvas);
            }
            if (AdColonyBrowser.this.reload_button_down) {
                AdColonyBrowser.this.glow_button.set_position(AdColonyBrowser.this.reload_button.x() - AdColonyBrowser.this.glow_button.width / 2 + AdColonyBrowser.this.reload_button.width / 2, AdColonyBrowser.this.reload_button.y() - AdColonyBrowser.this.glow_button.height / 2 + AdColonyBrowser.this.reload_button.height / 2);
                AdColonyBrowser.this.glow_button.draw(canvas);
            }
            if (AdColonyBrowser.this.close_button_down) {
                AdColonyBrowser.this.glow_button.set_position(AdColonyBrowser.this.close_button.x() - AdColonyBrowser.this.glow_button.width / 2 + AdColonyBrowser.this.close_button.width / 2, AdColonyBrowser.this.close_button.y() - AdColonyBrowser.this.glow_button.height / 2 + AdColonyBrowser.this.close_button.height / 2);
                AdColonyBrowser.this.glow_button.draw(canvas);
            }
            addProgress();
        }

        public boolean onTouchEvent(MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0) {
                if (clicked(AdColonyBrowser.this.back_button, x, y) && enable_back_button) {
                    AdColonyBrowser.this.back_button_down = true;
                    invalidate();
                    return true;
                } else if (clicked(AdColonyBrowser.this.forward_button, x, y) && enable_forward_button) {
                    AdColonyBrowser.this.forward_button_down = true;
                    invalidate();
                    return true;
                } else if (clicked(AdColonyBrowser.this.reload_button, x, y)) {
                    AdColonyBrowser.this.reload_button_down = true;
                    invalidate();
                    return true;
                } else if (clicked(AdColonyBrowser.this.close_button, x, y)) {
                    AdColonyBrowser.this.close_button_down = true;
                    invalidate();
                    return true;
                }
            }
            if (action == 1) {
                if (clicked(AdColonyBrowser.this.back_button, x, y) && enable_back_button) {
                    AdColonyBrowser.this.web_view.goBack();
                    draw_upstates();
                    return true;
                } else if (clicked(AdColonyBrowser.this.forward_button, x, y) && enable_forward_button) {
                    AdColonyBrowser.this.web_view.goForward();
                    draw_upstates();
                    return true;
                } else if (clicked(AdColonyBrowser.this.reload_button, x, y) && loading) {
                    AdColonyBrowser.this.web_view.stopLoading();
                    draw_upstates();
                    return true;
                } else if (clicked(AdColonyBrowser.this.reload_button, x, y) && !loading) {
                    AdColonyBrowser.this.web_view.reload();
                    draw_upstates();
                    return true;
                } else if (clicked(AdColonyBrowser.this.close_button, x, y)) {
                    finishing = true;
                    AdColonyBrowser.this.web_view.loadData(AdTrackerConstants.BLANK, WebRequest.CONTENT_TYPE_HTML, "utf-8");
                    enable_forward_button = false;
                    enable_back_button = false;
                    loading = false;
                    draw_upstates();
                    AdColonyBrowser.this.finish();
                    return true;
                } else {
                    draw_upstates();
                }
            }
            return false;
        }
    }

    class LoadingView extends View {
        Rect bounds;

        public LoadingView(Activity activity) {
            super(activity);
            this.bounds = new Rect();
        }

        public void onDraw(Canvas canvas) {
            if (!page_loaded) {
                canvas.drawARGB(MotionEventCompat.ACTION_MASK, 0, 0, 0);
                getDrawingRect(this.bounds);
                AdColonyBrowser.this.browser_icon.draw(canvas, (this.bounds.width() - AdColonyBrowser.this.browser_icon.width) / 2, (this.bounds.height() - AdColonyBrowser.this.browser_icon.height) / 2);
                invalidate();
            }
        }
    }

    class ShadowOverlay extends View {
        ADCImage img_close_button;
        ADCImage img_close_button_down;
        Paint paint;

        public ShadowOverlay(Activity activity) {
            super(activity);
            this.paint = new Paint();
            this.img_close_button = new ADCImage(ADC.get_String("close_image_normal"));
            this.img_close_button_down = new ADCImage(ADC.get_String("close_image_down"));
            try {
                getClass().getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(this, new Object[]{Integer.valueOf(1), null});
            } catch (Exception e) {
            }
            this.paint.setColor(-3355444);
            this.paint.setStrokeWidth(10.0f);
            this.paint.setStyle(Style.STROKE);
            this.paint.setShadowLayer(3.0f, BitmapDescriptorFactory.HUE_RED, 1.0f, -16777216);
        }

        public void onDraw(Canvas canvas) {
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, 0.0f, (float) AdColonyBrowser.this.bar_layout.getWidth(), 10.0f, this.paint);
        }
    }

    static {
        enable_back_button = false;
        enable_forward_button = false;
        loading = false;
        page_loaded = false;
        first_draw = true;
        should_recycle = false;
        is_open = false;
        finishing = false;
    }

    public AdColonyBrowser() {
        this.back_button_down = false;
        this.forward_button_down = false;
        this.reload_button_down = false;
        this.close_button_down = false;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.dm.heightPixels - ((int) (1.5d * ((double) this.close_button.height))));
        layoutParams.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.bar_layout.getId());
        this.web_view.setLayoutParams(layoutParams);
        first_draw = true;
        this.overlay.invalidate();
    }

    public void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        is_open = true;
        this.back_button = new ADCImage(ADC.get_String("browser_back_image_normal"));
        this.stop_button = new ADCImage(ADC.get_String("browser_stop_image_normal"));
        this.reload_button = new ADCImage(ADC.get_String("browser_reload_image_normal"));
        this.forward_button = new ADCImage(ADC.get_String("browser_forward_image_normal"));
        this.close_button = new ADCImage(ADC.get_String("browser_close_image_normal"));
        this.glow_button = new ADCImage(ADC.get_String("browser_glow_button"));
        this.browser_icon = new ADCImage(ADC.get_String("browser_icon"));
        this.back_button_enabled = new ADCImage(ADC.get_String("browser_back_image_normal"), true);
        this.forward_button_enabled = new ADCImage(ADC.get_String("browser_forward_image_normal"), true);
        this.dm = AdColony.activity().getResources().getDisplayMetrics();
        float f = ((float) this.dm.widthPixels) / this.dm.xdpi;
        float f2 = ((float) this.dm.heightPixels) / this.dm.ydpi;
        double sqrt = (Math.sqrt((double) ((this.dm.widthPixels * this.dm.widthPixels) + (this.dm.heightPixels * this.dm.heightPixels))) / Math.sqrt((double) ((f * f) + (f2 * f2)))) / 220.0d;
        if (sqrt > 1.8d) {
            sqrt = 1.8d;
        }
        first_draw = true;
        enable_back_button = false;
        enable_forward_button = false;
        finishing = false;
        this.back_button.resize(sqrt);
        this.stop_button.resize(sqrt);
        this.reload_button.resize(sqrt);
        this.forward_button.resize(sqrt);
        this.close_button.resize(sqrt);
        this.glow_button.resize(sqrt);
        this.back_button_enabled.resize(sqrt);
        this.forward_button_enabled.resize(sqrt);
        this.pb = new ProgressBar(this);
        this.pb.setVisibility(GoogleScorer.CLIENT_APPSTATE);
        this.web_view_layout = new RelativeLayout(this);
        this.bar_layout = new RelativeLayout(this);
        this.bar_layout.setBackgroundColor(-3355444);
        if (ADC.is_tablet) {
            this.bar_layout.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) (((double) this.back_button.height) * 1.5d)));
        } else {
            this.bar_layout.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) (((double) this.back_button.height) * 1.5d)));
        }
        requestWindowFeature(1);
        getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        getWindow().requestFeature(GoogleScorer.CLIENT_PLUS);
        setVolumeControlStream(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        this.web_view = new WebView(this);
        this.web_view.getSettings().setJavaScriptEnabled(true);
        this.web_view.getSettings().setBuiltInZoomControls(true);
        this.web_view.getSettings().setUseWideViewPort(true);
        this.web_view.getSettings().setLoadWithOverviewMode(true);
        this.web_view.getSettings().setGeolocationEnabled(true);
        if (ADC.is_tablet) {
            setRequestedOrientation(ADC.orientation);
        } else if (VERSION.SDK_INT >= 10) {
            setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
        } else {
            setRequestedOrientation(0);
        }
        this.web_view.setWebChromeClient(new WebChromeClient() {
            public void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
                callback.invoke(str, true, false);
            }

            public void onProgressChanged(WebView webView, int i) {
                AdColonyBrowser.this.setProgress(i * 1000);
            }
        });
        this.web_view.setWebViewClient(new WebViewClient() {
            public void onPageFinished(WebView webView, String str) {
                if (!finishing) {
                    page_loaded = true;
                    loading = false;
                    AdColonyBrowser.this.pb.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                    enable_back_button = AdColonyBrowser.this.web_view.canGoBack();
                    enable_forward_button = AdColonyBrowser.this.web_view.canGoForward();
                }
                AdColonyBrowser.this.overlay.invalidate();
            }

            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                if (!finishing) {
                    loading = true;
                    page_loaded = false;
                    AdColonyBrowser.this.pb.setVisibility(0);
                }
                AdColonyBrowser.this.overlay.invalidate();
            }

            public void onReceivedError(WebView webView, int i, Object obj, String str) {
                ADCLog.error.print("Error viewing URL: ").println(obj);
                AdColonyBrowser.this.finish();
            }

            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!str.startsWith("market://") && !str.startsWith("amzn://")) {
                    return false;
                }
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                if (ADC.current_video != null) {
                    ADC.current_video.startActivity(intent);
                }
                return true;
            }
        });
        this.overlay = new ButtonOverlay(this);
        this.shadow_overlay = new ShadowOverlay(this);
        this.web_view_layout.setBackgroundColor(16777215);
        this.web_view_layout.addView(this.bar_layout);
        this.bar_layout.setId(12345);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, this.dm.heightPixels - ((int) (((double) this.close_button.height) * 1.5d)));
        layoutParams.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.bar_layout.getId());
        this.web_view_layout.addView(this.web_view, layoutParams);
        layoutParams = new RelativeLayout.LayoutParams(-2, 20);
        layoutParams.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.bar_layout.getId());
        layoutParams.setMargins(0, -10, 0, 0);
        this.web_view_layout.addView(this.shadow_overlay, layoutParams);
        i = this.dm.widthPixels > this.dm.heightPixels ? this.dm.widthPixels : this.dm.heightPixels;
        this.web_view_layout.addView(this.overlay, new RelativeLayout.LayoutParams(i * 2, i * 2));
        layoutParams = new RelativeLayout.LayoutParams(-2, this.dm.heightPixels - ((int) (((double) this.close_button.height) * 1.5d)));
        layoutParams.addRule(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, this.bar_layout.getId());
        this.web_view_layout.addView(new LoadingView(this), layoutParams);
        setContentView(this.web_view_layout);
        this.web_view.loadUrl(url);
        ADCLog.info.print("Viewing ").println(url);
    }

    public void onDestroy() {
        if (!ADC.show_post_popup && should_recycle) {
            int i = 0;
            while (i < ADC.bitmaps.size()) {
                ((Bitmap) ADC.bitmaps.get(i)).recycle();
                i++;
            }
            ADC.bitmaps.clear();
        }
        should_recycle = false;
        is_open = false;
        super.onDestroy();
    }

    public void onPause() {
        super.onPause();
        this.overlay.draw_upstates();
    }

    public void onResume() {
        super.onResume();
        first_draw = true;
        this.overlay.invalidate();
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }
}