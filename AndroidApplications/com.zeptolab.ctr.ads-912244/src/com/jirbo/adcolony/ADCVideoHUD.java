package com.jirbo.adcolony;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.MotionEventCompat;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

class ADCVideoHUD extends View implements OnCompletionListener, OnErrorListener {
    static float[] widths;
    ADCImage[] active_buttons;
    ADCVideo activity;
    float angle_per_sec;
    ADCImage background;
    Rect bounds;
    ADCImage browser_icon;
    String[] button_labels;
    Paint button_text_paint;
    boolean can_press;
    Canvas canvas;
    float center_x;
    float center_y;
    Paint circle_paint;
    boolean close_pressed;
    int close_xpos;
    int close_ypos;
    float cur_angle;
    Timer dissolve_timer;
    long end_card_loading_finish;
    long end_card_loading_start;
    WebView end_card_web_view;
    boolean engagement;
    boolean engagement_delay_met;
    int engagement_delay_ms;
    boolean engagement_pressed;
    String engagement_text;
    String engagement_url;
    boolean error;
    boolean first_resize;
    boolean first_update;
    boolean graceful_fail;
    float height;
    double hud_scale;
    double image_scale;
    ADCImage img_close_button;
    ADCImage img_close_button_down;
    ADCImage img_engagement_button_down;
    ADCImage img_engagement_button_normal;
    ADCImage img_reload_button;
    ADCImage img_reload_button_down;
    ADCImage img_skip_button;
    ADCImage img_skip_button_down;
    boolean is_html5;
    boolean is_static;
    int keyboard_offset;
    int left_margin;
    View loading_view;
    ADCMRAIDHandler mraid_handler;
    ADCImage[] normal_buttons;
    int offset;
    Handler on_button_press_handler;
    int original_bg_height;
    int original_bg_width;
    RectF oval;
    Paint paint;
    float radius;
    int recent_selected_button;
    boolean reload_pressed;
    int reload_xpos;
    int reload_ypos;
    boolean resize_images;
    int selected_button;
    boolean show_version;
    boolean skip_delay_met;
    int skip_delay_ms;
    boolean skippable;
    Paint text_paint;
    boolean up_state;
    UpdateHandler update_handler;
    String version_number;
    Paint version_paint;
    int video_duration_ms;
    boolean web_layout_offset;
    float width;

    class AnonymousClass_1JsObject {
        final /* synthetic */ boolean val$visible;

        AnonymousClass_1JsObject(boolean z) {
            this.val$visible = z;
        }

        public String toString() {
            return this.val$visible ? "keyboard_opened" : "keyboard_closed";
        }
    }

    class AnonymousClass_6 implements Runnable {
        final /* synthetic */ View val$black_view;

        AnonymousClass_6(View view) {
            this.val$black_view = view;
        }

        public void run() {
            ADCVideoHUD.this.activity.layout.removeView(this.val$black_view);
            ADCVideoHUD.this.dec_fire_viewable_change(true);
            ADCVideoHUD.this.activity.endcard_time_resume = System.currentTimeMillis();
        }
    }

    class AnonymousClass_8 implements Runnable {
        final /* synthetic */ View val$black_view;

        AnonymousClass_8(View view) {
            this.val$black_view = view;
        }

        public void run() {
            if (ADCVideoHUD.this.is_html5) {
                ADCVideoHUD.this.activity.web_layout.setVisibility(GoogleScorer.CLIENT_APPSTATE);
            }
            ADCVideoHUD.this.activity.layout.removeView(this.val$black_view);
        }
    }

    class AnonymousClass_9 implements OnGlobalLayoutListener {
        final /* synthetic */ View val$root_view;

        AnonymousClass_9(View view) {
            this.val$root_view = view;
        }

        public void onGlobalLayout() {
            Rect rect = new Rect();
            this.val$root_view.getWindowVisibleDisplayFrame(rect);
            if (ADCVideoHUD.this.end_card_web_view != null) {
                ADCVideoHUD.this.set_offset(this.val$root_view.getRootView().getHeight() - rect.bottom - rect.top - (ADCVideoHUD.this.activity.display_height - ADCVideoHUD.this.end_card_web_view.getHeight()) / 2);
            }
            ADCVideoHUD.this.open_or_closed();
        }
    }

    class LoadingView extends View {
        Rect bounds;

        public LoadingView(Activity activity) {
            super(activity);
            this.bounds = new Rect();
        }

        public void onDraw(Canvas canvas) {
            canvas.drawARGB(MotionEventCompat.ACTION_MASK, 0, 0, 0);
            getDrawingRect(this.bounds);
            ADCVideoHUD.this.browser_icon.draw(canvas, (this.bounds.width() - ADCVideoHUD.this.browser_icon.width) / 2, (this.bounds.height() - ADCVideoHUD.this.browser_icon.height) / 2);
            invalidate();
        }
    }

    class UpdateHandler extends Handler {
        UpdateHandler() {
            check_back_later();
        }

        void check_back_later() {
            sendMessageDelayed(obtainMessage(), 500);
        }

        public void handleMessage(Message message) {
            check_back_later();
            if (!ADCVideoHUD.this.activity.isFinishing() && ADCVideoHUD.this.activity.video_view != null) {
                synchronized (this) {
                    if (!(ADCVideoHUD.this.dissolve_timer == null || !ADCVideoHUD.this.dissolve_timer.expired() || ADCVideoHUD.this.activity.video_view.isPlaying())) {
                        ADCVideoHUD.this.dissolve_timer = null;
                        ADCVideoHUD.this.selected_button = 0;
                        if (ADCVideoHUD.this.activity.video_view != null) {
                            ADCVideoHUD.this.activity.video_view.stopPlayback();
                        }
                        ADCVideoHUD.this.activity.endcard_dissolved = true;
                        ADCVideoHUD.this.handle_continue();
                    }
                }
            }
        }
    }

    static {
        widths = new float[80];
    }

    ADCVideoHUD(ADCVideo aDCVideo) {
        super(aDCVideo);
        this.image_scale = 1.0d;
        this.hud_scale = 1.0d;
        this.left_margin = 99;
        this.keyboard_offset = 0;
        this.resize_images = true;
        this.first_resize = true;
        this.up_state = true;
        this.first_update = true;
        this.can_press = true;
        this.graceful_fail = true;
        this.version_number = controller.configuration.sdk_version;
        this.paint = new Paint();
        this.text_paint = new Paint(1);
        this.button_text_paint = new Paint(1);
        this.version_paint = new Paint(1);
        this.bounds = new Rect();
        this.normal_buttons = new ADCImage[4];
        this.active_buttons = new ADCImage[4];
        this.button_labels = new String[4];
        this.circle_paint = new Paint(1);
        this.oval = new RectF();
        this.update_handler = new UpdateHandler();
        this.on_button_press_handler = new Handler() {
            public void handleMessage(Message message) {
                if (!ADCVideoHUD.this.activity.isFinishing() && ADCVideoHUD.this.activity.video_view != null) {
                    ADCVideoHUD.this.onButton(message.what);
                }
            }
        };
        this.activity = aDCVideo;
        this.skippable = controller.configuration.skippable;
        if (current_ad != null) {
            this.skippable |= current_ad.ad_info.video.skip_video.enabled;
        }
        this.is_html5 = end_card_is_html5;
        if (force_dec_url != null) {
            end_card_url = force_dec_url;
        }
        if (current_ad != null && current_ad.ad_info.companion_ad.enabled) {
            this.is_static = !this.is_html5;
        }
        if (this.is_static) {
            this.background = new ADCImage(ADC.get_String("end_card_filepath"));
            this.original_bg_width = this.background.width;
            this.original_bg_height = this.background.height;
            if (this.original_bg_width == 0) {
                this.original_bg_width = 480;
            }
            if (this.original_bg_height == 0) {
                this.original_bg_height = 320;
            }
            this.normal_buttons[0] = new ADCImage(ADC.get_String("info_image_normal"));
            this.normal_buttons[1] = new ADCImage(ADC.get_String("download_image_normal"));
            this.normal_buttons[2] = new ADCImage(ADC.get_String("replay_image_normal"));
            this.normal_buttons[3] = new ADCImage(ADC.get_String("continue_image_normal"));
            this.active_buttons[0] = new ADCImage(ADC.get_String("info_image_down"), true);
            this.active_buttons[1] = new ADCImage(ADC.get_String("download_image_down"), true);
            this.active_buttons[2] = new ADCImage(ADC.get_String("replay_image_down"), true);
            this.active_buttons[3] = new ADCImage(ADC.get_String("continue_image_down"), true);
            this.button_labels[0] = "Info";
            this.button_labels[1] = "Download";
            this.button_labels[2] = "Replay";
            this.button_labels[3] = "Continue";
        } else if (this.is_html5) {
            this.img_reload_button = new ADCImage(ADC.get_String("reload_image_normal"));
            this.img_close_button = new ADCImage(ADC.get_String("close_image_normal"));
            this.img_close_button_down = new ADCImage(ADC.get_String("close_image_down"));
            this.img_reload_button_down = new ADCImage(ADC.get_String("reload_image_down"));
            this.browser_icon = new ADCImage(ADC.get_String("browser_icon"));
            this.loading_view = new LoadingView(aDCVideo);
            set_up_web_view();
        }
        if (this.skippable) {
            this.img_skip_button = new ADCImage(ADC.get_String("skip_video_image_normal"));
            this.img_skip_button_down = new ADCImage(ADC.get_String("skip_video_image_down"));
            this.skip_delay_ms = ADC.get_Integer("skip_delay") * 1000;
        }
        this.circle_paint.setStyle(Style.STROKE);
        float f = 2.0f * aDCVideo.getResources().getDisplayMetrics().density;
        if (f > 6.0f) {
            f = 6.0f;
        }
        if (f < 4.0f) {
            this.circle_paint.setStrokeWidth(2.0f * aDCVideo.getResources().getDisplayMetrics().density);
            this.circle_paint.setColor(-3355444);
            this.engagement = false;
        } else {
            this.circle_paint.setStrokeWidth(2.0f * aDCVideo.getResources().getDisplayMetrics().density);
            this.circle_paint.setColor(-3355444);
            this.engagement = false;
        }
        if (current_ad != null) {
            this.engagement = current_ad.ad_info.video.in_video_engagement.enabled;
        }
        if (this.engagement) {
            this.img_engagement_button_normal = new ADCImage(ADC.get_String("engagement_image_normal"));
            this.img_engagement_button_down = new ADCImage(ADC.get_String("engagement_image_down"));
            this.engagement_url = current_ad.ad_info.video.in_video_engagement.click_action;
            this.engagement_text = current_ad.ad_info.video.in_video_engagement.label;
            this.engagement_delay_ms = ADC.get_Integer("engagement_delay") * 1000;
            if (this.engagement_text.equals(AdTrackerConstants.BLANK)) {
                this.engagement_text = "Learn More";
            }
        }
        if (video_finished) {
            on_video_finish();
        }
        this.paint.setColor(-1);
        this.button_text_paint.setTextSize(24.0f);
        this.button_text_paint.setColor(-16777216);
        this.text_paint.setColor(-3355444);
        this.text_paint.setTextSize(20.0f);
        this.text_paint.setTextAlign(Align.CENTER);
        this.version_paint.setTextSize(20.0f);
        this.version_paint.setColor(-1);
        try {
            getClass().getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(this, new Object[]{Integer.valueOf(1), null});
        } catch (Exception e) {
        }
    }

    public void adjust_size() {
        boolean calculate_layout = this.activity.calculate_layout();
        this.resize_images |= calculate_layout;
        if (this.activity.video_view != null) {
            if (this.video_duration_ms <= 0) {
                this.video_duration_ms = this.activity.video_view.getDuration();
            }
            if (calculate_layout) {
                setLayoutParams(new LayoutParams(this.activity.display_width, this.activity.display_height, 17));
                this.activity.video_view.setLayoutParams(new LayoutParams(this.activity.view_width, this.activity.view_height, 17));
                this.resize_images = true;
            }
        }
        if (this.resize_images) {
            double sqrt;
            this.resize_images = false;
            if (this.first_resize) {
                float f;
                DisplayMetrics displayMetrics = AdColony.activity().getResources().getDisplayMetrics();
                float f2 = ((float) displayMetrics.widthPixels) / displayMetrics.xdpi;
                float f3 = ((float) displayMetrics.heightPixels) / displayMetrics.ydpi;
                sqrt = Math.sqrt((double) ((displayMetrics.heightPixels * displayMetrics.heightPixels) + (displayMetrics.widthPixels * displayMetrics.widthPixels))) / Math.sqrt((double) ((f2 * f2) + (f3 * f3)));
                this.hud_scale = sqrt / 280.0d < 0.7d ? 0.7d : sqrt / 280.0d;
                if (!AdColony.isTablet() && this.hud_scale == 0.7d) {
                    this.hud_scale = 1.0d;
                }
                f = this.hud_scale * 20.0d < 18.0d ? 18.0f : (float) (this.hud_scale * 20.0d);
                f2 = this.hud_scale * 20.0d < 18.0d ? 18.0f : (float) (this.hud_scale * 20.0d);
                this.text_paint.setTextSize(f);
                this.version_paint.setTextSize(f);
                this.button_text_paint.setTextSize(f2);
                if (this.engagement) {
                    this.img_engagement_button_normal.ninePatch(textWidthOf(this.engagement_text + (this.img_engagement_button_normal.width * 2)), this.img_engagement_button_normal.height);
                    this.img_engagement_button_down.ninePatch(textWidthOf(this.engagement_text + (this.img_engagement_button_down.width * 2)), this.img_engagement_button_down.height);
                }
                int i;
                if (this.activity.display_width > this.activity.display_height) {
                    i = this.activity.display_height;
                } else {
                    i = this.activity.display_width;
                }
                this.first_resize = false;
            }
            if (this.is_html5) {
                if (calculate_layout && this.end_card_web_view != null) {
                    this.end_card_web_view.setLayoutParams(new LayoutParams(this.activity.display_width, this.activity.display_height - this.offset, 17));
                }
                this.image_scale = ((double) this.activity.view_height) / 640.0d < 0.9d ? 0.9d : ((double) this.activity.view_height) / 640.0d;
                if (!AdColony.isTablet() && this.image_scale == 0.9d) {
                    this.image_scale = 1.2d;
                }
            }
            if (this.is_static) {
                double d = (double) (this.original_bg_width / this.original_bg_height);
                sqrt = ((double) this.activity.display_width) / d > ((double) this.activity.display_height) / 1.0d ? ((double) this.activity.display_height) / 1.0d : ((double) this.activity.display_width) / d;
                this.activity.view_width = (int) (d * sqrt);
                this.activity.view_height = (int) (sqrt * 1.0d);
                this.image_scale = this.activity.display_width > this.activity.display_height ? ((double) this.activity.view_height) / 640.0d : ((double) this.activity.view_height) / 960.0d;
                this.background.resize(((double) this.activity.display_width) / ((double) this.original_bg_width) > ((double) this.activity.display_height) / ((double) this.original_bg_height) ? ((double) this.activity.display_height) / ((double) this.original_bg_height) : ((double) this.activity.display_width) / ((double) this.original_bg_width));
                this.background.center_within(this.activity.display_width, this.activity.display_height);
            }
            if (this.engagement) {
                int height = (int) (((double) this.img_engagement_button_down.original_bitmap.getHeight()) * this.hud_scale);
                this.img_engagement_button_normal.resize(this.img_engagement_button_normal.width, (int) (((double) this.img_engagement_button_normal.original_bitmap.getHeight()) * this.hud_scale));
                this.img_engagement_button_down.resize(this.img_engagement_button_down.width, height);
            }
            if (this.skippable) {
                this.img_skip_button.resize(this.hud_scale);
                this.img_skip_button_down.resize(this.hud_scale);
            }
        }
    }

    public boolean clicked(ADCImage aDCImage, int i, int i2) {
        return i < (aDCImage.x() + aDCImage.width) + 8 && i > aDCImage.x() - 8 && i2 < aDCImage.y() + aDCImage.height + 8 && i2 > aDCImage.y() - 8;
    }

    public void complete() {
        ADCController aDCController = controller;
        ADCVideo aDCVideo = this.activity;
        aDCController.on_video_finish(is_replay);
        if (this.is_html5 && this.graceful_fail && graceful_fail) {
            this.activity.layout.addView(this.loading_view);
            new Handler().postDelayed(new Runnable() {
                public void run() {
                    if (ADCVideoHUD.this.graceful_fail && ADCVideoHUD.this.activity != null && ADCVideoHUD.this.is_html5 && ADCVideoHUD.this.end_card_web_view != null) {
                        ADCVideoHUD.this.activity.html5_endcard_loading_timeout = true;
                        ADCVideoHUD.this.handle_continue();
                    }
                }
            }, (long) (load_timeout * 1000));
        }
        if (companion_ad_disabled) {
            handle_continue();
        }
        ADC.track_ad_event("card_shown");
        synchronized (this.update_handler) {
            this.dissolve_timer = null;
            if (current_ad.ad_info.companion_ad.dissolve) {
                this.dissolve_timer = new Timer(current_ad.ad_info.companion_ad.dissolve_delay);
            }
        }
        if (this.is_html5) {
            Handler handler = new Handler();
            View view = new View(this.activity);
            Runnable anonymousClass_6 = new AnonymousClass_6(view);
            view.setBackgroundColor(-16777216);
            this.activity.layout.addView(view);
            handler.postDelayed(anonymousClass_6, 500);
            this.activity.web_layout.setVisibility(0);
        }
        on_video_finish();
    }

    void dec_fire_keyboard_viewable_change(boolean z) {
        if (!this.is_static && this.end_card_web_view != null) {
            this.end_card_web_view.addJavascriptInterface(new AnonymousClass_1JsObject(z), "keyboard_listener");
        }
    }

    void dec_fire_viewable_change(boolean z) {
        if (!this.is_static) {
            if (z) {
                execute_javascript("adc_bridge.fireChangeEvent({viewable:true});");
            } else {
                execute_javascript("adc_bridge.fireChangeEvent({viewable:false});");
            }
        }
    }

    void execute_javascript(String str) {
        if (!this.is_static && this.end_card_web_view != null) {
            if (VERSION.SDK_INT >= 19) {
                this.end_card_web_view.evaluateJavascript(str, null);
            } else {
                this.end_card_web_view.loadUrl("javascript:" + str);
            }
        }
    }

    int get_button_index(int i, int i2) {
        if (i >= this.left_margin && i < this.left_margin + 62) {
            return 1;
        }
        if (i >= this.left_margin + 78 && i < this.left_margin + 78 + 62) {
            return GoogleScorer.CLIENT_PLUS;
        }
        if (i >= this.left_margin + 78 + 78 && i < this.left_margin + 78 + 78 + 62) {
            return IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
        }
        if (i >= this.left_margin + 78 + 78 + 78 && i < this.left_margin + 78 + 78 + 78 + 62) {
            return GoogleScorer.CLIENT_APPSTATE;
        }
        return (this.activity.video_view == null || !this.skippable || i < this.activity.video_view.getWidth() - this.img_skip_button.width || i2 > this.img_skip_button.height) ? 0 : R.styleable.MapAttrs_uiZoomControls;
    }

    void handle_cancel() {
        if (current_ad.is_v4vc()) {
            ADCVideo aDCVideo = this.activity;
            video_seek_to_ms = this.activity.video_view.getCurrentPosition();
            ADCSkipVideoDialog.current = new ADCSkipVideoDialog(this.activity, (AdColonyV4VCAd) current_ad);
        } else {
            this.activity.finish();
            end_card_finished_handler.notify_canceled();
        }
    }

    void handle_continue() {
        if (this.activity == null) {
            return;
        }
        if (!this.is_html5 || (this.end_card_web_view != null && this.activity.web_layout != null && this.activity.layout != null)) {
            this.activity.endcard_time_pause = System.currentTimeMillis();
            ADCVideo aDCVideo = this.activity;
            aDCVideo.endcard_time_spent += ((double) (this.activity.endcard_time_pause - this.activity.endcard_time_resume)) / 1000.0d;
            this.activity.finish();
            this.dissolve_timer = null;
            if (this.is_html5) {
                this.activity.layout.removeView(this.activity.web_layout);
                this.end_card_web_view.destroy();
                this.end_card_web_view = null;
            }
            end_card_finished_handler.notify_continuation();
        }
    }

    void handle_replay() {
        ADC.track_ad_event("replay");
        ADCVideo aDCVideo = this.activity;
        is_replay = true;
        aDCVideo = this.activity;
        video_finished = false;
        aDCVideo = this.activity;
        video_seek_to_ms = 0;
        View view = new View(this.activity);
        view.setBackgroundColor(-16777216);
        this.activity.layout.addView(view, new LayoutParams(this.activity.display_width, this.activity.display_height, 17));
        new Handler().postDelayed(new AnonymousClass_8(view), 900);
        this.activity.video_view.start();
        controller.on_video_start();
        this.activity.video_view.requestFocus();
        this.activity.video_view.setBackgroundColor(0);
        this.activity.video_view.setVisibility(0);
        dec_fire_viewable_change(false);
    }

    void keyboardCheck() {
        getViewTreeObserver().addOnGlobalLayoutListener(new AnonymousClass_9(this));
    }

    void load_dec_url() {
        this.end_card_web_view.loadUrl(end_card_url);
        ADCLog.dev.print("Loading - end card url = ").println(end_card_url);
    }

    void onButton(int i) {
        try {
            if (this.can_press || i == 10) {
                this.can_press = false;
                Object obj;
                switch (i) {
                    case GoogleScorer.CLIENT_GAMES:
                        this.selected_button = 0;
                        ADC.track_ad_event("info", "{\"ad_slot\":" + current_ad.zone_info.state.play_order_index + "}");
                        obj = ADC.get_String("info_url");
                        ADCLog.debug.print("INFO ").println(obj);
                        if (obj.startsWith("market:") || obj.startsWith("amzn:")) {
                            this.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(obj)));
                        } else {
                            AdColonyBrowser.url = obj;
                            this.activity.startActivity(new Intent(this.activity, AdColonyBrowser.class));
                        }
                        break;
                    case GoogleScorer.CLIENT_PLUS:
                        this.selected_button = 0;
                        ADC.track_ad_event(AdTrackerConstants.GOAL_DOWNLOAD, "{\"ad_slot\":" + current_ad.zone_info.state.play_order_index + "}");
                        obj = ADC.get_String("download_url");
                        ADCLog.debug.print("DOWNLOAD ").println(obj);
                        if (obj.startsWith("market:") || obj.startsWith("amzn:")) {
                            this.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(obj)));
                        } else {
                            AdColonyBrowser.url = obj;
                            this.activity.startActivity(new Intent(this.activity, AdColonyBrowser.class));
                        }
                        break;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        this.selected_button = 0;
                        handle_replay();
                        invalidate();
                        break;
                    case GoogleScorer.CLIENT_APPSTATE:
                        this.selected_button = 0;
                        this.activity.video_view.stopPlayback();
                        handle_continue();
                        break;
                    case R.styleable.MapAttrs_uiZoomControls:
                        this.selected_button = 0;
                        handle_cancel();
                        break;
                    default:
                        this.selected_button = 0;
                        break;
                }
                new Handler().postDelayed(new Runnable() {
                    public void run() {
                        ADCVideoHUD.this.can_press = true;
                    }
                }, 1500);
            }
        } catch (RuntimeException e) {
            this.can_press = true;
        }
    }

    public void onCompletion(MediaPlayer mediaPlayer) {
        complete();
    }

    public void onDraw(Canvas canvas) {
        if (!this.error) {
            adjust_size();
            this.canvas = canvas;
            if (!this.skip_delay_met && this.skippable) {
                this.skip_delay_met = this.activity.video_view.getCurrentPosition() > this.skip_delay_ms;
            }
            if (!this.engagement_delay_met && this.engagement) {
                this.engagement_delay_met = this.activity.video_view.getCurrentPosition() > this.engagement_delay_ms;
            }
            ADCVideo aDCVideo = this.activity;
            int i;
            if (video_finished && this.is_static) {
                canvas.drawARGB((this.activity.bg_color >> 24) & 255, 0, 0, 0);
                this.background.draw(canvas, (this.activity.display_width - this.background.width) / 2, (this.activity.display_height - this.background.height) / 2);
                int x = this.background.x() + ((int) (186.0d * this.image_scale));
                int y = this.background.y() + ((int) (470.0d * this.image_scale));
                i = 0;
                while (i < this.normal_buttons.length) {
                    if (this.selected_button == i + 1 || !(this.recent_selected_button != i + 1 || this.up_state || this.recent_selected_button == 0)) {
                        this.active_buttons[i].resize(this.image_scale);
                        this.active_buttons[i].draw(canvas, x, y);
                        x = (int) (((double) x) + ((double) true) * this.image_scale);
                    } else if (this.up_state || i + 1 != this.recent_selected_button) {
                        this.normal_buttons[i].resize(this.image_scale);
                        this.normal_buttons[i].draw(canvas, x, y);
                        x = (int) (((double) x) + ((double) true) * this.image_scale);
                    }
                    this.text_paint.setColor(-1);
                    this.text_paint.clearShadowLayer();
                    canvas.drawText(this.button_labels[i], ((float) this.normal_buttons[i].x()) + ((float) (this.normal_buttons[i].width / 2)), (float) (this.normal_buttons[i].y() + this.normal_buttons[i].height), this.text_paint);
                    i++;
                }
            } else {
                aDCVideo = this.activity;
                if (video_finished && this.is_html5) {
                    this.img_close_button.resize(this.hud_scale);
                    this.img_close_button_down.resize(this.hud_scale);
                    this.img_reload_button.resize(this.hud_scale);
                    this.img_reload_button_down.resize(this.hud_scale);
                    i = (is_tablet || this.close_xpos == 0) ? this.activity.display_width - this.img_close_button.width : this.close_xpos;
                    this.close_xpos = i;
                    this.close_ypos = 0;
                    this.reload_xpos = 0;
                    this.reload_ypos = 0;
                    if (this.close_pressed) {
                        this.img_close_button_down.draw(canvas, this.close_xpos, this.close_ypos);
                    } else {
                        this.img_close_button.draw(canvas, this.close_xpos, this.close_ypos);
                    }
                    if (this.reload_pressed) {
                        this.img_reload_button_down.draw(canvas, this.reload_xpos, this.reload_ypos);
                    } else {
                        this.img_reload_button.draw(canvas, this.reload_xpos, this.reload_ypos);
                    }
                    keyboardCheck();
                } else {
                    if (this.activity.video_view != null) {
                        controller.on_video_progress(((double) this.activity.video_view.getCurrentPosition()) / ((double) this.activity.video_view.getDuration()));
                        i = this.activity.video_view.getCurrentPosition();
                        int i2 = ((this.video_duration_ms - i) + 999) / 1000;
                        if (i >= 500) {
                            if (this.first_update) {
                                this.angle_per_sec = (float) (360.0d / (((double) this.video_duration_ms) / 1000.0d));
                                this.first_update = false;
                                Rect rect = new Rect();
                                this.text_paint.getTextBounds("0123456789", 0, ZBuildConfig.$minsdk, rect);
                                this.radius = (float) rect.height();
                            }
                            this.width = (float) getWidth();
                            this.height = (float) getHeight();
                            this.center_x = this.radius;
                            this.center_y = ((float) this.activity.display_height) - this.radius - ((float) this.offset);
                            this.oval.set(this.center_x - this.radius / 2.0f, this.center_y - 2.0f * this.radius, this.center_x + 2.0f * this.radius, this.center_y + this.radius / 2.0f);
                            this.circle_paint.setShadowLayer((float) ((int) (4.0d * this.image_scale)), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -16777216);
                            this.cur_angle = (float) (((double) this.angle_per_sec) * ((((double) this.video_duration_ms) / 1000.0d) - (((double) i) / 1000.0d)));
                            canvas.drawArc(this.oval, BitmapDescriptorFactory.HUE_VIOLET, this.cur_angle, false, this.circle_paint);
                            aDCVideo = this.activity;
                            if (!video_finished) {
                                this.text_paint.setColor(-3355444);
                                this.text_paint.setShadowLayer((float) ((int) (2.0d * this.image_scale)), BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, -16777216);
                                this.text_paint.setTextAlign(Align.CENTER);
                                this.text_paint.setLinearText(true);
                                canvas.drawText(AdTrackerConstants.BLANK + i2, this.oval.centerX(), (float) (((double) this.oval.centerY()) + ((double) this.text_paint.getFontMetrics().bottom) * 1.35d), this.text_paint);
                            }
                            if (this.skippable) {
                                aDCVideo = this.activity;
                                if (!video_finished && this.skip_delay_met) {
                                    if (this.selected_button == 10) {
                                        this.img_skip_button_down.draw(canvas, this.activity.display_width - this.img_skip_button_down.width, (int) (this.image_scale * 4.0d));
                                    } else {
                                        this.img_skip_button.draw(canvas, this.activity.display_width - this.img_skip_button.width, (int) (this.image_scale * 4.0d));
                                    }
                                }
                            }
                            if (this.engagement && this.engagement_delay_met) {
                                if (this.engagement_pressed) {
                                    this.img_engagement_button_down.set_position((int) (((float) (this.activity.display_width - this.img_engagement_button_down.width)) - this.radius / 2.0f), this.activity.display_height - this.img_engagement_button_down.height - this.offset - ((int) (this.radius / 2.0f)));
                                    this.img_engagement_button_down.draw(canvas);
                                } else {
                                    this.img_engagement_button_normal.set_position((int) (((float) (this.activity.display_width - this.img_engagement_button_normal.width)) - this.radius / 2.0f), this.activity.display_height - this.img_engagement_button_normal.height - this.offset - ((int) (this.radius / 2.0f)));
                                    this.img_engagement_button_normal.draw(canvas);
                                }
                                this.button_text_paint.setTextAlign(Align.CENTER);
                                canvas.drawText(this.engagement_text, (float) this.img_engagement_button_normal.dest_rect.centerX(), (float) (((double) this.img_engagement_button_normal.dest_rect.centerY()) + ((double) this.button_text_paint.getFontMetrics().bottom) * 1.35d), this.button_text_paint);
                            }
                        }
                        if (ADCSkipVideoDialog.current != null) {
                            ADCSkipVideoDialog.current.onDraw(canvas);
                        }
                    }
                    aDCVideo = this.activity;
                    if (visible) {
                        invalidate();
                    }
                }
            }
        }
    }

    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        handle_cancel();
        return true;
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.offset = this.activity.display_height - i2;
        if (Build.MODEL.equals("Kindle Fire")) {
            this.offset = 20;
        }
        if (Build.MODEL.equals("SCH-I800")) {
            this.offset = 25;
        }
        if (Build.MODEL.equals("SHW-M380K") || Build.MODEL.equals("SHW-M380S") || Build.MODEL.equals("SHW-M380W")) {
            this.offset = 40;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (ADCSkipVideoDialog.current != null) {
            ADCSkipVideoDialog.current.onTouchEvent(motionEvent);
            return true;
        } else {
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            ADCVideo aDCVideo;
            if (action == 0) {
                aDCVideo = this.activity;
                if (!video_finished || !this.is_html5) {
                    aDCVideo = this.activity;
                    if (video_finished && this.is_static) {
                        x = (int) (((double) (motionEvent.getX() - ((float) this.background.x()))) / (this.image_scale * 2.0d));
                        y = (int) (((double) (motionEvent.getY() - ((float) this.background.y()))) / (this.image_scale * 2.0d));
                        if (this.selected_button == 0 && y >= 235 && y < 305) {
                            action = get_button_index(x, y);
                            this.selected_button = action;
                            this.recent_selected_button = action;
                            this.up_state = false;
                            invalidate();
                        }
                    }
                    if (this.skippable && this.skip_delay_met && this.activity.video_view != null && clicked(this.img_skip_button, i, i)) {
                        this.selected_button = 10;
                        this.recent_selected_button = this.selected_button;
                        this.up_state = false;
                        invalidate();
                        return true;
                    } else if (this.engagement && this.engagement_delay_met && clicked(this.img_engagement_button_normal, i, i)) {
                        this.engagement_pressed = true;
                        invalidate();
                        return true;
                    }
                } else if (clicked(this.img_close_button, x, y)) {
                    this.close_pressed = true;
                    invalidate();
                    return true;
                } else if (!clicked(this.img_reload_button, x, y)) {
                    return false;
                } else {
                    this.reload_pressed = true;
                    invalidate();
                    return true;
                }
            } else if (action == 1) {
                aDCVideo = this.activity;
                if (video_finished && this.is_html5) {
                    if (clicked(this.img_close_button, x, y) && this.close_pressed) {
                        this.selected_button = 4;
                        this.end_card_web_view.clearCache(true);
                        this.on_button_press_handler.sendMessageDelayed(this.on_button_press_handler.obtainMessage(this.selected_button), 250);
                        return true;
                    } else if (clicked(this.img_reload_button, x, y) && this.reload_pressed) {
                        this.selected_button = 3;
                        this.end_card_web_view.clearCache(true);
                        this.on_button_press_handler.sendMessageDelayed(this.on_button_press_handler.obtainMessage(this.selected_button), 250);
                        return true;
                    }
                }
                aDCVideo = this.activity;
                if (video_finished && this.is_static) {
                    x = (int) (((double) (motionEvent.getX() - ((float) this.background.x()))) / (this.image_scale * 2.0d));
                    y = (int) (((double) (motionEvent.getY() - ((float) this.background.y()))) / (this.image_scale * 2.0d));
                    if (!this.up_state && y >= 235 && y < 305) {
                        action = get_button_index(x, y);
                        if (action > 0 && action == this.recent_selected_button) {
                            this.on_button_press_handler.sendMessageDelayed(this.on_button_press_handler.obtainMessage(action), 250);
                        }
                    }
                }
                if (this.skippable && this.skip_delay_met && this.activity.video_view != null && clicked(this.img_skip_button, i, i)) {
                    this.selected_button = 10;
                    this.up_state = true;
                    this.recent_selected_button = this.selected_button;
                    this.on_button_press_handler.sendMessageDelayed(this.on_button_press_handler.obtainMessage(this.selected_button), 250);
                    return true;
                } else if (this.engagement && this.engagement_delay_met && clicked(this.img_engagement_button_normal, i, i)) {
                    this.engagement_pressed = false;
                    if (this.engagement_url.startsWith("market:") || this.engagement_url.startsWith("amzn:")) {
                        this.activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.engagement_url)));
                    } else {
                        AdColonyBrowser.url = this.engagement_url;
                        this.activity.startActivity(new Intent(this.activity, AdColonyBrowser.class));
                    }
                    ADC.track_ad_event("in_video_engagement", "{\"ad_slot\":" + current_ad.zone_info.state.play_order_index + "}");
                    return true;
                } else {
                    this.close_pressed = false;
                    this.reload_pressed = false;
                    this.engagement_pressed = false;
                    this.up_state = true;
                    this.selected_button = 0;
                    invalidate();
                    return true;
                }
            } else if (action == 3) {
                this.close_pressed = false;
                this.reload_pressed = false;
                this.engagement_pressed = false;
                this.up_state = true;
                this.selected_button = 0;
                invalidate();
                return true;
            }
            return true;
        }
    }

    void on_video_finish() {
        new Handler().postDelayed(new Runnable() {
            public void run() {
                if (ADCVideoHUD.this.activity.video_view != null) {
                    ADCVideoHUD.this.activity.video_view.setVisibility(IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED);
                }
            }
        }, 300);
        ADCVideo aDCVideo = this.activity;
        video_finished = true;
        if (this.activity.video_view != null) {
            this.activity.video_view.stopPlayback();
        }
        ADCSkipVideoDialog.current = null;
        invalidate();
        this.reload_pressed = false;
        invalidate();
    }

    void open_or_closed() {
        if (this.keyboard_offset >= 70 && !this.web_layout_offset) {
            this.web_layout_offset = true;
            dec_fire_keyboard_viewable_change(true);
        } else if (this.web_layout_offset && this.keyboard_offset == 0) {
            this.web_layout_offset = false;
            dec_fire_keyboard_viewable_change(false);
        }
    }

    void set_offset(int i) {
        this.keyboard_offset = i;
        if (i < 0) {
            this.keyboard_offset = 0;
        }
    }

    void set_up_web_view() {
        this.end_card_web_view = new WebView(this.activity);
        this.end_card_web_view.setFocusable(true);
        this.end_card_web_view.setHorizontalScrollBarEnabled(false);
        this.end_card_web_view.setVerticalScrollBarEnabled(false);
        WebSettings settings = this.end_card_web_view.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(PluginState.ON_DEMAND);
        settings.setBuiltInZoomControls(true);
        settings.setGeolocationEnabled(true);
        this.end_card_web_view.setWebChromeClient(new WebChromeClient() {
            public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                String sourceId = consoleMessage.sourceId();
                if (sourceId == null) {
                    sourceId = "Internal";
                } else {
                    int lastIndexOf = sourceId.lastIndexOf(ApiEventType.API_MRAID_PAUSE_VIDEO);
                    if (lastIndexOf != -1) {
                        sourceId = sourceId.substring(lastIndexOf + 1);
                    }
                }
                ADCLog.debug.print(consoleMessage.message()).print(" [").print(sourceId).print(" line ").print(consoleMessage.lineNumber()).println((Object)"]");
                return true;
            }

            public void onGeolocationPermissionsShowPrompt(String str, Callback callback) {
                callback.invoke(str, true, false);
            }
        });
        this.activity.web_layout = new FrameLayout(this.activity);
        if (ADC.get_Logical("hardware_acceleration_disabled")) {
            try {
                this.activity.web_layout.getClass().getMethod("setLayerType", new Class[]{Integer.TYPE, Paint.class}).invoke(this.end_card_web_view, new Object[]{Integer.valueOf(1), null});
            } catch (Exception e) {
            }
        }
        this.mraid_handler = new ADCMRAIDHandler(this.activity, this.end_card_web_view, this.activity);
        this.end_card_web_view.setWebViewClient(new WebViewClient() {
            String end_card_url;

            {
                this.end_card_url = end_card_url;
            }

            public void onLoadResource(WebView webView, Object obj) {
                ADCLog.dev.print("DEC onLoad: ").println(obj);
                if (obj.equals(this.end_card_url)) {
                    ADCLog.dev.println((Object)"DEC disabling mouse events");
                    ADCVideoHUD.this.execute_javascript("if (typeof(CN) != 'undefined' && CN.div) {\n  if (typeof(cn_dispatch_on_touch_begin) != 'undefined') CN.div.removeEventListener('mousedown',  cn_dispatch_on_touch_begin, true);\n  if (typeof(cn_dispatch_on_touch_end) != 'undefined')   CN.div.removeEventListener('mouseup',  cn_dispatch_on_touch_end, true);\n  if (typeof(cn_dispatch_on_touch_move) != 'undefined')  CN.div.removeEventListener('mousemove',  cn_dispatch_on_touch_move, true);\n}\n");
                }
            }

            public void onPageFinished(WebView webView, String str) {
                if (str.equals(this.end_card_url)) {
                    ADCVideoHUD.this.graceful_fail = false;
                    ADCVideoHUD.this.activity.html5_endcard_loading_finished = true;
                    ADCVideoHUD.this.end_card_loading_finish = System.currentTimeMillis();
                    ADCVideoHUD.this.activity.html5_endcard_loading_time = ((double) (ADCVideoHUD.this.end_card_loading_finish - ADCVideoHUD.this.end_card_loading_start)) / 1000.0d;
                }
                ADCVideoHUD.this.activity.layout.removeView(ADCVideoHUD.this.loading_view);
            }

            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                if (str.equals(this.end_card_url)) {
                    ADCVideoHUD.this.activity.html5_endcard_loading_started = true;
                    ADCVideoHUD.this.end_card_loading_start = System.currentTimeMillis();
                }
            }

            public boolean shouldOverrideUrlLoading(WebView webView, Object obj) {
                ADCLog.dev.print("DEC request: ").println(obj);
                if (obj.contains("mraid:")) {
                    ADCVideoHUD.this.mraid_handler.handleMRAIDCommand(obj);
                    return true;
                } else if (obj.contains("youtube")) {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("vnd.youtube:" + obj));
                    intent.putExtra("VIDEO_ID", obj);
                    ADCVideoHUD.this.activity.startActivity(intent);
                    return true;
                } else if (obj.contains("mraid.js")) {
                    return true;
                } else {
                    return false;
                }
            }
        });
        if (VERSION.SDK_INT >= 19) {
            this.end_card_web_view.loadUrl(end_card_url);
        }
        String load_file = ADCUtil.load_file(end_card_mraid_filepath, AdTrackerConstants.BLANK);
        ADCLog.dev.println((Object)"Injecting mraid");
        execute_javascript(load_file);
        execute_javascript("var is_tablet=" + (is_tablet ? "true" : "false") + ";");
        load_file = is_tablet ? "tablet" : ZBuildConfig.device;
        execute_javascript("adc_bridge.adc_version='" + sdk_version + "'");
        execute_javascript("adc_bridge.os_version='" + os_version + "'");
        execute_javascript("adc_bridge.os_name='android'");
        execute_javascript("adc_bridge.device_type='" + load_file + "'");
        execute_javascript("adc_bridge.fireChangeEvent({state:'default'});");
        execute_javascript("adc_bridge.fireReadyEvent()");
        if (VERSION.SDK_INT < 19) {
            this.end_card_web_view.loadUrl(end_card_url);
        }
    }

    int textWidthOf(String str) {
        this.button_text_paint.getTextWidths(str, widths);
        float f = BitmapDescriptorFactory.HUE_RED;
        int i = 0;
        while (i < str.length()) {
            f += widths[i];
            i++;
        }
        return (int) f;
    }
}