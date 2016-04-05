package com.google.android.gms.internal;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.MediaController;
import android.widget.VideoView;
import java.util.HashMap;
import java.util.Map;

public final class ck
  extends FrameLayout
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  private final ey lL;
  private final MediaController oG;
  private final ck.a oH;
  private final VideoView oI;
  private long oJ;
  private String oK;
  
  public ck(Context paramContext, ey paramey)
  {
    super(paramContext);
    lL = paramey;
    oI = new VideoView(paramContext);
    paramey = new FrameLayout.LayoutParams(-1, -1, 17);
    addView(oI, paramey);
    oG = new MediaController(paramContext);
    oH = new ck.a(this);
    oH.aX();
    oI.setOnCompletionListener(this);
    oI.setOnPreparedListener(this);
    oI.setOnErrorListener(this);
  }
  
  private static void a(ey paramey, String paramString)
  {
    a(paramey, paramString, new HashMap(1));
  }
  
  public static void a(ey paramey, String paramString1, String paramString2)
  {
    int i;
    if (paramString2 == null)
    {
      i = 1;
      if (i == 0) {
        break label60;
      }
    }
    label60:
    for (int j = 2;; j = 3)
    {
      HashMap localHashMap = new HashMap(j);
      localHashMap.put("what", paramString1);
      if (i == 0) {
        localHashMap.put("extra", paramString2);
      }
      a(paramey, "error", localHashMap);
      return;
      i = 0;
      break;
    }
  }
  
  private static void a(ey paramey, String paramString1, String paramString2, String paramString3)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put(paramString2, paramString3);
    a(paramey, paramString1, localHashMap);
  }
  
  private static void a(ey paramey, String paramString, Map<String, String> paramMap)
  {
    paramMap.put("event", paramString);
    paramey.a("onVideoEvent", paramMap);
  }
  
  public final void aV()
  {
    if (!TextUtils.isEmpty(oK))
    {
      oI.setVideoPath(oK);
      return;
    }
    a(lL, "no_src", null);
  }
  
  public final void aW()
  {
    long l = oI.getCurrentPosition();
    if (oJ != l)
    {
      float f = (float)l / 1000.0F;
      a(lL, "timeupdate", "time", String.valueOf(f));
      oJ = l;
    }
  }
  
  public final void b(MotionEvent paramMotionEvent)
  {
    oI.dispatchTouchEvent(paramMotionEvent);
  }
  
  public final void destroy()
  {
    oH.cancel();
    oI.stopPlayback();
  }
  
  public final void l(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      oI.setMediaController(oG);
      return;
    }
    oG.hide();
    oI.setMediaController(null);
  }
  
  public final void o(String paramString)
  {
    oK = paramString;
  }
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    a(lL, "ended");
  }
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    a(lL, String.valueOf(paramInt1), String.valueOf(paramInt2));
    return true;
  }
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    float f = oI.getDuration() / 1000.0F;
    a(lL, "canplaythrough", "duration", String.valueOf(f));
  }
  
  public final void pause()
  {
    oI.pause();
  }
  
  public final void play()
  {
    oI.start();
  }
  
  public final void seekTo(int paramInt)
  {
    oI.seekTo(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */