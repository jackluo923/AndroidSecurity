package com.adsdk.sdk.video;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.ConditionVariable;
import android.os.Handler;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.widget.MediaController.MediaPlayerControl;
import com.adsdk.sdk.Log;
import java.io.IOException;
import java.util.Vector;

@SuppressLint({"ViewConstructor"})
public class SDKVideoView
  extends SurfaceView
  implements MediaController.MediaPlayerControl
{
  private static final int STATE_ERROR = -1;
  private static final int STATE_IDLE = 0;
  private static final int STATE_PAUSED = 4;
  private static final int STATE_PLAYBACK_COMPLETED = 5;
  private static final int STATE_PLAYING = 3;
  private static final int STATE_PREPARED = 2;
  private static final int STATE_PREPARING = 1;
  private MediaPlayer.OnBufferingUpdateListener mBufferingUpdateListener = new SDKVideoView.6(this);
  private MediaPlayer.OnCompletionListener mCompletionListener = new SDKVideoView.3(this);
  private Context mContext;
  private int mCurrentBufferPercentage;
  private int mCurrentState = 0;
  private int mDisplayMode;
  private int mDuration;
  private MediaPlayer.OnErrorListener mErrorListener = new SDKVideoView.4(this);
  public Handler mHandler;
  private int mHeight;
  private MediaPlayer.OnInfoListener mInfoListener = new SDKVideoView.5(this);
  private MediaController mMediaController;
  private MediaPlayer mMediaPlayer = null;
  private MediaPlayer.OnCompletionListener mOnCompletionListener;
  private MediaPlayer.OnErrorListener mOnErrorListener;
  private MediaPlayer.OnInfoListener mOnInfoListener;
  private MediaPlayer.OnPreparedListener mOnPreparedListener;
  private SDKVideoView.OnStartListener mOnStartListener;
  private boolean mPlayWhenSurfaceReady;
  MediaPlayer.OnPreparedListener mPreparedListener = new SDKVideoView.2(this);
  SurfaceHolder.Callback mSHCallback = new SDKVideoView.7(this);
  private int mSeekWhenPrepared;
  MediaPlayer.OnVideoSizeChangedListener mSizeChangedListener = new SDKVideoView.1(this);
  private int mSurfaceHeight;
  private boolean mSurfaceReady = false;
  private int mSurfaceWidth;
  private int mTargetState = 0;
  private SparseArray<Vector<SDKVideoView.OnTimeEventListener>> mTimeEventListeners = new SparseArray();
  private Runnable mTimeEventRunnable;
  private Thread mTimeEventThread;
  private ConditionVariable mTimeEventThreadDone = new ConditionVariable(false);
  private Uri mUri;
  private int mVideoHeight;
  private int mVideoWidth;
  private int mWidth;
  
  public SDKVideoView(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramContext);
    mContext = paramContext;
    mWidth = paramInt1;
    mHeight = paramInt2;
    mDisplayMode = paramInt3;
    initVideoView();
  }
  
  private void attachMediaController()
  {
    if ((mMediaPlayer != null) && (mMediaController != null))
    {
      mMediaController.setMediaPlayer(this);
      mMediaController.setEnabled(isInPlaybackState());
    }
  }
  
  private void initVideoView()
  {
    mHandler = new Handler();
    mVideoWidth = 0;
    mVideoHeight = 0;
    mSurfaceWidth = 0;
    mSurfaceHeight = 0;
    mSurfaceReady = false;
    setVisibility(0);
    getHolder().addCallback(mSHCallback);
    getHolder().setType(3);
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
    mCurrentState = 0;
    mTargetState = 0;
  }
  
  private boolean isInPlaybackState()
  {
    return (mMediaPlayer != null) && (mCurrentState != -1) && (mCurrentState != 0) && (mCurrentState != 1);
  }
  
  private void openVideo()
  {
    if (mUri == null) {
      return;
    }
    mPlayWhenSurfaceReady = false;
    if (!mSurfaceReady)
    {
      mPlayWhenSurfaceReady = true;
      Log.d("Open Video not starting until surface created");
      return;
    }
    release(false);
    try
    {
      mMediaPlayer = new MediaPlayer();
      mMediaPlayer.setDisplay(getHolder());
      mMediaPlayer.setOnPreparedListener(mPreparedListener);
      mMediaPlayer.setOnVideoSizeChangedListener(mSizeChangedListener);
      mDuration = -1;
      mMediaPlayer.setOnCompletionListener(mCompletionListener);
      mMediaPlayer.setOnErrorListener(mErrorListener);
      mMediaPlayer.setOnBufferingUpdateListener(mBufferingUpdateListener);
      mMediaPlayer.setOnInfoListener(mInfoListener);
      mCurrentBufferPercentage = 0;
      mMediaPlayer.setDataSource(mContext, mUri);
      mMediaPlayer.setAudioStreamType(3);
      mMediaPlayer.setScreenOnWhilePlaying(true);
      mMediaPlayer.prepareAsync();
      mTimeEventRunnable = new SDKVideoView.8(this);
      mTimeEventThread = new Thread(mTimeEventRunnable);
      mTimeEventThread.start();
      mCurrentState = 1;
      attachMediaController();
      return;
    }
    catch (IOException localIOException)
    {
      Log.w("ADSDK", "Unable to open content: " + mUri, localIOException);
      mCurrentState = -1;
      mTargetState = -1;
      mErrorListener.onError(mMediaPlayer, 1, 0);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      Log.w("ADSDK", "Unable to open content: " + mUri, localIllegalArgumentException);
      mCurrentState = -1;
      mTargetState = -1;
      mErrorListener.onError(mMediaPlayer, 1, 0);
    }
  }
  
  private void release(boolean paramBoolean)
  {
    if (mMediaPlayer != null)
    {
      mCurrentState = 0;
      if (mTimeEventThread != null)
      {
        mTimeEventThreadDone.open();
        mTimeEventThread = null;
      }
      mMediaPlayer.reset();
      mMediaPlayer.release();
      mMediaPlayer = null;
      if (paramBoolean) {
        mTargetState = 0;
      }
    }
  }
  
  private void setVideoDisplaySize()
  {
    mVideoWidth = 0;
    mVideoHeight = 0;
    if (mMediaPlayer != null)
    {
      mVideoWidth = mMediaPlayer.getVideoWidth();
      mVideoHeight = mMediaPlayer.getVideoHeight();
    }
    Log.d("SDKVideoView setVideoDisplaySize View Size (" + mWidth + "," + mHeight + ") Video size (" + mVideoWidth + "," + mVideoHeight + ") surface:(" + mSurfaceWidth + "," + mSurfaceHeight + ")");
    if ((mSurfaceReady) && (mVideoWidth > 0) && (mVideoHeight > 0)) {
      if (mDisplayMode == 1)
      {
        if (mVideoWidth * mHeight <= mWidth * mVideoHeight) {
          break label236;
        }
        mHeight = (mWidth * mVideoHeight / mVideoWidth);
      }
    }
    for (;;)
    {
      getHolder().setFixedSize(mWidth, mHeight);
      getHolder().setFixedSize(mVideoWidth, mVideoHeight);
      return;
      label236:
      if (mVideoWidth * mHeight < mWidth * mVideoHeight) {
        mWidth = (mHeight * mVideoWidth / mVideoHeight);
      }
    }
  }
  
  private void toggleMediaControlsVisiblity()
  {
    if (mMediaController != null) {
      mMediaController.toggle();
    }
  }
  
  public boolean canPause()
  {
    return true;
  }
  
  public boolean canSeekBackward()
  {
    return false;
  }
  
  public boolean canSeekForward()
  {
    return true;
  }
  
  public void destroy()
  {
    mTimeEventThreadDone.open();
  }
  
  public int getAudioSessionId()
  {
    if (mMediaPlayer != null) {
      return mMediaPlayer.getAudioSessionId();
    }
    return 0;
  }
  
  public int getBufferPercentage()
  {
    if (mMediaPlayer != null) {
      return mCurrentBufferPercentage;
    }
    return 0;
  }
  
  public int getCurrentPosition()
  {
    if (isInPlaybackState()) {
      return mMediaPlayer.getCurrentPosition();
    }
    return 0;
  }
  
  public int getDuration()
  {
    if (isInPlaybackState())
    {
      if (mDuration > 0) {
        return mDuration;
      }
      mDuration = mMediaPlayer.getDuration();
      return mDuration;
    }
    mDuration = -1;
    return mDuration;
  }
  
  public boolean isPlaying()
  {
    return (isInPlaybackState()) && (mMediaPlayer.isPlaying());
  }
  
  protected void onDetachedFromWindow()
  {
    Log.i("Video view detached from Window");
    super.onDetachedFromWindow();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    int i;
    if ((paramInt != 4) && (paramInt != 24) && (paramInt != 25) && (paramInt != 82) && (paramInt != 5) && (paramInt != 6)) {
      i = 1;
    }
    while ((isInPlaybackState()) && (i != 0) && (mMediaController != null)) {
      if ((paramInt == 79) || (paramInt == 85))
      {
        if (mMediaPlayer.isPlaying())
        {
          pause();
          return true;
          i = 0;
        }
        else
        {
          start();
          return true;
        }
      }
      else
      {
        if ((paramInt != 86) || (!mMediaPlayer.isPlaying())) {
          break label120;
        }
        pause();
      }
    }
    for (;;)
    {
      return super.onKeyDown(paramInt, paramKeyEvent);
      label120:
      toggleMediaControlsVisiblity();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getDefaultSize(mVideoWidth, paramInt1);
    int j = getDefaultSize(mVideoHeight, paramInt2);
    paramInt1 = j;
    paramInt2 = i;
    if (mVideoWidth > 0)
    {
      paramInt1 = j;
      paramInt2 = i;
      if (mVideoHeight > 0)
      {
        if (mVideoWidth * j <= mVideoHeight * i) {
          break label168;
        }
        paramInt1 = mVideoHeight * i / mVideoWidth;
        paramInt2 = i;
      }
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      Log.d("SDKVideoView onMeasure video size (" + mVideoWidth + "," + mVideoHeight + ") surface:(" + mSurfaceWidth + "," + mSurfaceHeight + ") Setting size:(" + paramInt2 + "," + paramInt1 + ")");
      return;
      label168:
      paramInt1 = j;
      paramInt2 = i;
      if (mVideoWidth * j < mVideoHeight * i)
      {
        paramInt2 = mVideoWidth * j / mVideoHeight;
        paramInt1 = j;
      }
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((isInPlaybackState()) && (mMediaController != null) && (paramMotionEvent.getAction() == 0)) {
      toggleMediaControlsVisiblity();
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    if ((isInPlaybackState()) && (mMediaController != null)) {
      toggleMediaControlsVisiblity();
    }
    return false;
  }
  
  public void pause()
  {
    if ((isInPlaybackState()) && (mMediaPlayer.isPlaying()))
    {
      mMediaPlayer.pause();
      mCurrentState = 4;
      if (mMediaController != null) {
        mMediaController.onPause();
      }
    }
    mTargetState = 4;
  }
  
  public void seekTo(int paramInt)
  {
    if (isInPlaybackState())
    {
      mMediaPlayer.seekTo(paramInt);
      mSeekWhenPrepared = 0;
      return;
    }
    mSeekWhenPrepared = paramInt;
  }
  
  public void setMediaController(MediaController paramMediaController)
  {
    if (mMediaController != null) {
      mMediaController.hide();
    }
    mMediaController = paramMediaController;
    attachMediaController();
  }
  
  public void setOnCompletionListener(MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    mOnCompletionListener = paramOnCompletionListener;
  }
  
  public void setOnErrorListener(MediaPlayer.OnErrorListener paramOnErrorListener)
  {
    mOnErrorListener = paramOnErrorListener;
  }
  
  public void setOnInfoListener(MediaPlayer.OnInfoListener paramOnInfoListener)
  {
    mOnInfoListener = paramOnInfoListener;
  }
  
  public void setOnPreparedListener(MediaPlayer.OnPreparedListener paramOnPreparedListener)
  {
    mOnPreparedListener = paramOnPreparedListener;
  }
  
  public void setOnStartListener(SDKVideoView.OnStartListener paramOnStartListener)
  {
    mOnStartListener = paramOnStartListener;
  }
  
  public void setOnTimeEventListener(int paramInt, SDKVideoView.OnTimeEventListener paramOnTimeEventListener)
  {
    Vector localVector2 = (Vector)mTimeEventListeners.get(paramInt);
    Vector localVector1 = localVector2;
    if (localVector2 == null)
    {
      localVector1 = new Vector();
      mTimeEventListeners.put(paramInt, localVector1);
    }
    localVector1.add(paramOnTimeEventListener);
  }
  
  public void setVideoPath(String paramString)
  {
    setVideoURI(Uri.parse(paramString));
  }
  
  public void setVideoURI(Uri paramUri)
  {
    mUri = paramUri;
    mSeekWhenPrepared = 0;
    openVideo();
  }
  
  public void start()
  {
    mTargetState = 3;
    if (isInPlaybackState())
    {
      localIntent = new Intent("com.android.music.musicservicecommand");
      localIntent.putExtra("command", "pause");
      mContext.sendBroadcast(localIntent);
      mMediaPlayer.start();
      if (mMediaController != null) {
        mMediaController.onStart();
      }
      if ((mCurrentState == 2) && (mOnStartListener != null)) {
        mOnStartListener.onVideoStart();
      }
      mCurrentState = 3;
    }
    while (mMediaPlayer != null)
    {
      Intent localIntent;
      return;
    }
    openVideo();
  }
  
  public void stopPlayback()
  {
    if (mMediaPlayer != null)
    {
      if (mMediaPlayer.isPlaying()) {
        mMediaPlayer.stop();
      }
      mMediaPlayer.release();
      mMediaPlayer = null;
      mCurrentState = 0;
      mTargetState = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.SDKVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */