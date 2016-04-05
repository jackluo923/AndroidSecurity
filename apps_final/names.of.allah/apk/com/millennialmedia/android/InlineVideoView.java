package com.millennialmedia.android;

import android.content.Context;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.VideoView;
import com.millennialmedia.google.gson.Gson;
import java.io.Serializable;
import java.lang.ref.WeakReference;

class InlineVideoView
  extends VideoView
  implements Serializable
{
  private static final String ANCHOR_IN_PNG = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABOpJREFUeNrUmmtIY0cUgCfJ3VBXUXxR0dp2Ya0aBSFi6yOtFPGF1d1WavrAXy1YwVcLLaQpttsH+lcbirYq0a3Ptd0WpKi1P1SMaAitJNptalcQIwV/iI+o2ST39kx6I9cY3STcuSYHhjuTzD33fJk5M+fciWh9fR0tLCwgrhwfH6OcnBwkl8ur9vb2DIODg5aIiAjkq1itViQWi1FYWBgiKYmJiQhptdpzX6SlpSGz2fwRwzDHR0dH83V1dYn+KK6oqLjR19enQISluLgYof7+/jMfZmRkIIvFcoc5K783NTU95YvSsrKyFLvd/s/a2pqRNEBJSclZAJlMhra2tjyNP4Vobm5OukxhaWlpysnJyQPceXl5WS8SicgDDAwMuBrp6enY+M+Zy2UFIJ72pqy8vDwFfOcvd0ebzWYoLCwkD9DR0YFSU1Ox8W2Mb7IKEM+4lWBnHRoaSnM6nX97jhhAkQfQ6/XXNjY27jD+iamhoeFZiqLQyMhIOrQfeuljhCklJg4AD7rFBCA0Tf+h0+luQ9V80UgBAEUaQAzrvB7qk/7eDA6alZeXdx+qKRd0wb++hPRKJIZNaru+vv4NqP/Gs25sPEUcIDw8HHV1de2BY1bzDCFmC1kA91rd2dmJIV6D6nRIjQC3ARD7LMQvPOmWCArAQlhbWlqUPEBIrgQAC2xuh42NjUoI5O5BkwmpEXCLRqM5XFlZ+Qaq9qB2Yq9jL5HgHRaW+bzvoSkNZic+9wA2tnmxpqbmB2jGB7sPUB67KzZeAcb/CM24kHBi9z6Ar8PDwy8plcr7PBgvnBND9uSa82D8y2D8TzwZLxgAhRN4yF+zwfhfeX7gdSjXiANgp11cXDyCjOxr1ick7MojYQ2g2Cu3fvpZcnKyOCEhQcL5xd1XK+QLu8QB2GDuTyjvB6IgKSkJZWZmejouLrTBYLAJvoz6KxaLxVVYcbLljOTm5oqioqLwlHJw+jB4+s7NzQX8bIfDQX6jwdLb2/upTCZ7kzWcZouTHSUnZHd2tv2IvdrZ4vC4uuv09va2eXx8XCMIgNVqxXPsOW/fZWdnB6TTZrNp8egJAgByyKey/f19LeTD7+IFSCwQgINH47+rrKx8Z2lpyRkZGSkYwCM+lBwcHHwLxtfB1ME+hN+ohM4IsMa/B8YzPuUDwQSwu7urAePrZ2dnGd73AdJTCGK1n2traxvBeP8ysmAZAQhHXlCpVK/Ex8dfKUCgaSkO8xMKCgpGJycnb3uDCBUnvi6Xy4cA4lZcXFxIAmAJA4iRqamp12NjY0+TsJDaB0CeAIjB6enpmujo6P8PE0NtJ8Y5CEDcnZiYUOJQngpBACzS/Pz8u1lZWfSVr0I7OzufrK6uqgMZCUjG3qauEgDCgy+qqqq+woftsFGJIGf40g+dD+fn51XnzolJCCQtb3meP21ubn7GPcXE89lkMql9POFab21tTYVMDwkCMDMzo+Q+fXR0VI1DYW/5tdFoVD3G+AdtbW2uY62ioiJhAKqrq1/lGo9PNy8S/P8HgPjwEuNvuvueO6knDTA2NvbxZcY/BmKtvb39JrefC6Cnp4c4AMQyT3Z3d5f6cw9+3aPT6T7AlkNEalKr1Tc8+ygUCiSC7B7BMkYUgKZpnIQjqVTqeo3pYxjtGglY65+H+ib40b949Lj/v4iJiUH/CTAAFI2ZNCJ5irUAAAAASUVORK5CYII=";
  private static final String ANCHOR_OUT_PNG = "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAABEZJREFUeNrUml9IU1Ecx8+2uwnCrBlaGD2YEKiVla2ypAj8X+l8KYpkLxUFoT0VBT1YUYYP6ktQCGUQgQr+w0o3sgdDEv+AaBH9odicEq4XY25u7vY9dhe3m9N5d+8Z/uDHvRzPn+/nnN/5d6eG5/mNhJCjcAPcD18QngHhPSDxBVE+cfo/aXa7/afL5eKJipaSkkI4QfwzuBZOGwwKQoKS90jTqOvm5uZqrFbrYzUB8vPzFwEMgnhqGtq44LLN4/F8bmxsfEdUNo1GswjgF3peo0SlED9hsVhKbTbbV8LAtELMBhUSP1ZeXn6clXgxwEK0FSHmqfgTvb293whD45QAEMQfh3gHYWxa0eohy2ZmZt4i5o/19PQwFx8CmI9mBLq6umrQ804SI4t6BCoqKh5UVVWZYwVAsBMfhrv56GwKEPtYay8oKFgEyIH/4KO36crKyoOxADDTxnll7AcgDrEG2A2f5JUzCpHLEmAn3MEraxTiCCuAdPj3ZcR4ZEK4MbH3qw2w7FFidna2t6mpiU7M1zLqT8QSu43FMroV/vm/bvd47Dhvm2ge9OQGJL1ZTfc7nc77WVlZOhYhtAX+USLeVlhYaBJnXg0ExN/LyMhgNolT4B9CjeNg9hLiE5YqAAgTsthWEp+ens50Gd0If08b93q9r8KJF0GsR1Z7GPG3WfS8FCCBzgGfz/e6qKgoIZKCWCLXS0dicnKyOjMzk/1Roq+vj+AsfyA7OzthNYUBYYTuF/BALMT/BcDlW3YFubm58Qi5vampqTE5iFIATq/Xy66gv7/fg8eQ3PJ5eXmbdTrduqGhofdut1vOHZwQbFQx6b2GhoZMhN8n+K/h4eHypKSkiMvGxcXRsN9XXV29KSYA9fX1GRD+RbQGeAFxMhIIKr6zs/M0yvjh55gDQPx2ifiQ+QBxKjk5eSXxZwTx1C4xBYB4evL9tsw+6B0ZGVkSwmAwkI6ODip+XpT/MjOAurq6HSucev+OBCAqxBCCeKtEPLUrqgPQxtHzeyIUH7L50dHRs4mJiYt1tLe3W0VhI7arqgMUFxfHSw+LEZpvcHDwZHd39+kw4qnd4NQOnfHxcf/ExMQAdurV3g0MZrP5ufDROdyHZ71WbQCHw+HHjnkRIE9lfrda7qs5p2UxgV0ulxeXo3OAeKJw1TotqyV0enqajsR5hSEMzACoTU1NBXD4oxCNClXJMQUQwolCXMDEfqRAdXrmAAIETyf22NjYQ/Ln5621MwJiCIvFcjEQCAysuREI7dC1tbVVuA/simYEuFiJb2lpuVZaWlqz5iYxvQE2NzcrIZ59CHEYcPT89bKyshql+oMZAGKdtLa23oT4u0r2CRMAk8mkb2truwPxt5SeTpzf71cdIC0tzVhSUpKP1++hARFcu8RzqbSwBzoN1mOCXVFVgGAwSHJycuKMRmM8+fcfSqQg0jQuzN90Qj3O3wIMAN8Np0JgnxtnAAAAAElFTkSuQmCC";
  static final int TIME_TO_UPDATE_SEEK_JS = 500;
  private int duration;
  InlineVideoView.InlineParams inlineParams;
  InlineVideoView.MediaController mediaController;
  WeakReference<MMLayout> mmLayoutRef;
  InlineVideoView.TransparentFix transFix;
  Handler transparentHandler = new InlineVideoView.4(this);
  Handler videoHandler;
  
  public InlineVideoView(MMLayout paramMMLayout)
  {
    super(paramMMLayout.getContext());
    setId(8832429);
    setFocusable(true);
    MMAdImplController.destroyOtherInlineVideo(paramMMLayout.getContext());
    mmLayoutRef = new WeakReference(paramMMLayout);
  }
  
  private MediaPlayer.OnCompletionListener createOnCompletionListener(InlineVideoView paramInlineVideoView)
  {
    return new InlineVideoView.6(this);
  }
  
  private MediaPlayer.OnErrorListener createOnErrorListener(InlineVideoView paramInlineVideoView)
  {
    return new InlineVideoView.5(this);
  }
  
  private MediaPlayer.OnPreparedListener createOnPreparedListener(InlineVideoView paramInlineVideoView)
  {
    return new InlineVideoView.7(this);
  }
  
  private View.OnTouchListener createOnTouchListener(InlineVideoView paramInlineVideoView)
  {
    return new InlineVideoView.2(this);
  }
  
  private Handler createVideoHandler()
  {
    return new InlineVideoView.3(this);
  }
  
  private void downloadCacheVideo()
  {
    if (MMSDK.isUiThread())
    {
      Utils.ThreadUtils.execute(new InlineVideoView.1(this));
      return;
    }
    downloadVideo();
  }
  
  private void downloadVideo()
  {
    VideoAd.downloadVideoFile(getContext(), inlineParams.cachedVideoURI, inlineParams.cachedVideoID);
  }
  
  private Uri getVideoUri()
  {
    if ((hasCachedVideo()) && (!inlineParams.isPlayingStreaming))
    {
      inlineParams.isPlayingStreaming = false;
      return VideoAd.getVideoUri(getContext(), inlineParams.cachedVideoID);
    }
    if (!TextUtils.isEmpty(inlineParams.streamVideoURI))
    {
      inlineParams.isPlayingStreaming = true;
      return Uri.parse(inlineParams.streamVideoURI);
    }
    return null;
  }
  
  private boolean hasCachedVideo()
  {
    return (!TextUtils.isEmpty(inlineParams.cachedVideoID)) && (VideoAd.hasVideoFile(getContext(), inlineParams.cachedVideoID));
  }
  
  private void initInternalInlineVideo()
  {
    videoHandler = createVideoHandler();
    setVideoURI(getVideoUri());
    setBackgroundColor(-16777216);
    setClickable(true);
    setOnErrorListener(createOnErrorListener(this));
    setOnCompletionListener(createOnCompletionListener(this));
    setOnPreparedListener(createOnPreparedListener(this));
    if (inlineParams.autoPlay)
    {
      seekTo(inlineParams.currentPosition);
      startInternal();
      if ((videoHandler != null) && (!videoHandler.hasMessages(2))) {
        videoHandler.sendMessageDelayed(Message.obtain(videoHandler, 2), 500L);
      }
    }
    if (inlineParams.showControls)
    {
      mediaController = new InlineVideoView.MediaController(this, getContext());
      setMediaController(mediaController);
      mediaController.show();
    }
    setOnTouchListener(createOnTouchListener(this));
    MMSDK.Log.e("Finished inserting inlineVideo player");
  }
  
  private void makeTransparent()
  {
    if (!transparentHandler.hasMessages(4)) {
      transparentHandler.sendEmptyMessage(4);
    }
  }
  
  private void removeFromParent()
  {
    ViewGroup localViewGroup = (ViewGroup)getParent();
    if (localViewGroup != null) {
      localViewGroup.removeView(this);
    }
  }
  
  private void removeKeyboardFocusViewJira1642()
  {
    ((InputMethodManager)getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
    requestFocus();
  }
  
  private void resumeInternal(boolean paramBoolean)
  {
    if (!inlineParams.isCompleted)
    {
      seekTo(inlineParams.currentPosition);
      if ((paramBoolean) || (inlineParams.autoPlay))
      {
        startInternal();
        if ((videoHandler != null) && (!videoHandler.hasMessages(2))) {
          videoHandler.sendMessageDelayed(Message.obtain(videoHandler, 2), 500L);
        }
      }
    }
  }
  
  private void setInlineVideoParams(InlineVideoView.InlineParams paramInlineParams)
  {
    inlineParams = paramInlineParams;
  }
  
  private void updateVideoSeekTime()
  {
    int i = getCurrentPosition();
    if (i >= 0)
    {
      MMSDK.Log.d("Time is " + i);
      updateVideoSeekTime(Math.floor(i / 1000.0F));
    }
  }
  
  private void updateVideoSeekTime(double paramDouble)
  {
    MMLayout localMMLayout = (MMLayout)mmLayoutRef.get();
    if (localMMLayout == null) {
      MMSDK.Log.w("MMLayout weak reference broken");
    }
    localMMLayout.loadUrl("javascript:MMJS.inlineVideo.updateVideoSeekTime(" + paramDouble + ");");
  }
  
  private void updateVideoSeekTimeFinal()
  {
    if (duration > 0)
    {
      MMSDK.Log.d("Time is " + duration);
      updateVideoSeekTime(Math.ceil(duration / 1000.0F));
    }
  }
  
  boolean adjustVideo(InlineVideoView.InlineParams paramInlineParams)
  {
    try
    {
      setAdjustVideoParams(paramInlineParams);
      MMSDK.Log.e("Called initInlineVideo inside reposition section code");
      boolean bool = isPlaying();
      stopPlayback();
      paramInlineParams = (MMLayout)mmLayoutRef.get();
      if (paramInlineParams != null) {
        paramInlineParams.addInlineVideo();
      }
      resumeInternal(bool);
      return true;
    }
    finally {}
  }
  
  public RelativeLayout.LayoutParams getCustomLayoutParams()
  {
    if (inlineParams.goingFullScreen) {
      return new RelativeLayout.LayoutParams(-1, -1);
    }
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams((int)(inlineParams.scaleFactor * inlineParams.width), (int)(inlineParams.scaleFactor * inlineParams.height));
    topMargin = ((int)(inlineParams.scaleFactor * inlineParams.y));
    leftMargin = ((int)(inlineParams.scaleFactor * inlineParams.x));
    MMSDK.Log.d("lp height = " + height);
    return localLayoutParams;
  }
  
  String getGsonState()
  {
    return new Gson().toJson(inlineParams);
  }
  
  InlineVideoView.InlineParams getInlineParams()
  {
    return inlineParams;
  }
  
  /* Error */
  void initInlineVideo(InlineVideoView.InlineParams paramInlineParams)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: putfield 141	com/millennialmedia/android/InlineVideoView:inlineParams	Lcom/millennialmedia/android/InlineVideoView$InlineParams;
    //   7: aload_0
    //   8: getfield 141	com/millennialmedia/android/InlineVideoView:inlineParams	Lcom/millennialmedia/android/InlineVideoView$InlineParams;
    //   11: getfield 146	com/millennialmedia/android/InlineVideoView$InlineParams:cachedVideoURI	Ljava/lang/String;
    //   14: invokestatic 176	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   17: ifne +7 -> 24
    //   20: aload_0
    //   21: invokespecial 445	com/millennialmedia/android/InlineVideoView:downloadCacheVideo	()V
    //   24: aload_0
    //   25: invokevirtual 448	com/millennialmedia/android/InlineVideoView:isValid	()Z
    //   28: ifeq +10 -> 38
    //   31: aload_0
    //   32: invokespecial 450	com/millennialmedia/android/InlineVideoView:initInternalInlineVideo	()V
    //   35: aload_0
    //   36: monitorexit
    //   37: return
    //   38: ldc_w 452
    //   41: invokestatic 283	com/millennialmedia/android/MMSDK$Log:e	(Ljava/lang/String;)V
    //   44: goto -9 -> 35
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	InlineVideoView
    //   0	52	1	paramInlineParams	InlineVideoView.InlineParams
    // Exception table:
    //   from	to	target	type
    //   2	24	47	finally
    //   24	35	47	finally
    //   38	44	47	finally
  }
  
  boolean isPlayingStreaming()
  {
    return (inlineParams != null) && (inlineParams.isPlayingStreaming);
  }
  
  boolean isValid()
  {
    return (!TextUtils.isEmpty(inlineParams.streamVideoURI)) || (hasCachedVideo());
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof AdViewOverlayView.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (AdViewOverlayView.SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    inlineParams.inflateFromGson(gson);
  }
  
  public Parcelable onSaveInstanceState()
  {
    AdViewOverlayView.SavedState localSavedState = new AdViewOverlayView.SavedState(super.onSaveInstanceState());
    if (isPlaying()) {
      inlineParams.currentPosition = getCurrentPosition();
    }
    gson = getGsonState();
    return localSavedState;
  }
  
  void pauseVideo()
  {
    if ((videoHandler != null) && (videoHandler.hasMessages(2))) {
      videoHandler.removeMessages(2);
    }
    if (isPlaying())
    {
      inlineParams.currentPosition = getCurrentPosition();
      pause();
    }
  }
  
  void playVideo()
  {
    if (!isPlaying())
    {
      if ((!inlineParams.isStopped) || (getVideoUri() == null)) {
        break label95;
      }
      inlineParams.isStopped = false;
      setVideoURI(getVideoUri());
      seekTo(0);
    }
    for (;;)
    {
      inlineParams.isCompleted = false;
      startInternal();
      if ((videoHandler != null) && (!videoHandler.hasMessages(2))) {
        videoHandler.sendMessageDelayed(Message.obtain(videoHandler, 2), 500L);
      }
      return;
      label95:
      if (inlineParams.isCompleted) {
        seekTo(0);
      }
    }
  }
  
  void removeVideo()
  {
    if ((videoHandler != null) && (videoHandler.hasMessages(2))) {
      videoHandler.removeMessages(2);
    }
    if (isPlaying()) {
      stopPlayback();
    }
    removeFromParent();
  }
  
  void resumeVideo()
  {
    if ((!isPlaying()) && (!inlineParams.isCompleted))
    {
      startInternal();
      if ((videoHandler != null) && (!videoHandler.hasMessages(2))) {
        videoHandler.sendMessageDelayed(Message.obtain(videoHandler, 2), 500L);
      }
    }
  }
  
  void setAdjustVideoParams(InlineVideoView.InlineParams paramInlineParams)
  {
    inlineParams.x = x;
    inlineParams.y = y;
    inlineParams.width = width;
    inlineParams.height = height;
  }
  
  void setVideoSource(String paramString)
  {
    if (isPlaying()) {
      stopPlayback();
    }
    inlineParams.currentPosition = 0;
    setBackgroundColor(-16777216);
    setVideoURI(Uri.parse(paramString));
    startInternal();
  }
  
  public void start()
  {
    makeTransparent();
    removeKeyboardFocusViewJira1642();
    super.start();
  }
  
  public void startInternal()
  {
    if (((PowerManager)getContext().getSystemService("power")).isScreenOn()) {
      start();
    }
  }
  
  public void stopPlayback()
  {
    if ((videoHandler != null) && (videoHandler.hasMessages(2))) {
      videoHandler.removeMessages(2);
    }
    if (isPlaying())
    {
      inlineParams.currentPosition = 0;
      super.stopPlayback();
    }
  }
  
  void stopVideo()
  {
    if ((videoHandler != null) && (videoHandler.hasMessages(2))) {
      videoHandler.removeMessages(2);
    }
    if (isPlaying())
    {
      inlineParams.isStopped = true;
      inlineParams.currentPosition = 0;
      if ((mmLayoutRef != null) && (mmLayoutRef.get() != null)) {
        ((MMLayout)mmLayoutRef.get()).addBlackView();
      }
      stopPlayback();
    }
  }
  
  public String toString()
  {
    return inlineParams.toString();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */