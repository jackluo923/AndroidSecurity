package com.millennialmedia.android;

import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.Toast;
import android.widget.VideoView;
import java.lang.ref.WeakReference;

class VideoPlayerActivity
  extends MMBaseActivity
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  private static final int CONTROLS_ID = 83756563;
  private static final String END_VIDEO = "endVideo";
  protected static final int MESSAGE_CHECK_PLAYING_VIDEO = 4;
  protected static final int MESSAGE_DELAYED_BUTTON = 3;
  protected static final int MESSAGE_INACTIVITY_ANIMATION = 1;
  protected static final int MESSAGE_ONE_SECOND_CHECK = 2;
  protected static final int MESSAGE_SET_TRANSPARENCY = 5;
  private static final String RESTART_VIDEO = "restartVideo";
  AdProperties adProperties;
  View blackView;
  protected int currentVideoPosition = 0;
  protected boolean hasBottomBar = true;
  private boolean hasFocus;
  boolean isPaused;
  boolean isUserPausing = false;
  protected boolean isVideoCompleted;
  private boolean isVideoCompletedOnce;
  String lastOverlayOrientation;
  protected VideoView mVideoView;
  Button pausePlay;
  ProgressBar progBar;
  HttpRedirection.RedirectionListenerImpl redirectListenerImpl;
  private boolean shouldSetUri = true;
  Handler transparentHandler = new VideoPlayerActivity.6(this);
  RelativeLayout videoLayout;
  
  private void initBottomBar(RelativeLayout paramRelativeLayout)
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(activity);
    localRelativeLayout.setId(83756563);
    localRelativeLayout.setBackgroundColor(-16777216);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -2);
    localRelativeLayout.setLayoutParams(localLayoutParams1);
    localLayoutParams1.addRule(12);
    Button localButton1 = new Button(activity);
    pausePlay = new Button(activity);
    Button localButton2 = new Button(activity);
    localButton1.setBackgroundResource(17301541);
    if (mVideoView.isPlaying()) {
      pausePlay.setBackgroundResource(17301539);
    }
    for (;;)
    {
      localButton2.setBackgroundResource(17301560);
      RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
      RelativeLayout.LayoutParams localLayoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
      RelativeLayout.LayoutParams localLayoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams2.addRule(14);
      localRelativeLayout.addView(pausePlay, localLayoutParams2);
      localLayoutParams4.addRule(0, pausePlay.getId());
      localRelativeLayout.addView(localButton1);
      localLayoutParams3.addRule(11);
      localRelativeLayout.addView(localButton2, localLayoutParams3);
      localButton1.setOnClickListener(new VideoPlayerActivity.3(this));
      pausePlay.setOnClickListener(new VideoPlayerActivity.4(this));
      localButton2.setOnClickListener(new VideoPlayerActivity.5(this));
      paramRelativeLayout.addView(localRelativeLayout, localLayoutParams1);
      return;
      pausePlay.setBackgroundResource(17301540);
    }
  }
  
  private void initRedirectListener()
  {
    redirectListenerImpl = new VideoPlayerActivity.1(this);
    redirectListenerImpl.creatorAdImplInternalId = activity.creatorAdImplInternalId;
  }
  
  private void initVideoListeners()
  {
    mVideoView.setOnCompletionListener(this);
    mVideoView.setOnPreparedListener(this);
    mVideoView.setOnErrorListener(this);
  }
  
  private void initWindow()
  {
    requestWindowFeature(1);
    getWindow().clearFlags(2048);
    getWindow().addFlags(1024);
  }
  
  private boolean isActionSupported(String paramString)
  {
    return (paramString != null) && ((paramString.equalsIgnoreCase("restartVideo")) || (paramString.equalsIgnoreCase("endVideo")));
  }
  
  private boolean isActionable(Uri paramUri)
  {
    if (paramUri.getScheme().equalsIgnoreCase("mmsdk"))
    {
      if (isActionSupported(paramUri.getHost())) {
        return true;
      }
      MMSDK.Log.v("Unrecognized mmsdk:// URI %s.", new Object[] { paramUri });
    }
    return false;
  }
  
  private void makeTransparent()
  {
    if (!transparentHandler.hasMessages(4)) {
      transparentHandler.sendEmptyMessage(4);
    }
  }
  
  private void startVideo(int paramInt)
  {
    mVideoView.requestFocus();
    mVideoView.seekTo(paramInt);
    if (((PowerManager)getSystemService("power")).isScreenOn())
    {
      if (progBar != null)
      {
        progBar.bringToFront();
        progBar.setVisibility(0);
      }
      if (pausePlay != null) {
        pausePlay.setBackgroundResource(17301539);
      }
      mVideoView.start();
      makeTransparent();
    }
  }
  
  protected boolean canFadeButtons()
  {
    return !isVideoCompleted;
  }
  
  protected void dismiss()
  {
    MMSDK.Log.d("Video ad player closed");
    if (mVideoView != null)
    {
      if (mVideoView.isPlaying()) {
        mVideoView.stopPlayback();
      }
      mVideoView = null;
    }
    finish();
  }
  
  void dispatchButtonClick(String paramString)
  {
    if (paramString == null) {}
    do
    {
      return;
      MMSDK.Log.d("Button Click with URL: %s", new Object[] { paramString });
      redirectListenerImpl.url = paramString;
      redirectListenerImpl.weakContext = new WeakReference(activity);
    } while (redirectListenerImpl.isHandlingMMVideo(Uri.parse(paramString)));
    HttpRedirection.startActivityFromUri(redirectListenerImpl);
  }
  
  protected void enableButtons() {}
  
  protected void endVideo()
  {
    MMSDK.Log.d("End Video.");
    if (mVideoView != null)
    {
      shouldSetUri = true;
      dismiss();
    }
  }
  
  protected void errorPlayVideo(String paramString)
  {
    Toast.makeText(activity, "Sorry. There was a problem playing the video", 1).show();
    if (mVideoView != null) {
      mVideoView.stopPlayback();
    }
  }
  
  protected RelativeLayout initLayout()
  {
    RelativeLayout localRelativeLayout = new RelativeLayout(activity);
    localRelativeLayout.setId(400);
    localRelativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    localRelativeLayout.setBackgroundColor(-16777216);
    videoLayout = new RelativeLayout(activity);
    videoLayout.setBackgroundColor(-16777216);
    videoLayout.setId(410);
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -2);
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams2.addRule(13);
    localLayoutParams1.addRule(13);
    mVideoView = new VideoView(activity);
    mVideoView.setId(411);
    mVideoView.getHolder().setFormat(-2);
    mVideoView.setBackgroundColor(-16777216);
    initVideoListeners();
    videoLayout.addView(mVideoView, localLayoutParams2);
    blackView = new View(activity);
    blackView.setBackgroundColor(-16777216);
    localLayoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
    localRelativeLayout.addView(videoLayout, localLayoutParams1);
    if (hasBottomBar)
    {
      localLayoutParams2.addRule(2, 83756563);
      initBottomBar(localRelativeLayout);
    }
    blackView.setLayoutParams(localLayoutParams2);
    localRelativeLayout.addView(blackView);
    progBar = new ProgressBar(activity);
    progBar.setIndeterminate(true);
    localLayoutParams1 = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams1.addRule(13);
    progBar.setLayoutParams(localLayoutParams1);
    localRelativeLayout.addView(progBar);
    progBar.setVisibility(4);
    return localRelativeLayout;
  }
  
  protected void initSavedInstance(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      isVideoCompleted = paramBundle.getBoolean("videoCompleted");
      isVideoCompletedOnce = paramBundle.getBoolean("videoCompletedOnce");
      currentVideoPosition = paramBundle.getInt("videoPosition");
      hasBottomBar = paramBundle.getBoolean("hasBottomBar");
      shouldSetUri = paramBundle.getBoolean("shouldSetUri");
    }
  }
  
  protected boolean isPlayable()
  {
    return (mVideoView != null) && (!mVideoView.isPlaying()) && (!isVideoCompleted);
  }
  
  protected void logButtonEvent(VideoImage paramVideoImage)
  {
    MMSDK.Log.d("Cached video button event logged");
    int i = 0;
    while (i < eventLoggingUrls.length)
    {
      MMSDK.Event.logEvent(eventLoggingUrls[i]);
      i += 1;
    }
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    isVideoCompletedOnce = true;
    isVideoCompleted = true;
    if ((pausePlay != null) && (!mVideoView.isPlaying())) {
      pausePlay.setBackgroundResource(17301540);
    }
    MMSDK.Log.v("Video player on complete");
  }
  
  public void onCreate(Bundle paramBundle)
  {
    setTheme(16973829);
    super.onCreate(paramBundle);
    MMSDK.Log.d("Setting up the video player");
    initWindow();
    initSavedInstance(paramBundle);
    initRedirectListener();
    setContentView(initLayout());
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    return false;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0) && (!isVideoCompletedOnce)) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
    isPaused = true;
    MMSDK.Log.v("VideoPlayer - onPause");
    pauseVideo();
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    MMSDK.Log.d("Video Prepared");
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    currentVideoPosition = paramBundle.getInt("currentVideoPosition");
    isVideoCompleted = paramBundle.getBoolean("isVideoCompleted");
    isVideoCompletedOnce = paramBundle.getBoolean("isVideoCompletedOnce");
    hasBottomBar = paramBundle.getBoolean("hasBottomBar", hasBottomBar);
    shouldSetUri = paramBundle.getBoolean("shouldSetUri", shouldSetUri);
    isUserPausing = paramBundle.getBoolean("isUserPausing", isUserPausing);
    isPaused = paramBundle.getBoolean("isPaused", isPaused);
    super.onRestoreInstanceState(paramBundle);
  }
  
  protected void onResume()
  {
    super.onResume();
    blackView.bringToFront();
    blackView.setVisibility(0);
    isPaused = false;
    MMSDK.Log.v("VideoPlayer - onResume");
    if ((hasFocus) && (!isUserPausing)) {
      resumeVideo();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putInt("currentVideoPosition", currentVideoPosition);
    paramBundle.putBoolean("isVideoCompleted", isVideoCompleted);
    paramBundle.putBoolean("isVideoCompletedOnce", isVideoCompletedOnce);
    paramBundle.putBoolean("hasBottomBar", hasBottomBar);
    paramBundle.putBoolean("shouldSetUri", shouldSetUri);
    paramBundle.putBoolean("isUserPausing", isUserPausing);
    paramBundle.putBoolean("isPaused", isPaused);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    hasFocus = paramBoolean;
    if ((!isPaused) && (paramBoolean) && (!isUserPausing)) {
      resumeVideo();
    }
  }
  
  protected void pauseVideo()
  {
    if ((mVideoView != null) && (mVideoView.isPlaying()))
    {
      currentVideoPosition = mVideoView.getCurrentPosition();
      mVideoView.pause();
      MMSDK.Log.v("Video paused");
    }
  }
  
  protected void pauseVideoByUser()
  {
    isUserPausing = true;
    pauseVideo();
  }
  
  protected void playVideo(int paramInt)
  {
    try
    {
      isUserPausing = false;
      String str = getIntent().getData().toString();
      MMSDK.Log.d("playVideo path: %s", new Object[] { str });
      if ((str == null) || (str.length() == 0) || (mVideoView == null))
      {
        errorPlayVideo("no name or null videoview");
        return;
      }
      isVideoCompleted = false;
      if ((shouldSetUri) && (mVideoView != null)) {
        mVideoView.setVideoURI(Uri.parse(str));
      }
      startVideo(paramInt);
      return;
    }
    catch (Exception localException)
    {
      MMSDK.Log.e("error: " + localException.getMessage(), new Object[] { localException });
      errorPlayVideo("error: " + localException.getMessage());
    }
  }
  
  void processVideoPlayerUri(String paramString)
  {
    runOnUiThread(new VideoPlayerActivity.2(this, paramString));
  }
  
  protected void restartVideo()
  {
    MMSDK.Log.d("Restart Video.");
    if (mVideoView != null) {
      playVideo(0);
    }
  }
  
  protected void resumeVideo()
  {
    if (isPlayable()) {
      playVideo(currentVideoPosition);
    }
  }
  
  protected void setButtonAlpha(ImageButton paramImageButton, float paramFloat)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat, paramFloat);
    localAlphaAnimation.setDuration(0L);
    localAlphaAnimation.setFillEnabled(true);
    localAlphaAnimation.setFillBefore(true);
    localAlphaAnimation.setFillAfter(true);
    paramImageButton.startAnimation(localAlphaAnimation);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoPlayerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */