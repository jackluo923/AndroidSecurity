package com.millennialmedia.android;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.VideoView;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class CachedVideoPlayerActivity
  extends VideoPlayerActivity
  implements Handler.Callback
{
  private static final int STATIC_HUD_ID = 402;
  private static final int STATIC_HUD_SECONDS_ID = 401;
  private RelativeLayout buttonsLayout;
  private boolean hasCountdownHud = true;
  boolean hasLoadedCompletionUrl;
  boolean hasWebOverlay;
  private TextView hudSeconds;
  private TextView hudStaticText;
  private int lastVideoPosition;
  private Handler logTimeAndEventhandler;
  private MMWebView mWebView;
  private VideoAd videoAd;
  
  private String calculateHudSecondsText()
  {
    if (currentVideoPosition != 0) {
      return String.valueOf(currentVideoPosition / 1000);
    }
    if (videoAd != null) {
      return String.valueOf(videoAd.duration / 1000L);
    }
    return "";
  }
  
  private void dismissAfter(long paramLong)
  {
    logTimeAndEventhandler.postDelayed(new CachedVideoPlayerActivity.1(this), paramLong);
  }
  
  private void fadeButton(VideoImage paramVideoImage)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(fromAlpha, toAlpha);
    localAlphaAnimation.setDuration(fadeDuration);
    localAlphaAnimation.setFillEnabled(true);
    localAlphaAnimation.setFillBefore(true);
    localAlphaAnimation.setFillAfter(true);
    button.startAnimation(localAlphaAnimation);
  }
  
  private void fadeButtons()
  {
    if ((videoAd != null) && (videoAd.buttons != null))
    {
      int i = 0;
      while (i < videoAd.buttons.size())
      {
        VideoImage localVideoImage = (VideoImage)videoAd.buttons.get(i);
        if (!isLeaveBehind) {
          setButtonAlpha(button, fromAlpha);
        }
        if (button.getParent() == null) {
          buttonsLayout.addView(button, layoutParams);
        }
        int j = 0;
        while (j < videoAd.buttons.size())
        {
          buttonsLayout.bringChildToFront(videoAd.buttons.get(j)).button);
          j += 1;
        }
        MMSDK.Log.v("Button: %d alpha: %f", new Object[] { Integer.valueOf(i), Float.valueOf(fromAlpha) });
        i += 1;
      }
    }
  }
  
  private void hideHud()
  {
    if (hudStaticText != null) {
      hudStaticText.setVisibility(4);
    }
    if (hudSeconds != null) {
      hudSeconds.setVisibility(4);
    }
  }
  
  private void initHudSeconds(ViewGroup paramViewGroup)
  {
    hudSeconds = new TextView(activity);
    hudSeconds.setText(calculateHudSecondsText());
    hudSeconds.setTextColor(-1);
    hudSeconds.setId(401);
    hudSeconds.setShadowLayer(1.0F, 0.0F, 0.0F, -16777216);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(10);
    localLayoutParams.addRule(0, 402);
    paramViewGroup.addView(hudSeconds, localLayoutParams);
  }
  
  private void initHudStaticText(ViewGroup paramViewGroup)
  {
    hudStaticText = new TextView(activity);
    hudStaticText.setText(" seconds remaining ...");
    hudStaticText.setTextColor(-1);
    hudStaticText.setPadding(0, 0, 5, 0);
    hudStaticText.setId(402);
    hudStaticText.setShadowLayer(1.0F, 0.0F, 0.0F, -16777216);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(10);
    localLayoutParams.addRule(11);
    paramViewGroup.addView(hudStaticText, localLayoutParams);
  }
  
  private void initWebOverlay()
  {
    mWebView = new MMWebView(activity, activity.creatorAdImplInternalId);
    mWebView.setId(413);
    Object localObject = new CachedVideoPlayerActivity.3(this);
    mWebView.setWebViewClient(new InterstitialWebViewClient((MMWebViewClient.MMWebViewClientListener)localObject, redirectListenerImpl));
    localObject = new RelativeLayout.LayoutParams(-1, -1);
    ((RelativeLayout.LayoutParams)localObject).addRule(13);
    mWebView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    mWebView.setBackgroundColor(0);
    loadUrlForMraidInjection(videoAd.webOverlayURL);
  }
  
  private void showHud()
  {
    if (videoAd != null) {
      hudSeconds.setText(String.valueOf(videoAd.duration / 1000L));
    }
    hudStaticText.setVisibility(0);
    hudSeconds.setVisibility(0);
  }
  
  protected boolean canFadeButtons()
  {
    return (!videoAd.stayInPlayer) || (!super.canFadeButtons());
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (videoAd != null)
    {
      if (logTimeAndEventhandler != null) {
        logTimeAndEventhandler.removeMessages(1);
      }
      if (!hasWebOverlay)
      {
        int i = 0;
        if (i < videoAd.buttons.size())
        {
          VideoImage localVideoImage = (VideoImage)videoAd.buttons.get(i);
          setButtonAlpha(button, fromAlpha);
          Object localObject;
          if (inactivityTimeout > 0L)
          {
            localObject = Message.obtain(logTimeAndEventhandler, 1, localVideoImage);
            logTimeAndEventhandler.sendMessageDelayed((Message)localObject, inactivityTimeout);
          }
          for (;;)
          {
            i += 1;
            break;
            if (paramMotionEvent.getAction() == 1)
            {
              if (canFadeButtons())
              {
                localObject = new AlphaAnimation(fromAlpha, toAlpha);
                ((AlphaAnimation)localObject).setDuration(fadeDuration);
                ((AlphaAnimation)localObject).setFillEnabled(true);
                ((AlphaAnimation)localObject).setFillBefore(true);
                ((AlphaAnimation)localObject).setFillAfter(true);
                button.startAnimation((Animation)localObject);
              }
            }
            else if (paramMotionEvent.getAction() == 0) {
              setButtonAlpha(button, fromAlpha);
            }
          }
        }
      }
    }
    return super.dispatchTouchEvent(paramMotionEvent);
  }
  
  protected void enableButtons()
  {
    super.enableButtons();
    if ((hasWebOverlay) || (videoAd == null) || (videoAd.buttons == null)) {}
    for (;;)
    {
      return;
      Iterator localIterator = videoAd.buttons.iterator();
      while (localIterator.hasNext())
      {
        VideoImage localVideoImage = (VideoImage)localIterator.next();
        if (button != null) {
          button.setEnabled(true);
        }
      }
    }
  }
  
  protected void errorPlayVideo(String paramString)
  {
    if (videoAd != null) {
      HttpGetRequest.log(videoAd.videoError);
    }
    if (mWebView != null) {
      mWebView.loadUrl("javascript:MMJS.cachedVideo.setError(" + paramString + ");");
    }
    super.errorPlayVideo(paramString);
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
    case 1: 
    case 3: 
      for (;;)
      {
        return true;
        if (canFadeButtons())
        {
          fadeButton((VideoImage)obj);
          return true;
          paramMessage = (VideoImage)obj;
          try
          {
            if (buttonsLayout.indexOfChild(button) == -1) {
              buttonsLayout.addView(button, layoutParams);
            }
            if (canFadeButtons())
            {
              fadeButton(paramMessage);
              MMSDK.Log.v("Beginning animation to visibility. Fade duration: %d Button: %d Time: %d", new Object[] { Long.valueOf(fadeDuration), Integer.valueOf(button.getId()), Long.valueOf(System.currentTimeMillis()) });
              return true;
            }
          }
          catch (IllegalStateException localIllegalStateException)
          {
            for (;;)
            {
              localIllegalStateException.printStackTrace();
            }
          }
        }
      }
    }
    for (;;)
    {
      try
      {
        if ((mVideoView != null) && (mVideoView.isPlaying()))
        {
          int k = mVideoView.getCurrentPosition();
          if (k > lastVideoPosition)
          {
            if (videoAd != null)
            {
              if (lastVideoPosition != 0) {
                break label450;
              }
              videoAd.logBeginEvent();
              break label450;
              if (i < videoAd.activities.size())
              {
                paramMessage = (VideoLogEvent)videoAd.activities.get(i);
                if ((paramMessage == null) || (position < lastVideoPosition) || (position >= k)) {
                  break label455;
                }
                int j = 0;
                if (j >= activities.length) {
                  break label455;
                }
                MMSDK.Event.logEvent(activities[j]);
                j += 1;
                continue;
              }
            }
            lastVideoPosition = k;
          }
          if ((hasWebOverlay) && (mWebView != null)) {
            mWebView.loadUrl("javascript:MMJS.cachedVideo.updateVideoSeekTime(" + (float)Math.floor(k / 1000.0F) + ");");
          }
          if (hasCountdownHud)
          {
            long l = (videoAd.duration - k) / 1000L;
            if (l <= 0L) {
              break label443;
            }
            if (hudSeconds != null) {
              hudSeconds.setText(String.valueOf(l));
            }
          }
        }
        logTimeAndEventhandler.sendMessageDelayed(Message.obtain(logTimeAndEventhandler, 2), 500L);
        return true;
      }
      catch (IllegalStateException paramMessage)
      {
        paramMessage.printStackTrace();
        return true;
      }
      label443:
      hideHud();
      continue;
      label450:
      int i = 0;
      continue;
      label455:
      i += 1;
    }
  }
  
  protected RelativeLayout initLayout()
  {
    RelativeLayout localRelativeLayout = super.initLayout();
    logTimeAndEventhandler = new Handler(this);
    setRequestedOrientation(0);
    if (hasCountdownHud)
    {
      initHudStaticText(localRelativeLayout);
      initHudSeconds(localRelativeLayout);
      showHud();
    }
    if ((videoAd != null) && (videoAd.webOverlayURL != null))
    {
      initWebOverlay();
      localRelativeLayout.addView(mWebView);
      hasWebOverlay = true;
      return localRelativeLayout;
    }
    hasWebOverlay = false;
    buttonsLayout = new RelativeLayout(activity);
    buttonsLayout.setId(1000);
    if (videoAd != null) {}
    for (ArrayList localArrayList = videoAd.buttons;; localArrayList = null)
    {
      if (localArrayList != null)
      {
        File localFile = AdCache.getCacheDirectory(activity);
        int i = 0;
        VideoImage localVideoImage;
        ImageButton localImageButton;
        if (i < localArrayList.size())
        {
          localVideoImage = (VideoImage)localArrayList.get(i);
          localImageButton = new ImageButton(activity);
          button = localImageButton;
          for (;;)
          {
            try
            {
              localObject = BitmapFactory.decodeFile(localFile.getAbsolutePath() + File.separator + videoAd.getId() + Uri.parse(imageUrl).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat"));
              if (localObject == null) {
                continue;
              }
              localImageButton.setImageBitmap((Bitmap)localObject);
            }
            catch (Exception localException)
            {
              Object localObject;
              MMSDK.Log.e(localException);
              continue;
              localImageButton.setBackgroundColor(0);
              RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
              MMSDK.Log.v("Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d", new Object[] { Integer.valueOf(localImageButton.getId()), Integer.valueOf(anchor), Integer.valueOf(position), Integer.valueOf(anchor2), Integer.valueOf(position2) });
              localLayoutParams.addRule(position, anchor);
              localLayoutParams.addRule(position2, anchor2);
              localLayoutParams.setMargins(paddingLeft, paddingTop, paddingRight, paddingBottom);
              continue;
              buttonsLayout.addView(localImageButton, localLayoutParams);
              continue;
            }
            setButtonAlpha(localImageButton, fromAlpha);
            localImageButton.setId(i + 1);
            localImageButton.setPadding(0, 0, 0, 0);
            if (!isLeaveBehind) {
              continue;
            }
            localImageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
            localImageButton.setBackgroundColor(-16777216);
            localObject = new RelativeLayout.LayoutParams(-1, -1);
            if (!TextUtils.isEmpty(linkUrl)) {
              localImageButton.setOnClickListener(new CachedVideoPlayerActivity.2(this, localImageButton, localVideoImage));
            }
            if (appearanceDelay <= 0L) {
              continue;
            }
            layoutParams = ((RelativeLayout.LayoutParams)localObject);
            localObject = Message.obtain(logTimeAndEventhandler, 3, localVideoImage);
            logTimeAndEventhandler.sendMessageDelayed((Message)localObject, appearanceDelay);
            if (inactivityTimeout > 0L)
            {
              localObject = Message.obtain(logTimeAndEventhandler, 1, localVideoImage);
              logTimeAndEventhandler.sendMessageDelayed((Message)localObject, inactivityTimeout + appearanceDelay + fadeDuration);
            }
            i += 1;
            break;
            localImageButton.setImageURI(Uri.parse(localFile.getAbsolutePath() + File.separator + videoAd.getId() + Uri.parse(imageUrl).getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat")));
          }
        }
        localRelativeLayout.addView(buttonsLayout, new RelativeLayout.LayoutParams(-1, -1));
      }
      if (buttonsLayout != null) {
        localRelativeLayout.bringChildToFront(buttonsLayout);
      }
      if (mWebView == null) {
        break;
      }
      localRelativeLayout.bringChildToFront(mWebView);
      return localRelativeLayout;
    }
  }
  
  protected void initSavedInstance(Bundle paramBundle)
  {
    super.initSavedInstance(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = getIntent().getStringExtra("videoId");
      videoAd = ((VideoAd)AdCache.load(activity, paramBundle));
      if (videoAd != null)
      {
        hasBottomBar = videoAd.showControls;
        hasCountdownHud = videoAd.showCountdown;
      }
      return;
    }
    videoAd = ((VideoAd)paramBundle.getParcelable("videoAd"));
    hasBottomBar = paramBundle.getBoolean("shouldShowBottomBar");
    lastVideoPosition = paramBundle.getInt("lastVideoPosition");
    currentVideoPosition = paramBundle.getInt("currentVideoPosition");
    hasCountdownHud = videoAd.showCountdown;
  }
  
  void loadUrlForMraidInjection(String paramString)
  {
    new CachedVideoPlayerActivity.FetchWebViewContentTask(this, paramString).execute(new Void[0]);
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    super.onCompletion(paramMediaPlayer);
    if (hasCountdownHud) {
      hideHud();
    }
    if (videoAd != null) {
      videoPlayerOnCompletion(videoAd.onCompletionUrl);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    adProperties = new AdProperties(activity);
    MMSDK.Log.v("Is Cached Ad");
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    errorPlayVideo(String.format("Error while playing, %d - %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
    return super.onError(paramMediaPlayer, paramInt1, paramInt2);
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    videoAd = ((VideoAd)paramBundle.getParcelable("videoAd"));
    super.onRestoreInstanceState(paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    if (mWebView != null) {
      mWebView.bringToFront();
    }
    if (buttonsLayout != null) {
      buttonsLayout.bringToFront();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelable("videoAd", videoAd);
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStart()
  {
    super.onStart();
    if ((!hasWebOverlay) && (videoAd != null) && (videoAd.stayInPlayer == true) && (isVideoCompleted == true)) {
      fadeButtons();
    }
  }
  
  protected void pauseVideo()
  {
    super.pauseVideo();
    logTimeAndEventhandler.removeMessages(1);
    logTimeAndEventhandler.removeMessages(2);
    logTimeAndEventhandler.removeMessages(3);
  }
  
  protected void playVideo(int paramInt)
  {
    if (videoAd == null)
    {
      Toast.makeText(activity, "Sorry. There was a problem playing the video", 1).show();
      return;
    }
    if ((!logTimeAndEventhandler.hasMessages(2)) && (videoAd != null)) {
      logTimeAndEventhandler.sendMessageDelayed(Message.obtain(logTimeAndEventhandler, 2), 1000L);
    }
    super.playVideo(paramInt);
  }
  
  protected void restartVideo()
  {
    if (videoAd != null)
    {
      if (((hasLoadedCompletionUrl) || (videoAd.reloadNonEndOverlayOnRestart)) && (videoAd.webOverlayURL != null) && (mWebView != null))
      {
        loadUrlForMraidInjection(videoAd.webOverlayURL);
        hasLoadedCompletionUrl = false;
      }
      ArrayList localArrayList = videoAd.buttons;
      logTimeAndEventhandler.removeMessages(1);
      logTimeAndEventhandler.removeMessages(2);
      logTimeAndEventhandler.removeMessages(3);
      lastVideoPosition = 0;
      if ((!hasWebOverlay) && (buttonsLayout != null) && (localArrayList != null))
      {
        int i = 0;
        while (i < localArrayList.size())
        {
          VideoImage localVideoImage = (VideoImage)localArrayList.get(i);
          if (localVideoImage != null)
          {
            Object localObject;
            if (appearanceDelay > 0L)
            {
              localObject = button;
              buttonsLayout.removeView((View)localObject);
              localObject = Message.obtain(logTimeAndEventhandler, 3, localVideoImage);
              logTimeAndEventhandler.sendMessageDelayed((Message)localObject, appearanceDelay);
            }
            if (inactivityTimeout > 0L)
            {
              localObject = Message.obtain(logTimeAndEventhandler, 1, localVideoImage);
              logTimeAndEventhandler.sendMessageDelayed((Message)localObject, inactivityTimeout + appearanceDelay + fadeDuration);
            }
          }
          i += 1;
        }
      }
      if (logTimeAndEventhandler != null) {
        logTimeAndEventhandler.sendMessageDelayed(Message.obtain(logTimeAndEventhandler, 2), 1000L);
      }
      if (hasCountdownHud) {
        showHud();
      }
    }
    super.restartVideo();
  }
  
  protected void resumeVideo()
  {
    long l1;
    int i;
    label108:
    VideoImage localVideoImage;
    Message localMessage;
    if (videoAd != null)
    {
      if (!logTimeAndEventhandler.hasMessages(2)) {
        logTimeAndEventhandler.sendMessageDelayed(Message.obtain(logTimeAndEventhandler, 2), 1000L);
      }
      if (!hasWebOverlay)
      {
        if (hasCountdownHud)
        {
          l1 = (videoAd.duration - currentVideoPosition) / 1000L;
          if (l1 <= 0L) {
            break label257;
          }
          if (hudSeconds != null) {
            hudSeconds.setText(String.valueOf(l1));
          }
        }
        if (videoAd.buttons != null)
        {
          i = 0;
          if (i < videoAd.buttons.size())
          {
            localVideoImage = (VideoImage)videoAd.buttons.get(i);
            if ((appearanceDelay <= 0L) || (buttonsLayout.indexOfChild(button) != -1)) {
              break label269;
            }
            localMessage = Message.obtain(logTimeAndEventhandler, 3, localVideoImage);
            long l2 = appearanceDelay - currentVideoPosition;
            l1 = l2;
            if (l2 < 0L) {
              l1 = 500L;
            }
            logTimeAndEventhandler.sendMessageDelayed(localMessage, l1);
          }
        }
      }
    }
    for (;;)
    {
      if (inactivityTimeout > 0L)
      {
        localMessage = Message.obtain(logTimeAndEventhandler, 1, localVideoImage);
        logTimeAndEventhandler.sendMessageDelayed(localMessage, l1 + inactivityTimeout + fadeDuration);
      }
      i += 1;
      break label108;
      label257:
      hideHud();
      break;
      super.resumeVideo();
      return;
      label269:
      l1 = 0L;
    }
  }
  
  protected void videoPlayerOnCompletion(String paramString)
  {
    if (paramString != null) {
      dispatchButtonClick(paramString);
    }
    if (videoAd != null)
    {
      videoAd.logEndEvent();
      if (!videoAd.stayInPlayer) {
        dismiss();
      }
    }
    else
    {
      return;
    }
    if ((!hasWebOverlay) && (videoAd.buttons != null))
    {
      fadeButtons();
      if (!videoAd.hasEndCard()) {
        dismiss();
      }
    }
    if ((mWebView != null) && (!TextUtils.isEmpty(videoAd.endOverlayURL)))
    {
      loadUrlForMraidInjection(videoAd.endOverlayURL);
      mWebView.bringToFront();
    }
    for (;;)
    {
      if (videoAd.closeDelayMillis != 0L) {
        dismissAfter(videoAd.closeDelayMillis);
      }
      logTimeAndEventhandler.removeMessages(1);
      logTimeAndEventhandler.removeMessages(2);
      logTimeAndEventhandler.removeMessages(3);
      return;
      if (hasWebOverlay) {
        dismiss();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.CachedVideoPlayerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */