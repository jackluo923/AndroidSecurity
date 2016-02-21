package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController.Dimensions;
import com.inmobi.re.controller.JSController.PlayerProperties;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.AVPlayer.playerState;
import com.inmobi.re.controller.util.AVPlayerListener;
import com.inmobi.re.controller.util.Constants;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;

public class MRAIDAudioVideoController {
    private IMWebView a;
    public Hashtable audioPlayerList;
    public AVPlayer audioplayer;
    public AVPlayer videoPlayer;
    public Hashtable videoPlayerList;
    public int videoValidateWidth;

    class a implements AVPlayerListener {
        final /* synthetic */ PlayerProperties a;

        a(PlayerProperties playerProperties) {
            this.a = playerProperties;
        }

        public void onComplete(AVPlayer aVPlayer) {
            try {
                ViewGroup viewGroup;
                if (this.a.isFullScreen()) {
                    viewGroup = (ViewGroup) aVPlayer.getBackGroundLayout().getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(aVPlayer.getBackGroundLayout());
                    }
                } else {
                    viewGroup = (ViewGroup) aVPlayer.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(aVPlayer);
                    }
                }
            } catch (Exception e) {
                Log.debug(Constants.RENDERING_LOG_TAG, "Problem removing the audio relativelayout", e);
            }
        }

        public void onError(AVPlayer aVPlayer) {
            onComplete(aVPlayer);
        }

        public void onPrepared(AVPlayer aVPlayer) {
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
                Log.debug(Constants.RENDERING_LOG_TAG, "Back button pressed while fullscreen audio was playing");
                MRAIDAudioVideoController.this.audioplayer.releasePlayer(true);
            }
            return false;
        }
    }

    static /* synthetic */ class d {
        static final /* synthetic */ int[] a;

        static {
            a = new int[playerState.values().length];
            try {
                a[playerState.PAUSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[playerState.PLAYING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[playerState.COMPLETED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a[playerState.INIT.ordinal()] = 4;
        }
    }

    class e implements OnKeyListener {
        e() {
        }

        public boolean onKey(View view, int i, KeyEvent keyEvent) {
            if (4 == keyEvent.getKeyCode() && keyEvent.getAction() == 0) {
                Log.debug(Constants.RENDERING_LOG_TAG, "Back pressed while fullscreen video is playing");
                MRAIDAudioVideoController.this.videoPlayer.releasePlayer(true);
            }
            return false;
        }
    }

    class f implements AVPlayerListener {
        f() {
        }

        public void onComplete(AVPlayer aVPlayer) {
            MRAIDAudioVideoController.this.setBusy(false);
            try {
                ViewGroup backGroundLayout = aVPlayer.getBackGroundLayout();
                if (backGroundLayout != null) {
                    ((ViewGroup) backGroundLayout.getParent()).removeView(aVPlayer.getBackGroundLayout());
                }
                aVPlayer.setBackGroundLayout(null);
            } catch (Exception e) {
                Log.debug(Constants.RENDERING_LOG_TAG, "Problem removing the video framelayout or relativelayout depending on video startstyle", e);
            }
            synchronized (this) {
                if (MRAIDAudioVideoController.this.videoPlayer != null && aVPlayer.getPropertyID().equalsIgnoreCase(MRAIDAudioVideoController.this.videoPlayer.getPropertyID())) {
                    MRAIDAudioVideoController.this.videoPlayer = null;
                }
            }
        }

        public void onError(AVPlayer aVPlayer) {
            onComplete(aVPlayer);
        }

        public void onPrepared(AVPlayer aVPlayer) {
        }
    }

    class g implements OnTouchListener {
        g() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    public MRAIDAudioVideoController(IMWebView iMWebView) {
        this.videoPlayerList = new Hashtable();
        this.audioPlayerList = new Hashtable();
        this.a = iMWebView;
    }

    private AVPlayer a(String str) {
        return this.videoPlayerList.isEmpty() ? null : (AVPlayer) this.videoPlayerList.get(str);
    }

    private void a(AVPlayer aVPlayer, Dimensions dimensions) {
        int density = (int) (-99999.0f * this.a.getDensity());
        if (aVPlayer.isInlineVideo()) {
            LayoutParams layoutParams = new FrameLayout.LayoutParams(dimensions.width, dimensions.height);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) aVPlayer.getLayoutParams();
            if (dimensions.x == density && dimensions.y == density) {
                layoutParams.leftMargin = layoutParams2.leftMargin;
                layoutParams.topMargin = layoutParams2.topMargin;
            } else {
                layoutParams.leftMargin = dimensions.x;
                layoutParams.topMargin = dimensions.y;
            }
            layoutParams.gravity = 3;
            aVPlayer.setLayoutParams(layoutParams);
        }
    }

    private boolean a(String str, String str2, Activity activity) {
        if (this.audioPlayerList.isEmpty()) {
            this.audioplayer = new AVPlayer(activity, this.a);
        } else {
            this.audioplayer = (AVPlayer) this.audioPlayerList.get(str);
            if (this.audioplayer == null) {
                if (this.audioPlayerList.size() > 4) {
                    this.a.raiseError("Too many audio players", "playAudio");
                    return false;
                } else {
                    this.audioplayer = new AVPlayer(activity, this.a);
                }
            } else if (!this.audioplayer.getMediaURL().equals(str2) && str2.length() != 0) {
                this.audioplayer.releasePlayer(false);
                this.audioPlayerList.remove(str);
                this.audioplayer = new AVPlayer(activity, this.a);
            } else if (this.audioplayer.getState() == playerState.PLAYING) {
                return false;
            } else {
                if (this.audioplayer.getState() == playerState.INIT) {
                    if (this.audioplayer.isPrepared()) {
                        this.audioplayer.start();
                    } else {
                        this.audioplayer.setAutoPlay(true);
                    }
                    return false;
                } else if (this.audioplayer.getState() == playerState.PAUSED) {
                    this.audioplayer.start();
                    return false;
                } else {
                    PlayerProperties properties = this.audioplayer.getProperties();
                    String mediaURL = this.audioplayer.getMediaURL();
                    this.audioplayer.releasePlayer(false);
                    this.audioPlayerList.remove(str);
                    this.audioplayer = new AVPlayer(activity, this.a);
                    this.audioplayer.setPlayData(properties, mediaURL);
                }
            }
        }
        return true;
    }

    private boolean a(String str, String str2, Activity activity, Dimensions dimensions) {
        if (this.videoPlayer == null || !str.equalsIgnoreCase(this.videoPlayer.getPropertyID())) {
            return b(str, str2, activity);
        }
        playerState state = this.videoPlayer.getState();
        if (str.equalsIgnoreCase(this.videoPlayer.getPropertyID())) {
            String mediaURL = this.videoPlayer.getMediaURL();
            if (str2.length() == 0 || str2.equalsIgnoreCase(mediaURL)) {
                switch (d.a[state.ordinal()]) {
                    case GoogleScorer.CLIENT_GAMES:
                        this.videoPlayer.start();
                        a(this.videoPlayer, dimensions);
                        return false;
                    case GoogleScorer.CLIENT_PLUS:
                        a(this.videoPlayer, dimensions);
                        return false;
                    case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                        if (!this.videoPlayer.getProperties().doLoop()) {
                            this.videoPlayer.start();
                        }
                        a(this.videoPlayer, dimensions);
                        return false;
                    case GoogleScorer.CLIENT_APPSTATE:
                        if (this.videoPlayer.isPrepared()) {
                            this.videoPlayer.start();
                        } else {
                            this.videoPlayer.setAutoPlay(true);
                        }
                        a(this.videoPlayer, dimensions);
                        return false;
                    default:
                        return false;
                }
            } else if (URLUtil.isValidUrl(str2)) {
                this.videoPlayer.releasePlayer(false);
                this.videoPlayer = new AVPlayer(activity, this.a);
            } else {
                this.a.raiseError("Request must specify a valid URL", "playVideo");
                return false;
            }
        }
        return true;
    }

    private boolean a(Hashtable hashtable, AVPlayer aVPlayer) {
        Iterator it = hashtable.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            if (entry.getValue() == aVPlayer) {
                String str = (String) entry.getKey();
                break;
            }
        }
        Object obj = null;
        if (obj == null) {
            return false;
        }
        this.audioPlayerList.remove(obj);
        return true;
    }

    private boolean b(String str, String str2, Activity activity) {
        if ((str2.length() == 0 || URLUtil.isValidUrl(str2)) && (str2.length() != 0 || this.videoPlayerList.containsKey(str))) {
            if (this.videoPlayer != null) {
                this.videoPlayer.hide();
                this.videoPlayerList.put(this.videoPlayer.getPropertyID(), this.videoPlayer);
            }
            AVPlayer a = a(str);
            if (a == null) {
                this.videoPlayer = new AVPlayer(activity, this.a);
            } else {
                this.videoPlayer = a;
            }
            if (str2.length() == 0) {
                this.videoPlayer.setPlayData(a.getProperties(), a.getMediaURL());
                this.videoPlayer.setPlayDimensions(a.getPlayDimensions());
            }
            this.videoPlayerList.remove(str);
            return true;
        } else {
            this.a.raiseError("Request must specify a valid URL", "playVideo");
            return false;
        }
    }

    public synchronized AVPlayer getCurrentAudioPlayer(String str) {
        AVPlayer aVPlayer;
        aVPlayer = null;
        if (this.audioplayer != null && this.audioplayer.getPropertyID().equalsIgnoreCase(str)) {
            aVPlayer = this.audioplayer;
        } else if (!this.audioPlayerList.isEmpty() && this.audioPlayerList.containsKey(str)) {
            aVPlayer = (AVPlayer) this.audioPlayerList.get(str);
        }
        return aVPlayer;
    }

    public synchronized AVPlayer getVideoPlayer(String str) {
        AVPlayer aVPlayer;
        aVPlayer = null;
        if (this.videoPlayer != null && this.videoPlayer.getPropertyID().equalsIgnoreCase(str)) {
            aVPlayer = this.videoPlayer;
        } else if (!this.videoPlayerList.isEmpty() && this.videoPlayerList.containsKey(str)) {
            aVPlayer = (AVPlayer) this.videoPlayerList.get(str);
        }
        return aVPlayer;
    }

    public void hidePlayers() {
        Log.debug(Constants.RENDERING_LOG_TAG, "MRAIDAudioVideoController: hiding all players");
        if (!(this.videoPlayer == null || this.videoPlayer.getState() == playerState.RELEASED)) {
            this.videoPlayerList.put(this.videoPlayer.getPropertyID(), this.videoPlayer);
            this.videoPlayer.hide();
        }
        Iterator it = this.audioPlayerList.entrySet().iterator();
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            AVPlayer aVPlayer = (AVPlayer) entry.getValue();
            switch (d.a[aVPlayer.getState().ordinal()]) {
                case GoogleScorer.CLIENT_PLUS:
                    aVPlayer.pause();
                    break;
                case GoogleScorer.CLIENT_APPSTATE:
                    aVPlayer.releasePlayer(false);
                    this.audioPlayerList.remove(entry.getKey());
                    break;
                default:
                    break;
            }
        }
    }

    public void mediaPlayerReleased(AVPlayer aVPlayer) {
        if (aVPlayer == this.audioplayer) {
            this.audioplayer = null;
        }
        if (aVPlayer == this.videoPlayer) {
            this.videoPlayer = null;
        }
        if (!a(this.audioPlayerList, aVPlayer)) {
            a(this.videoPlayerList, aVPlayer);
        }
    }

    public void playAudioImpl(Bundle bundle, Activity activity) {
        PlayerProperties playerProperties = (PlayerProperties) bundle.getParcelable(IMWebView.PLAYER_PROPERTIES);
        String string = bundle.getString(IMWebView.EXPAND_URL);
        if (string == null) {
            string = AdTrackerConstants.BLANK;
        }
        if (!a(playerProperties.id, string, activity)) {
            return;
        }
        if ((string.length() != 0 && !URLUtil.isValidUrl(string)) || (string.length() == 0 && !this.audioPlayerList.containsKey(playerProperties.id))) {
            this.a.raiseError("Request must specify a valid URL", "playAudio");
        } else if (this.audioplayer != null) {
            if (string.length() != 0) {
                this.audioplayer.setPlayData(playerProperties, string);
            }
            this.audioPlayerList.put(playerProperties.id, this.audioplayer);
            FrameLayout frameLayout = (FrameLayout) activity.findViewById(16908290);
            if (playerProperties.isFullScreen()) {
                LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
                layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
                this.audioplayer.setLayoutParams(layoutParams);
                View relativeLayout = new RelativeLayout(activity);
                relativeLayout.setOnTouchListener(new g());
                relativeLayout.setBackgroundColor(-16777216);
                frameLayout.addView(relativeLayout, new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
                relativeLayout.addView(this.audioplayer);
                this.audioplayer.setBackGroundLayout(relativeLayout);
                this.audioplayer.requestFocus();
                this.audioplayer.setOnKeyListener(new c());
            } else {
                this.audioplayer.setLayoutParams(new LayoutParams(1, 1));
                frameLayout.addView(this.audioplayer);
            }
            this.audioplayer.setListener(new a(playerProperties));
            this.audioplayer.play();
        }
    }

    public void playVideoImpl(Bundle bundle, Activity activity) {
        PlayerProperties playerProperties = (PlayerProperties) bundle.getParcelable(IMWebView.PLAYER_PROPERTIES);
        Dimensions dimensions = (Dimensions) bundle.getParcelable(IMWebView.DIMENSIONS);
        Log.debug(Constants.RENDERING_LOG_TAG, "Final dimensions: " + dimensions);
        String string = bundle.getString(IMWebView.EXPAND_URL);
        if (a(playerProperties.id, string, activity, dimensions)) {
            PlayerProperties playerProperties2;
            this.a.setBusy(true);
            if (string.length() == 0) {
                playerProperties = this.videoPlayer.getProperties();
                dimensions = this.videoPlayer.getPlayDimensions();
                this.videoPlayer.getMediaURL();
                playerProperties2 = playerProperties;
            } else {
                this.videoPlayer.setPlayData(playerProperties, string);
                this.videoPlayer.setPlayDimensions(dimensions);
                playerProperties2 = playerProperties;
            }
            if (this.videoPlayer.getState() == playerState.HIDDEN) {
                this.videoPlayer.pseudoPause = true;
                this.videoPlayer.show();
            } else {
                FrameLayout frameLayout = (FrameLayout) activity.findViewById(16908290);
                if (playerProperties2.isFullScreen()) {
                    LayoutParams layoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
                    layoutParams.addRule(R.styleable.MapAttrs_zOrderOnTop);
                    this.videoPlayer.setLayoutParams(layoutParams);
                    View relativeLayout = new RelativeLayout(activity);
                    relativeLayout.setOnTouchListener(new b());
                    relativeLayout.setBackgroundColor(-16777216);
                    frameLayout.addView(relativeLayout, new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
                    relativeLayout.addView(this.videoPlayer);
                    this.videoPlayer.setBackGroundLayout(relativeLayout);
                    this.videoPlayer.requestFocus();
                    this.videoPlayer.setOnKeyListener(new e());
                } else {
                    LayoutParams layoutParams2 = new FrameLayout.LayoutParams(dimensions.width, dimensions.height);
                    View frameLayout2 = new FrameLayout(activity);
                    if (this.a.mExpandController.expandProperties == null) {
                        layoutParams2.leftMargin = dimensions.x;
                        layoutParams2.topMargin = dimensions.y;
                    } else {
                        layoutParams2.leftMargin = dimensions.x + this.a.mExpandController.expandProperties.currentX;
                        layoutParams2.topMargin = dimensions.y + this.a.mExpandController.expandProperties.currentY;
                    }
                    layoutParams2.gravity = 3;
                    this.videoPlayer.setLayoutParams(layoutParams2);
                    frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
                    this.videoPlayer.setBackGroundLayout(frameLayout2);
                    frameLayout2.addView(this.videoPlayer);
                }
                this.videoPlayer.setListener(new f());
                this.videoPlayer.play();
            }
        }
    }

    public void releaseAllPlayers() {
        if (this.videoPlayer != null) {
            this.videoPlayerList.put(this.videoPlayer.getPropertyID(), this.videoPlayer);
        }
        try {
            Object[] toArray = this.videoPlayerList.values().toArray();
            int length = toArray.length;
            int i = 0;
            while (i < length) {
                try {
                    ((AVPlayer) toArray[i]).releasePlayer(IMWebView.userInitiatedClose);
                } catch (Exception e) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Unable to release player");
                }
                i++;
            }
        } catch (Exception e2) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMwebview release all players ", e2);
        }
        this.videoPlayerList.clear();
        this.videoPlayer = null;
        try {
            toArray = this.audioPlayerList.values().toArray();
            length = toArray.length;
            i = 0;
            while (i < length) {
                try {
                    ((AVPlayer) toArray[i]).releasePlayer(IMWebView.userInitiatedClose);
                } catch (Exception e3) {
                    Log.internal(Constants.RENDERING_LOG_TAG, "Unable to release player");
                }
                i++;
            }
        } catch (Exception e4) {
            Log.internal(Constants.RENDERING_LOG_TAG, "IMwebview release all players ", e4);
        }
        IMWebView.userInitiatedClose = false;
        this.audioPlayerList.clear();
        this.audioplayer = null;
    }

    public void validateVideoDimensions(Dimensions dimensions) {
        dimensions.width = (int) (((float) dimensions.width) * this.a.getDensity());
        dimensions.height = (int) (((float) dimensions.height) * this.a.getDensity());
        dimensions.x = (int) (((float) dimensions.x) * this.a.getDensity());
        dimensions.y = (int) (((float) dimensions.y) * this.a.getDensity());
    }
}