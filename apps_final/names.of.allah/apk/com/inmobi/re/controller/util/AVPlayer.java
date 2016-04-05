package com.inmobi.re.controller.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import android.widget.VideoView;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.uid.UIDHelper;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController.Dimensions;
import com.inmobi.re.controller.JSController.PlayerProperties;

public class AVPlayer
  extends VideoView
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  public static final int MINIMAL_LAYOUT_PARAM = 1;
  private static String f = "play";
  private static String g = "pause";
  private static String h = "ended";
  private static int i = -1;
  private static int j = 2;
  private static String k = "Loading. Please Wait..";
  private JSController.PlayerProperties a;
  private AVPlayerListener b;
  private String c;
  private int d = 0;
  private RelativeLayout e;
  private boolean l = false;
  private boolean m = false;
  private IMWebView n;
  private Bitmap o = null;
  private int p;
  public boolean pseudoPause = false;
  private int q = -1;
  private AVPlayer.playerState r;
  private MediaPlayer s;
  private boolean t;
  private ViewGroup u;
  private JSController.Dimensions v;
  private AVPlayer.b w = new AVPlayer.b(this);
  
  private AVPlayer(Context paramContext)
  {
    super(paramContext);
  }
  
  public AVPlayer(Context paramContext, IMWebView paramIMWebView)
  {
    this(paramContext);
    setZOrderOnTop(true);
    r = AVPlayer.playerState.INIT;
    setDrawingCacheEnabled(true);
    n = paramIMWebView;
    setFocusable(true);
    setFocusableInTouchMode(true);
    p = 100;
  }
  
  private static String a(String paramString)
  {
    try
    {
      paramString = paramString.getBytes();
      StringBuffer localStringBuffer = new StringBuffer();
      int i1 = 0;
      for (;;)
      {
        if (i1 < paramString.length)
        {
          if ((paramString[i1] & 0x80) > 0) {
            localStringBuffer.append("%" + UIDHelper.byteToHex(paramString[i1]));
          } else {
            localStringBuffer.append((char)paramString[i1]);
          }
        }
        else
        {
          paramString = new String(localStringBuffer.toString().getBytes(), "ISO-8859-1");
          return paramString;
        }
        i1 += 1;
      }
      return null;
    }
    catch (Exception paramString) {}
  }
  
  private void a()
  {
    if (a.showControl())
    {
      MediaController localMediaController = new MediaController(getContext());
      setMediaController(localMediaController);
      localMediaController.setAnchorView(this);
    }
  }
  
  private void a(int paramInt)
  {
    if (n != null) {
      n.injectJavaScript("window.mraidview.fireMediaErrorEvent('" + a.id + "'," + paramInt + ");");
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    if (n != null) {
      n.injectJavaScript("window.mraidview.fireMediaTimeUpdateEvent('" + a.id + "'," + paramInt1 + "," + paramInt2 + ");");
    }
  }
  
  private void a(boolean paramBoolean, int paramInt)
  {
    if (n != null)
    {
      n.injectJavaScript("window.mraidview.fireMediaCloseEvent('" + a.id + "'," + paramBoolean + "," + paramInt + ");");
      n.mediaPlayerReleased(this);
    }
  }
  
  private void b()
  {
    r = AVPlayer.playerState.INIT;
    e();
    setVideoPath(c);
    a();
    setOnCompletionListener(this);
    setOnErrorListener(this);
    setOnPreparedListener(this);
  }
  
  private void b(int paramInt)
  {
    if ((s != null) && (t)) {
      t = false;
    }
    p = paramInt;
    float f1 = 1.0F - (float)(Math.log(101 - paramInt) / Math.log(101.0D));
    try
    {
      s.setVolume(f1, f1);
      g();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        n.raiseError("Player has been released. Cannot set the volume.", "setVolume");
      }
    }
  }
  
  private void b(String paramString)
  {
    if (n != null) {
      n.injectJavaScript("window.mraidview.fireMediaTrackingEvent('" + paramString + "','" + a.id + "');");
    }
  }
  
  private void c()
  {
    if (r == AVPlayer.playerState.SHOWING) {
      if (m)
      {
        localplayerState = AVPlayer.playerState.COMPLETED;
        r = localplayerState;
      }
    }
    while ((!a.isAutoPlay()) || (r != AVPlayer.playerState.INIT)) {
      for (;;)
      {
        return;
        AVPlayer.playerState localplayerState = AVPlayer.playerState.PAUSED;
      }
    }
    if (a.doMute()) {
      mute();
    }
    start();
  }
  
  private void d()
  {
    try
    {
      ViewGroup localViewGroup = (ViewGroup)getParent();
      if (localViewGroup != null) {
        localViewGroup.removeView(this);
      }
      localViewGroup = (ViewGroup)u.getParent();
      if (localViewGroup != null) {
        localViewGroup.removeView(u);
      }
      setBackgroundColor(0);
      setBackgroundDrawable(null);
      setBackGroundLayout(null);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "IMAVPlayer: unable to remove view");
    }
  }
  
  private void e()
  {
    e = new RelativeLayout(getContext());
    e.setLayoutParams(getLayoutParams());
    e.setBackgroundColor(-16777216);
    TextView localTextView = new TextView(getContext());
    localTextView.setText(k);
    localTextView.setTextColor(-1);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(13);
    e.addView(localTextView, localLayoutParams);
    ((ViewGroup)getParent()).addView(e);
  }
  
  private void f()
  {
    if (e != null) {
      ((ViewGroup)getParent()).removeView(e);
    }
  }
  
  private void g()
  {
    if (n != null) {
      n.injectJavaScript("window.mraidview.fireMediaVolumeChangeEvent('" + a.id + "'," + getVolume() + "," + isMediaMuted() + ");");
    }
  }
  
  private void h()
  {
    w.sendEmptyMessage(1001);
  }
  
  private void i()
  {
    w.removeMessages(1001);
  }
  
  private boolean j()
  {
    return (r == AVPlayer.playerState.PAUSED) || (r == AVPlayer.playerState.HIDDEN);
  }
  
  private boolean k()
  {
    return r == AVPlayer.playerState.RELEASED;
  }
  
  private boolean l()
  {
    return r == AVPlayer.playerState.PLAYING;
  }
  
  private boolean m()
  {
    return (getLayoutParamswidth == 1) && (getLayoutParamsheight == 1);
  }
  
  public boolean getAutoPlay()
  {
    if (a != null) {
      return a.autoPlay;
    }
    return false;
  }
  
  public ViewGroup getBackGroundLayout()
  {
    return u;
  }
  
  public String getMediaURL()
  {
    return c;
  }
  
  public JSController.Dimensions getPlayDimensions()
  {
    return v;
  }
  
  public JSController.PlayerProperties getPlayProperties()
  {
    return a;
  }
  
  public JSController.PlayerProperties getProperties()
  {
    return a;
  }
  
  public String getPropertyID()
  {
    return a.id;
  }
  
  public AVPlayer.playerState getState()
  {
    return r;
  }
  
  public int getVolume()
  {
    return p;
  }
  
  public void hide()
  {
    try
    {
      setVisibility(4);
      u.setVisibility(4);
      r = AVPlayer.playerState.HIDDEN;
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "IMAVPlayer: unable to hide video");
    }
  }
  
  public boolean isInlineVideo()
  {
    return !a.isFullScreen();
  }
  
  public boolean isMediaMuted()
  {
    return t;
  }
  
  public boolean isPrepared()
  {
    return l;
  }
  
  public void mute()
  {
    if ((s != null) && (!t)) {
      t = true;
    }
    try
    {
      s.setVolume(0.0F, 0.0F);
      g();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.internal("[InMobi]-[RE]-4.4.1", "IMAVPlayer: unable to set volume (mute)");
      }
    }
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "AVPlayer-> onCompletion");
    r = AVPlayer.playerState.COMPLETED;
    m = true;
    b(h);
    i();
    try
    {
      if (a.doLoop()) {}
      while (!a.exitOnComplete()) {
        try
        {
          if (!j())
          {
            d = 0;
            start();
          }
          return;
        }
        finally {}
      }
    }
    catch (Exception paramMediaPlayer)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "IMAvplayer onCompletion exception ", paramMediaPlayer);
      return;
    }
    releasePlayer(false);
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "AVPlayer-> Player error : " + paramInt1);
    f();
    releasePlayer(false);
    if (b != null) {
      b.onError(this);
    }
    paramInt2 = i;
    if (paramInt1 == 100) {
      paramInt2 = j;
    }
    a(paramInt2);
    return false;
  }
  
  public void onIMVisibilityChanged(boolean paramBoolean)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "AVPlayer-> onIMVisibilityChanged: " + paramBoolean);
    if ((paramBoolean) && (!pseudoPause)) {
      setBackgroundDrawable(new BitmapDrawable(o));
    }
    if ((paramBoolean) && (pseudoPause))
    {
      pseudoPause = false;
      play();
    }
    if ((!paramBoolean) && (r == AVPlayer.playerState.PLAYING))
    {
      pseudoPause = true;
      pause();
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    s = paramMediaPlayer;
    super.seekTo(d * 1000);
    if (t) {}
    try
    {
      s.setVolume(0.0F, 0.0F);
      Log.debug("[InMobi]-[RE]-4.4.1", "AVPlayer-> onPrepared");
      f();
      if (b != null) {
        b.onPrepared(this);
      }
      l = true;
      c();
      return;
    }
    catch (Exception paramMediaPlayer)
    {
      for (;;)
      {
        Log.internal("[InMobi]-[RE]-4.4.1", "IMAVPlayer: unable to set volume");
      }
    }
  }
  
  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      onIMVisibilityChanged(bool);
      return;
    }
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    try
    {
      super.onWindowVisibilityChanged(paramInt);
      if (Build.VERSION.SDK_INT < 8) {
        if (paramInt != 0) {
          break label25;
        }
      }
      label25:
      for (boolean bool = true;; bool = false)
      {
        onIMVisibilityChanged(bool);
        return;
      }
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "IMAVPlayer: onWindowVisibilityChanged: Something went wrong");
    }
  }
  
  /* Error */
  public void pause()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 108	com/inmobi/re/controller/util/AVPlayer:r	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   6: ifnull +20 -> 26
    //   9: aload_0
    //   10: getfield 108	com/inmobi/re/controller/util/AVPlayer:r	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   13: astore_1
    //   14: getstatic 293	com/inmobi/re/controller/util/AVPlayer$playerState:PAUSED	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   17: astore_2
    //   18: aload_1
    //   19: aload_2
    //   20: if_acmpne +6 -> 26
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: invokespecial 519	android/widget/VideoView:pause	()V
    //   30: aload_0
    //   31: getstatic 293	com/inmobi/re/controller/util/AVPlayer$playerState:PAUSED	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   34: putfield 108	com/inmobi/re/controller/util/AVPlayer:r	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   37: aload_0
    //   38: invokespecial 450	com/inmobi/re/controller/util/AVPlayer:i	()V
    //   41: ldc_w 330
    //   44: ldc_w 521
    //   47: invokestatic 446	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: aload_0
    //   51: getstatic 59	com/inmobi/re/controller/util/AVPlayer:g	Ljava/lang/String;
    //   54: invokespecial 448	com/inmobi/re/controller/util/AVPlayer:b	(Ljava/lang/String;)V
    //   57: goto -34 -> 23
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	AVPlayer
    //   13	6	1	localplayerState1	AVPlayer.playerState
    //   60	4	1	localObject	Object
    //   17	3	2	localplayerState2	AVPlayer.playerState
    // Exception table:
    //   from	to	target	type
    //   2	18	60	finally
    //   26	57	60	finally
  }
  
  public void play()
  {
    b();
  }
  
  public void releasePlayer(boolean paramBoolean)
  {
    if (n != null) {
      n.setOnTouchListener(new AVPlayer.a(this));
    }
    for (;;)
    {
      try
      {
        if (k()) {
          return;
        }
        r = AVPlayer.playerState.RELEASED;
        if (q != -1)
        {
          i1 = q;
          a(paramBoolean, i1);
          i();
          stopPlayback();
          super.setMediaController(null);
          d();
          if (b == null) {
            continue;
          }
          b.onComplete(this);
          b = null;
          return;
        }
      }
      finally {}
      int i1 = Math.round(getCurrentPosition() / 1000);
    }
  }
  
  public void seekPlayer(int paramInt)
  {
    if (paramInt <= getDuration()) {
      seekTo(paramInt);
    }
  }
  
  public void setAutoPlay(boolean paramBoolean)
  {
    if (a != null) {
      a.autoPlay = paramBoolean;
    }
  }
  
  public void setBackGroundLayout(ViewGroup paramViewGroup)
  {
    u = paramViewGroup;
  }
  
  public void setListener(AVPlayerListener paramAVPlayerListener)
  {
    b = paramAVPlayerListener;
  }
  
  public void setPlayData(JSController.PlayerProperties paramPlayerProperties, String paramString)
  {
    a = paramPlayerProperties;
    c = paramString;
    if (audioMuted) {
      t = true;
    }
    c = c.trim();
    c = a(c);
    if (o != null) {}
    do
    {
      return;
      o = Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
    } while (Build.VERSION.SDK_INT < 8);
    try
    {
      o = WrapperFunctions.getVideoBitmap(c);
      return;
    }
    catch (Exception paramPlayerProperties)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "IMAVPlayer: unable to get video bitmap");
    }
  }
  
  public void setPlayDimensions(JSController.Dimensions paramDimensions)
  {
    v = paramDimensions;
  }
  
  public void setVolume(int paramInt)
  {
    if ((paramInt != p) && (r != AVPlayer.playerState.RELEASED)) {
      b(paramInt);
    }
  }
  
  public void show()
  {
    r = AVPlayer.playerState.SHOWING;
    setVisibility(0);
  }
  
  /* Error */
  public void start()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 113	com/inmobi/re/controller/util/AVPlayer:n	Lcom/inmobi/re/container/IMWebView;
    //   6: ifnull +25 -> 31
    //   9: aload_0
    //   10: invokespecial 595	com/inmobi/re/controller/util/AVPlayer:m	()Z
    //   13: ifne +18 -> 31
    //   16: aload_0
    //   17: getfield 113	com/inmobi/re/controller/util/AVPlayer:n	Lcom/inmobi/re/container/IMWebView;
    //   20: new 597	com/inmobi/re/controller/util/AVPlayer$c
    //   23: dup
    //   24: aload_0
    //   25: invokespecial 598	com/inmobi/re/controller/util/AVPlayer$c:<init>	(Lcom/inmobi/re/controller/util/AVPlayer;)V
    //   28: invokevirtual 530	com/inmobi/re/container/IMWebView:setOnTouchListener	(Landroid/view/View$OnTouchListener;)V
    //   31: aload_0
    //   32: getfield 108	com/inmobi/re/controller/util/AVPlayer:r	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   35: ifnull +20 -> 55
    //   38: aload_0
    //   39: getfield 108	com/inmobi/re/controller/util/AVPlayer:r	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   42: astore_1
    //   43: getstatic 400	com/inmobi/re/controller/util/AVPlayer$playerState:PLAYING	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   46: astore_2
    //   47: aload_1
    //   48: aload_2
    //   49: if_acmpne +6 -> 55
    //   52: aload_0
    //   53: monitorexit
    //   54: return
    //   55: aload_0
    //   56: aload_0
    //   57: getfield 80	com/inmobi/re/controller/util/AVPlayer:d	I
    //   60: sipush 1000
    //   63: imul
    //   64: invokevirtual 600	com/inmobi/re/controller/util/AVPlayer:seekPlayer	(I)V
    //   67: aload_0
    //   68: invokespecial 601	android/widget/VideoView:start	()V
    //   71: aload_0
    //   72: getstatic 400	com/inmobi/re/controller/util/AVPlayer$playerState:PLAYING	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   75: putfield 108	com/inmobi/re/controller/util/AVPlayer:r	Lcom/inmobi/re/controller/util/AVPlayer$playerState;
    //   78: aload_0
    //   79: iconst_0
    //   80: putfield 84	com/inmobi/re/controller/util/AVPlayer:m	Z
    //   83: aload_0
    //   84: invokespecial 603	com/inmobi/re/controller/util/AVPlayer:h	()V
    //   87: ldc_w 330
    //   90: ldc_w 605
    //   93: invokestatic 446	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;)V
    //   96: aload_0
    //   97: getfield 82	com/inmobi/re/controller/util/AVPlayer:l	Z
    //   100: ifeq -48 -> 52
    //   103: aload_0
    //   104: getstatic 55	com/inmobi/re/controller/util/AVPlayer:f	Ljava/lang/String;
    //   107: invokespecial 448	com/inmobi/re/controller/util/AVPlayer:b	(Ljava/lang/String;)V
    //   110: goto -58 -> 52
    //   113: astore_1
    //   114: aload_0
    //   115: monitorexit
    //   116: aload_1
    //   117: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	118	0	this	AVPlayer
    //   42	6	1	localplayerState1	AVPlayer.playerState
    //   113	4	1	localObject	Object
    //   46	3	2	localplayerState2	AVPlayer.playerState
    // Exception table:
    //   from	to	target	type
    //   2	31	113	finally
    //   31	47	113	finally
    //   55	110	113	finally
  }
  
  public void unMute()
  {
    if ((s != null) && (t)) {
      b(p);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.util.AVPlayer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */