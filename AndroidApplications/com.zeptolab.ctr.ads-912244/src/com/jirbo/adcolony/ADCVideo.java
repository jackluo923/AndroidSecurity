package com.jirbo.adcolony;

import android.app.Activity;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.VideoView;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.io.FileInputStream;
import java.io.IOException;

public abstract class ADCVideo extends Activity {
    static Activity ctx;
    static boolean html5_video_playing;
    static int html5_video_seek_to_ms;
    static boolean is_replay;
    static boolean mraid_ready;
    static boolean unfocused;
    static boolean video_finished;
    static int video_seek_to_ms;
    static boolean visible;
    int actual_video_height;
    int actual_video_width;
    int bg_color;
    Rect bounds;
    ADCImage browser_icon;
    int display_height;
    int display_width;
    boolean endcard_dissolved;
    long endcard_time_pause;
    long endcard_time_resume;
    double endcard_time_spent;
    boolean first_play;
    boolean first_resume;
    boolean html5_endcard_loading_finished;
    boolean html5_endcard_loading_started;
    double html5_endcard_loading_time;
    boolean html5_endcard_loading_timeout;
    FrameLayout html5_video_layout;
    VideoView html5_video_view;
    ADCVideoHUD hud;
    FileInputStream infile;
    FrameLayout layout;
    LoadingView loading_view;
    boolean rewarded;
    String video_url;
    ADCCustomVideoView video_view;
    int view_height;
    int view_width;
    FrameLayout web_layout;

    class LoadingView extends View {
        Rect bounds;

        public LoadingView(Activity activity) {
            super(activity);
            this.bounds = new Rect();
        }

        public void onDraw(Canvas canvas) {
            canvas.drawARGB(MotionEventCompat.ACTION_MASK, 0, 0, 0);
            getDrawingRect(this.bounds);
            ADCVideo.this.browser_icon.draw(canvas, (this.bounds.width() - ADCVideo.this.browser_icon.width) / 2, (this.bounds.height() - ADCVideo.this.browser_icon.height) / 2);
            invalidate();
        }
    }

    public ADCVideo() {
        this.video_url = AdTrackerConstants.BLANK;
        this.first_resume = true;
        this.first_play = true;
        this.bounds = new Rect();
    }

    static void reset() {
        video_seek_to_ms = 0;
        video_finished = false;
        is_replay = false;
    }

    boolean calculate_layout() {
        Display defaultDisplay = getWindowManager().getDefaultDisplay();
        this.display_width = defaultDisplay.getWidth();
        this.display_height = defaultDisplay.getHeight();
        this.bg_color = -16777216;
        getWindow().setBackgroundDrawable(new ColorDrawable(this.bg_color));
        int i = this.display_width;
        int i2 = this.display_height;
        this.view_width = i;
        this.view_height = i2;
        if (!layout_changed) {
            return false;
        }
        layout_changed = false;
        return true;
    }

    public void onCreate(Bundle bundle) {
        int i = 1;
        super.onCreate(bundle);
        ctx = this;
        video_disabled = !ADC.get_Logical("video_enabled");
        companion_ad_disabled = !ADC.get_Logical("end_card_enabled");
        graceful_fail = ADC.get_Logical("load_timeout_enabled");
        load_timeout = ADC.get_Integer("load_timeout");
        requestWindowFeature(1);
        getWindow().setFlags(AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        if (is_tablet) {
            int i2;
            int i3 = getResources().getConfiguration().orientation;
            i2 = (i3 == 0 || i3 == 6 || i3 == 2) ? 6 : GoogleScorer.CLIENT_ALL;
            orientation = i2;
            if (VERSION.SDK_INT < 10 || Build.MODEL.equals("Kindle Fire")) {
                if (Build.MODEL.equals("Kindle Fire")) {
                    getRequestedOrientation();
                    switch (((WindowManager) getSystemService("window")).getDefaultDisplay().getRotation()) {
                        case IabHelper.BILLING_RESPONSE_RESULT_OK:
                            break;
                        case GoogleScorer.CLIENT_GAMES:
                            i = 0;
                            break;
                        case GoogleScorer.CLIENT_PLUS:
                            i = ZBuildConfig.$minsdk;
                            break;
                        default:
                            i = IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED;
                            break;
                    }
                } else {
                    i = i3;
                }
                orientation = i;
                setRequestedOrientation(i);
            } else {
                setRequestedOrientation(orientation);
            }
        } else if (VERSION.SDK_INT >= 10) {
            setRequestedOrientation(IabHelper.BILLING_RESPONSE_RESULT_ERROR);
        } else {
            setRequestedOrientation(0);
        }
        setVolumeControlStream(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
        this.video_view = new ADCCustomVideoView(this);
        this.layout = new FrameLayout(this);
        this.hud = new ADCVideoHUD(this);
        this.html5_video_layout = new FrameLayout(this);
        this.loading_view = new LoadingView(this);
        this.browser_icon = new ADCImage(ADC.get_String("browser_icon"));
        AdColonyBrowser.should_recycle = false;
        current_video = this;
        latest_video = this;
    }

    public void onDestroy() {
        super.onDestroy();
        AdColonyBrowser.should_recycle = true;
        show = true;
        current_video = null;
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return i == 4 ? true : super.onKeyDown(i, keyEvent);
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (ADCSkipVideoDialog.current != null && ADCSkipVideoDialog.current.onKeyDown(i, keyEvent)) {
            return true;
        }
        if (i == 4) {
            if (video_finished) {
                if (html5_video_playing) {
                    this.html5_video_view.stopPlayback();
                    html5_video_playing = false;
                    this.html5_video_layout.removeAllViews();
                    setContentView(this.layout);
                    return true;
                } else if (this.hud == null || this.hud.selected_button != 0) {
                    return true;
                } else {
                    this.hud.handle_continue();
                    return true;
                }
            } else if (this.hud == null || !this.hud.skippable || !this.hud.skip_delay_met) {
                return true;
            } else {
                this.hud.handle_cancel();
                return true;
            }
        } else if (i != 82) {
            return super.onKeyUp(i, keyEvent);
        } else {
            return true;
        }
    }

    public void onPause() {
        visible = false;
        if (!html5_video_playing) {
            html5_video_seek_to_ms = 0;
        } else if (this.html5_video_view != null) {
            html5_video_seek_to_ms = this.html5_video_view.getCurrentPosition();
            this.html5_video_view.stopPlayback();
        }
        if (video_finished) {
            View view = new View(this);
            view.setBackgroundColor(-16777216);
            setContentView(view);
            this.endcard_time_pause = System.currentTimeMillis();
            if (!isFinishing()) {
                this.endcard_time_spent += ((double) (this.endcard_time_pause - this.endcard_time_resume)) / 1000.0d;
            }
        }
        if (this.video_view != null) {
            if (this.video_view.getCurrentPosition() != 0) {
                video_seek_to_ms = this.video_view.getCurrentPosition();
            }
            this.video_view.stopPlayback();
            this.video_view.setBackgroundColor(-16777216);
        } else {
            video_seek_to_ms = 0;
        }
        this.hud.up_state = true;
        this.hud.reload_pressed = false;
        this.hud.close_pressed = false;
        this.hud.engagement_pressed = false;
        this.hud.recent_selected_button = 0;
        this.hud.selected_button = 0;
        this.hud.invalidate();
        super.onPause();
    }

    public void onResume() {
        visible = true;
        super.onResume();
        calculate_layout();
        if (this.first_resume) {
            this.first_resume = false;
            if (!video_finished) {
                if (this.hud.is_html5) {
                    this.web_layout.addView(this.hud.end_card_web_view);
                }
                if (this.hud.is_html5) {
                    this.web_layout.setVisibility(GoogleScorer.CLIENT_APPSTATE);
                }
                if (Build.MODEL.equals("Kindle Fire")) {
                    this.hud.offset = 20;
                }
                if (Build.MODEL.equals("SCH-I800")) {
                    this.hud.offset = 25;
                }
                this.layout.addView(this.video_view, new LayoutParams(this.view_width, this.view_height, 17));
                if (this.hud.is_html5) {
                    this.layout.addView(this.web_layout, new LayoutParams(this.display_width, this.display_height - this.hud.offset, 17));
                }
                this.layout.addView(this.hud, new LayoutParams(this.display_width, this.display_height, 17));
            }
        }
        if (html5_video_playing) {
            this.html5_video_layout.removeAllViews();
            this.html5_video_layout.addView(this.loading_view);
            setContentView(this.html5_video_layout);
        } else {
            setContentView(this.layout);
            if (video_finished) {
                this.endcard_time_resume = System.currentTimeMillis();
            }
        }
        this.video_view.setOnCompletionListener(this.hud);
        this.video_view.setOnErrorListener(this.hud);
        try {
            this.infile = new FileInputStream(ADC.get_String("video_filepath"));
            this.video_view.setVideoPath(this.infile.getFD());
            if (!unfocused) {
                onWindowFocusChanged(true);
            }
            if (video_disabled) {
                this.hud.adjust_size();
                this.hud.complete();
            }
        } catch (IOException e) {
            ADC.log_error("Unable to play video: " + ADC.get_String("video_filepath"));
            finish();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        if (z) {
            unfocused = false;
            if (video_finished || !visible) {
                if (html5_video_playing) {
                    if (this.html5_video_view != null) {
                        this.html5_video_view.seekTo(html5_video_seek_to_ms);
                        this.html5_video_view.start();
                    }
                } else if (video_finished) {
                    this.hud.invalidate();
                }
            } else if (this.video_view != null) {
                this.video_view.seekTo(video_seek_to_ms);
                if (is_tablet) {
                    Handler handler = new Handler();
                    Runnable anonymousClass_1 = new Runnable() {
                        public void run() {
                            ADCVideo.this.video_view.setBackgroundColor(0);
                        }
                    };
                    this.video_view.setBackgroundColor(-16777216);
                    handler.postDelayed(anonymousClass_1, 900);
                } else {
                    this.video_view.setBackgroundColor(0);
                }
                if (!ADCSkipVideoDialog.skip_dialog) {
                    this.video_view.start();
                }
                this.hud.requestFocus();
                this.hud.invalidate();
            }
        } else {
            if (visible) {
                video_seek_to_ms = this.video_view.getCurrentPosition();
                this.video_view.pause();
            }
            unfocused = true;
        }
    }

    void playVideo(String str) {
        this.video_url = str;
        html5_video_playing = true;
        this.html5_video_view = new VideoView(this);
        this.html5_video_view.setVideoURI(Uri.parse(str));
        new MediaController(this).setMediaPlayer(this.html5_video_view);
        this.html5_video_view.setLayoutParams(new LayoutParams(this.display_width, this.display_height, 17));
        this.html5_video_layout.addView(this.html5_video_view);
        this.html5_video_layout.addView(this.loading_view);
        setContentView(this.html5_video_layout);
        this.html5_video_view.setOnCompletionListener(new OnCompletionListener() {
            public void onCompletion(MediaPlayer mediaPlayer) {
                ADCVideo.this.setContentView(ADCVideo.this.layout);
                ADCVideo.this.html5_video_layout.removeAllViews();
                html5_video_playing = false;
            }
        });
        this.html5_video_view.setOnPreparedListener(new OnPreparedListener() {
            public void onPrepared(MediaPlayer mediaPlayer) {
                ADCVideo.this.html5_video_layout.removeViewAt(1);
            }
        });
        this.html5_video_view.start();
    }
}