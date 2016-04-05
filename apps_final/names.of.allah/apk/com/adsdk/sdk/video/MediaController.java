package com.adsdk.sdk.video;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.MediaController.MediaPlayerControl;
import android.widget.TextView;
import com.adsdk.sdk.Log;
import java.util.Formatter;
import java.util.Locale;
import java.util.Vector;

@SuppressLint({"ViewConstructor"})
public class MediaController
  extends FrameLayout
{
  private static final int DEFAULT_TIMEOUT = 5000;
  private static final int FADE_OUT = 1;
  private static final int SHOW_PROGRESS = 2;
  private double buttonWidthPercent = 0.09D;
  private LinearLayout mBottomBar;
  private Context mContext;
  private boolean mFixed;
  StringBuilder mFormatBuilder;
  Formatter mFormatter;
  private MediaController.ResourceHandler mHandler = new MediaController.ResourceHandler(this);
  private TextView mLeftTime;
  private MediaController.OnPauseListener mOnPauseListener;
  private MediaController.OnReplayListener mOnReplayListener;
  private MediaController.OnUnpauseListener mOnUnpauseListener;
  private AspectRatioImageViewWidth mPauseButton;
  private View.OnClickListener mPauseListener = new MediaController.1(this);
  private MediaController.MediaPlayerControl mPlayer;
  private AspectRatioImageViewWidth mReplayButton;
  private View.OnClickListener mReplayListener = new MediaController.2(this);
  private ResourceManager mResourceManager;
  private boolean mShowing;
  private LinearLayout mTopBar;
  private VideoData mVideoData;
  
  public MediaController(Context paramContext, VideoData paramVideoData)
  {
    super(paramContext);
    setVisibility(8);
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    mShowing = false;
    mFixed = false;
    mContext = paramContext;
    mVideoData = paramVideoData;
    if (mVideoData == null) {
      throw new IllegalArgumentException("Video info cannot be null");
    }
    mFormatBuilder = new StringBuilder();
    mFormatter = new Formatter(mFormatBuilder, Locale.getDefault());
    mResourceManager = new ResourceManager(mContext, mHandler);
    buildNavigationBarView(localDisplayMetrics);
    Log.d("MediaController created");
  }
  
  private void doPauseResume()
  {
    if (mPlayer == null) {
      return;
    }
    if (mPlayer.isPlaying())
    {
      mPlayer.pause();
      if (mOnPauseListener != null) {
        mOnPauseListener.onVideoPause();
      }
    }
    for (;;)
    {
      updatePausePlay();
      return;
      mPlayer.start();
      if (mOnUnpauseListener != null) {
        mOnUnpauseListener.onVideoUnpause();
      }
    }
  }
  
  private void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 1: 
      hide();
      return;
    case 2: 
      refreshProgress();
      return;
    }
    switch (arg1)
    {
    }
    for (;;)
    {
      requestLayout();
      return;
      if (mTopBar != null)
      {
        paramMessage = mResourceManager.getResource(mContext, -1);
        if (paramMessage != null)
        {
          mTopBar.setBackgroundDrawable(paramMessage);
          continue;
          if (mBottomBar != null)
          {
            paramMessage = mResourceManager.getResource(mContext, -2);
            if (paramMessage != null)
            {
              mBottomBar.setBackgroundDrawable(paramMessage);
              continue;
              if (mPauseButton != null)
              {
                updatePausePlay();
                continue;
                if (mPauseButton != null)
                {
                  updatePausePlay();
                  continue;
                  if (mReplayButton != null) {
                    updateReplay();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  
  private void initNavigationBarControllerView(int paramInt, DisplayMetrics paramDisplayMetrics)
  {
    int i = widthPixels;
    if (!mVideoData.showBottomNavigationBar)
    {
      mBottomBar.setVisibility(8);
      if (mVideoData.showTopNavigationBar) {
        break label558;
      }
      mTopBar.setVisibility(8);
    }
    for (;;)
    {
      if (!mVideoData.showNavigationBars) {
        setVisibility(8);
      }
      return;
      mBottomBar.setVisibility(0);
      if ((mVideoData.bottomNavigationBarBackground != null) && (mVideoData.bottomNavigationBarBackground.length() > 0))
      {
        mResourceManager.fetchResource(mContext, mVideoData.bottomNavigationBarBackground, -2);
        label112:
        if (mPauseButton != null)
        {
          if ((mVideoData.pauseButtonImage == null) || (mVideoData.pauseButtonImage.length() <= 0)) {
            break label476;
          }
          mPauseButton.setBackgroundDrawable(null);
          mResourceManager.fetchResource(mContext, mVideoData.pauseButtonImage, -12);
          label170:
          if ((mVideoData.playButtonImage != null) && (mVideoData.playButtonImage.length() > 0)) {
            mResourceManager.fetchResource(mContext, mVideoData.playButtonImage, -11);
          }
          mPauseButton.setOnClickListener(mPauseListener);
          if (!mVideoData.showPauseButton) {
            break label499;
          }
          mPauseButton.setVisibility(0);
        }
        label242:
        if (mReplayButton != null)
        {
          if ((mVideoData.replayButtonImage == null) || (mVideoData.replayButtonImage.length() <= 0)) {
            break label511;
          }
          mReplayButton.setImageDrawable(null);
          mResourceManager.fetchResource(mContext, mVideoData.replayButtonImage, -13);
          label300:
          mReplayButton.setOnClickListener(mReplayListener);
          if (!mVideoData.showReplayButton) {
            break label534;
          }
          mReplayButton.setVisibility(0);
        }
        label329:
        if (mLeftTime != null)
        {
          if (!mVideoData.showTimer) {
            break label546;
          }
          mLeftTime.setVisibility(0);
        }
      }
      for (;;)
      {
        if (mVideoData.icons.isEmpty()) {
          break label556;
        }
        paramInt = 0;
        while (paramInt < mVideoData.icons.size())
        {
          paramDisplayMetrics = (NavIconData)mVideoData.icons.get(paramInt);
          paramDisplayMetrics = new NavIcon(mContext, paramDisplayMetrics);
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams((int)(i * buttonWidthPercent), (int)(i * buttonWidthPercent));
          mBottomBar.addView(paramDisplayMetrics, localLayoutParams);
          paramInt += 1;
        }
        break;
        mBottomBar.setBackgroundDrawable(mResourceManager.getResource(mContext, -2));
        break label112;
        label476:
        mPauseButton.setImageDrawable(mResourceManager.getResource(mContext, -12));
        break label170;
        label499:
        mPauseButton.setVisibility(8);
        break label242;
        label511:
        mReplayButton.setImageDrawable(mResourceManager.getResource(mContext, -13));
        break label300;
        label534:
        mReplayButton.setVisibility(8);
        break label329;
        label546:
        mLeftTime.setVisibility(8);
      }
      label556:
      break;
      label558:
      mTopBar.setVisibility(0);
      if ((mVideoData.topNavigationBarBackground != null) && (mVideoData.topNavigationBarBackground.length() > 0)) {
        mResourceManager.fetchResource(mContext, mVideoData.topNavigationBarBackground, -1);
      } else {
        mTopBar.setBackgroundDrawable(mResourceManager.getResource(mContext, -1));
      }
    }
  }
  
  private void refreshProgress()
  {
    if (mShowing)
    {
      updatePausePlay();
      int i = setProgress();
      if ((mPlayer != null) && (mPlayer.isPlaying()))
      {
        mHandler.removeMessages(2);
        Message localMessage = mHandler.obtainMessage(2);
        mHandler.sendMessageDelayed(localMessage, 1000 - i % 1000);
      }
    }
  }
  
  private int setProgress()
  {
    int i;
    if (mPlayer == null) {
      i = 0;
    }
    int j;
    int k;
    do
    {
      return i;
      j = mPlayer.getCurrentPosition();
      k = mPlayer.getDuration();
      i = j;
    } while (mLeftTime == null);
    mLeftTime.setText(stringForTime(k - j));
    return j;
  }
  
  private String stringForTime(int paramInt)
  {
    int j = paramInt / 1000;
    paramInt = j % 60;
    int i = j / 60 % 60;
    j /= 3600;
    mFormatBuilder.setLength(0);
    if (j > 0) {
      return mFormatter.format("%d:%02d:%02d", new Object[] { Integer.valueOf(j), Integer.valueOf(i), Integer.valueOf(paramInt) }).toString();
    }
    if (i > 0) {
      return mFormatter.format("%02d:%02d", new Object[] { Integer.valueOf(i), Integer.valueOf(paramInt) }).toString();
    }
    return mFormatter.format("0:%02d", new Object[] { Integer.valueOf(paramInt) }).toString();
  }
  
  private void updatePausePlay()
  {
    if (mPauseButton == null) {
      return;
    }
    if ((mPlayer != null) && (mPlayer.isPlaying()))
    {
      if (mResourceManager.containsResource(-12))
      {
        localDrawable = mResourceManager.getResource(mContext, -12);
        mPauseButton.setImageDrawable(localDrawable);
        return;
      }
      localDrawable = mResourceManager.getResource(mContext, -12);
      mPauseButton.setImageDrawable(localDrawable);
      return;
    }
    mResourceManager.containsResource(-11);
    Drawable localDrawable = mResourceManager.getResource(mContext, -11);
    mPauseButton.setImageDrawable(localDrawable);
  }
  
  private void updateReplay()
  {
    if (mReplayButton == null) {
      return;
    }
    mResourceManager.containsResource(-13);
    Drawable localDrawable = mResourceManager.getResource(mContext, -13);
    mReplayButton.setImageDrawable(localDrawable);
  }
  
  protected void buildNavigationBarView(DisplayMetrics paramDisplayMetrics)
  {
    int i = widthPixels;
    setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    mTopBar = new LinearLayout(mContext);
    mTopBar.setOrientation(0);
    mTopBar.setWeightSum(1.0F);
    mTopBar.setBackgroundColor(0);
    Object localObject = new FrameLayout.LayoutParams(-1, (int)(i * 0.119D));
    gravity = 55;
    mTopBar.setGravity(16);
    int j = (int)TypedValue.applyDimension(1, 5.0F, getResources().getDisplayMetrics());
    addView(mTopBar, (ViewGroup.LayoutParams)localObject);
    mBottomBar = new LinearLayout(mContext);
    mBottomBar.setOrientation(0);
    mBottomBar.setGravity(16);
    localObject = new FrameLayout.LayoutParams(-1, (int)(i * 0.119D));
    gravity = 80;
    mBottomBar.setWeightSum(1.0F);
    mBottomBar.setPadding(j, 0, j, 0);
    mBottomBar.setBackgroundColor(0);
    addView(mBottomBar, (ViewGroup.LayoutParams)localObject);
    localObject = new LinearLayout(mContext);
    LinearLayout.LayoutParams-2-1gravity = 3;
    ((LinearLayout)localObject).setOrientation(0);
    ((LinearLayout)localObject).setGravity(16);
    ((LinearLayout)localObject).setBackgroundColor(-16711936);
    mReplayButton = new AspectRatioImageViewWidth(mContext);
    localObject = new LinearLayout.LayoutParams((int)(i * buttonWidthPercent), (int)(i * buttonWidthPercent));
    gravity = 16;
    mReplayButton.setAdjustViewBounds(true);
    mReplayButton.setPadding(j, j, j, j);
    mBottomBar.addView(mReplayButton, (ViewGroup.LayoutParams)localObject);
    mPauseButton = new AspectRatioImageViewWidth(mContext);
    localObject = new LinearLayout.LayoutParams((int)(i * buttonWidthPercent), (int)(i * buttonWidthPercent));
    gravity = 16;
    mPauseButton.setPadding(j, j, j, j);
    mPauseButton.setAdjustViewBounds(true);
    mBottomBar.addView(mPauseButton, (ViewGroup.LayoutParams)localObject);
    mLeftTime = new AutoResizeTextView(mContext);
    localObject = new LinearLayout.LayoutParams(-2, -2);
    gravity = 16;
    mLeftTime.setTypeface(Typeface.defaultFromStyle(1));
    mLeftTime.setPadding(j, j, j, j);
    mLeftTime.setGravity(16);
    mLeftTime.setTextSize(23.0F);
    mBottomBar.addView(mLeftTime, (ViewGroup.LayoutParams)localObject);
    localObject = new View(mContext);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, 0);
    weight = 1.0F;
    gravity = 16;
    mBottomBar.addView((View)localObject, localLayoutParams);
    initNavigationBarControllerView(j, paramDisplayMetrics);
  }
  
  public boolean canToggle()
  {
    return mVideoData.allowTapNavigationBars;
  }
  
  public void hide()
  {
    Log.d("HIDE");
    mFixed = false;
    if (canToggle())
    {
      Log.d("Hide can toggle");
      if (mShowing)
      {
        Log.d("Hide change visibility");
        mHandler.removeMessages(2);
        setVisibility(8);
        mShowing = false;
      }
    }
  }
  
  public boolean isShowing()
  {
    return mShowing;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt != 4) && (paramInt != 24) && (paramInt != 25) && (paramInt != 82) && (paramInt != 5) && (paramInt != 6))
    {
      if ((paramInt == 79) || (paramInt == 85))
      {
        doPauseResume();
        return true;
      }
      if ((paramInt != 86) || (mPlayer == null) || (!mPlayer.isPlaying())) {
        break label109;
      }
      mPlayer.pause();
      if (mOnPauseListener != null) {
        mOnPauseListener.onVideoPause();
      }
    }
    for (;;)
    {
      return super.onKeyDown(paramInt, paramKeyEvent);
      label109:
      toggle();
    }
  }
  
  public void onPause()
  {
    show(0);
  }
  
  public void onStart()
  {
    refreshProgress();
  }
  
  public void replay()
  {
    if (mPlayer != null)
    {
      mPlayer.seekTo(0);
      mPlayer.start();
    }
    refreshProgress();
    if (mOnReplayListener != null) {
      mOnReplayListener.onVideoReplay();
    }
  }
  
  public void resizeTopBar(int paramInt)
  {
    if (paramInt <= 0) {}
    int i;
    do
    {
      return;
      i = (int)TypedValue.applyDimension(1, 4.0F, getResources().getDisplayMetrics());
    } while (mTopBar == null);
    ViewGroup.LayoutParams localLayoutParams = mTopBar.getLayoutParams();
    height = (i + paramInt);
    mTopBar.setLayoutParams(localLayoutParams);
  }
  
  public void setMediaPlayer(MediaController.MediaPlayerControl paramMediaPlayerControl)
  {
    mPlayer = paramMediaPlayerControl;
    updatePausePlay();
  }
  
  public void setOnPauseListener(MediaController.OnPauseListener paramOnPauseListener)
  {
    mOnPauseListener = paramOnPauseListener;
  }
  
  public void setOnReplayListener(MediaController.OnReplayListener paramOnReplayListener)
  {
    mOnReplayListener = paramOnReplayListener;
  }
  
  public void setOnUnpauseListener(MediaController.OnUnpauseListener paramOnUnpauseListener)
  {
    mOnUnpauseListener = paramOnUnpauseListener;
  }
  
  public void show()
  {
    show(5000);
  }
  
  public void show(int paramInt)
  {
    Log.d("SHOW:" + paramInt);
    if (paramInt == 0) {
      mFixed = true;
    }
    if (!mShowing)
    {
      setVisibility(0);
      mShowing = true;
      Log.d("Change Visibility");
    }
    refreshProgress();
    mHandler.removeMessages(1);
    if ((paramInt != 0) && (!mFixed))
    {
      Message localMessage = mHandler.obtainMessage(1);
      mHandler.sendMessageDelayed(localMessage, paramInt);
    }
  }
  
  public void toggle()
  {
    if (canToggle())
    {
      if (mShowing) {
        hide();
      }
    }
    else {
      return;
    }
    show();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.MediaController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */