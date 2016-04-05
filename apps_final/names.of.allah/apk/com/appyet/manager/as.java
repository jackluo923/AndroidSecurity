package com.appyet.manager;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnSeekCompleteListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.net.Uri;
import android.os.Handler;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.appyet.activity.MediaPlayerActivity;
import com.appyet.activity.VideoPlayerActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.data.FeedItem;
import com.appyet.receiver.CommonReceiver;
import com.appyet.wrapper.AudioFocusChangeListenerWrapper;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class as
{
  private static boolean l;
  private static Method m;
  private static Method n;
  private MediaPlayer.OnSeekCompleteListener A = new bg(this);
  private MediaPlayer.OnVideoSizeChangedListener B = new bh(this);
  private View.OnClickListener C = new au(this);
  private View.OnClickListener D = new av(this);
  private View.OnClickListener E = new aw(this);
  private View.OnClickListener F = new ax(this);
  private View.OnClickListener G = new ay(this);
  private SeekBar.OnSeekBarChangeListener H = new az(this);
  private boolean I;
  private MediaPlayer a;
  private AudioManager b;
  private Intent c;
  private ApplicationContext d;
  private FeedItem e;
  private String f;
  private String g;
  private Handler h = new Handler();
  private Handler i = new Handler();
  private MediaPlayerActivity j;
  private MediaProgressNotification k;
  private ComponentName o;
  private CommonReceiver p;
  private boolean q;
  private bj r;
  private boolean s;
  private Runnable t = new at(this);
  private Runnable u = new ba(this);
  private MediaPlayer.OnPreparedListener v = new bb(this);
  private MediaPlayer.OnBufferingUpdateListener w = new bc(this);
  private MediaPlayer.OnCompletionListener x = new bd(this);
  private MediaPlayer.OnErrorListener y = new be(this);
  private MediaPlayer.OnInfoListener z = new bf(this);
  
  static
  {
    for (;;)
    {
      try
      {
        if (m == null) {
          m = as.class.getMethod("registerMediaButtonEventReceiver", new Class[] { ComponentName.class });
        }
        if (n == null) {
          n = as.class.getMethod("unregisterMediaButtonEventReceiver", new Class[] { ComponentName.class });
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        continue;
      }
      try
      {
        AudioFocusChangeListenerWrapper.checkAvailable();
        l = true;
        return;
      }
      catch (Throwable localThrowable)
      {
        l = false;
        return;
      }
    }
  }
  
  public as(ApplicationContext paramApplicationContext)
  {
    d = paramApplicationContext;
  }
  
  public static void e() {}
  
  private void n()
  {
    if (j != null)
    {
      ProgressBar localProgressBar = (ProgressBar)j.findViewById(2131361996);
      ImageButton localImageButton = (ImageButton)j.findViewById(2131361995);
      localProgressBar.setVisibility(0);
      localImageButton.setVisibility(8);
    }
  }
  
  private void o()
  {
    if (j != null)
    {
      ProgressBar localProgressBar = (ProgressBar)j.findViewById(2131361996);
      ImageButton localImageButton = (ImageButton)j.findViewById(2131361995);
      localProgressBar.setVisibility(8);
      localImageButton.setVisibility(0);
    }
  }
  
  private void p()
  {
    String str;
    if ((k != null) && (a != null))
    {
      if (e == null) {
        break label45;
      }
      str = e.getTitle();
    }
    for (;;)
    {
      k.a(a.getCurrentPosition(), str);
      return;
      label45:
      if (f != null) {
        str = f;
      } else {
        str = "";
      }
    }
  }
  
  private void q()
  {
    ImageButton localImageButton = (ImageButton)j.findViewById(2131361995);
    if (g())
    {
      localImageButton.setImageResource(2130837738);
      return;
    }
    localImageButton.setImageResource(2130837739);
  }
  
  private void r()
  {
    Toast.makeText(d, 2131230842, 1).show();
  }
  
  private void s()
  {
    try
    {
      t();
      h.postDelayed(t, 1000L);
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  private void t()
  {
    try
    {
      if (h != null) {
        h.removeCallbacks(t);
      }
      l();
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  private void u()
  {
    try
    {
      if ((j != null) && (e != null) && (e.getTitle() != null))
      {
        ((TextView)j.findViewById(2131361990)).setText(e.getTitle());
        return;
      }
      if (f != null)
      {
        ((TextView)j.findViewById(2131361990)).setText(f);
        return;
      }
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  private boolean v()
  {
    boolean bool = false;
    try
    {
      if (l) {
        bool = new AudioFocusChangeListenerWrapper(d).requestFocus(b);
      }
      return bool;
    }
    catch (Error localError)
    {
      return false;
    }
    catch (Exception localException) {}
    return false;
  }
  
  private boolean w()
  {
    boolean bool = false;
    try
    {
      if (l) {
        bool = new AudioFocusChangeListenerWrapper(d).abandonFocus(b);
      }
      return bool;
    }
    catch (Error localError)
    {
      return false;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public final void a()
  {
    try
    {
      if (m == null) {
        return;
      }
      if ((o != null) && (b != null))
      {
        m.invoke(b, new Object[] { o });
        return;
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getCause();
      if ((localThrowable instanceof RuntimeException)) {
        throw ((RuntimeException)localThrowable);
      }
      if ((localThrowable instanceof Error)) {
        throw ((Error)localThrowable);
      }
      throw new RuntimeException(localInvocationTargetException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      d.a(localIllegalAccessException);
    }
  }
  
  public final void a(int paramInt)
  {
    if (a != null) {
      a.seekTo(a.getCurrentPosition() + paramInt * 1000);
    }
  }
  
  /* Error */
  public final void a(MediaPlayerActivity paramMediaPlayerActivity)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: putfield 209	com/appyet/manager/as:j	Lcom/appyet/activity/MediaPlayerActivity;
    //   5: aload_0
    //   6: getfield 196	com/appyet/manager/as:s	Z
    //   9: ifeq +160 -> 169
    //   12: aload_0
    //   13: invokespecial 346	com/appyet/manager/as:n	()V
    //   16: aload_0
    //   17: getfield 209	com/appyet/manager/as:j	Lcom/appyet/activity/MediaPlayerActivity;
    //   20: ldc_w 347
    //   23: invokevirtual 223	com/appyet/activity/MediaPlayerActivity:findViewById	(I)Landroid/view/View;
    //   26: checkcast 349	android/widget/SeekBar
    //   29: aload_0
    //   30: getfield 181	com/appyet/manager/as:H	Landroid/widget/SeekBar$OnSeekBarChangeListener;
    //   33: invokevirtual 353	android/widget/SeekBar:setOnSeekBarChangeListener	(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    //   36: aload_0
    //   37: getfield 209	com/appyet/manager/as:j	Lcom/appyet/activity/MediaPlayerActivity;
    //   40: ldc -30
    //   42: invokevirtual 223	com/appyet/activity/MediaPlayerActivity:findViewById	(I)Landroid/view/View;
    //   45: checkcast 228	android/widget/ImageButton
    //   48: aload_0
    //   49: getfield 156	com/appyet/manager/as:C	Landroid/view/View$OnClickListener;
    //   52: invokevirtual 357	android/widget/ImageButton:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   55: aload_0
    //   56: getfield 209	com/appyet/manager/as:j	Lcom/appyet/activity/MediaPlayerActivity;
    //   59: ldc_w 358
    //   62: invokevirtual 223	com/appyet/activity/MediaPlayerActivity:findViewById	(I)Landroid/view/View;
    //   65: checkcast 228	android/widget/ImageButton
    //   68: aload_0
    //   69: getfield 161	com/appyet/manager/as:D	Landroid/view/View$OnClickListener;
    //   72: invokevirtual 357	android/widget/ImageButton:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   75: aload_0
    //   76: getfield 209	com/appyet/manager/as:j	Lcom/appyet/activity/MediaPlayerActivity;
    //   79: ldc_w 359
    //   82: invokevirtual 223	com/appyet/activity/MediaPlayerActivity:findViewById	(I)Landroid/view/View;
    //   85: checkcast 228	android/widget/ImageButton
    //   88: aload_0
    //   89: getfield 166	com/appyet/manager/as:E	Landroid/view/View$OnClickListener;
    //   92: invokevirtual 357	android/widget/ImageButton:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   95: aload_0
    //   96: getfield 209	com/appyet/manager/as:j	Lcom/appyet/activity/MediaPlayerActivity;
    //   99: ldc_w 360
    //   102: invokevirtual 223	com/appyet/activity/MediaPlayerActivity:findViewById	(I)Landroid/view/View;
    //   105: checkcast 362	android/widget/Button
    //   108: aload_0
    //   109: getfield 176	com/appyet/manager/as:G	Landroid/view/View$OnClickListener;
    //   112: invokevirtual 363	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   115: aload_0
    //   116: getfield 209	com/appyet/manager/as:j	Lcom/appyet/activity/MediaPlayerActivity;
    //   119: ldc_w 364
    //   122: invokevirtual 223	com/appyet/activity/MediaPlayerActivity:findViewById	(I)Landroid/view/View;
    //   125: checkcast 362	android/widget/Button
    //   128: aload_0
    //   129: getfield 171	com/appyet/manager/as:F	Landroid/view/View$OnClickListener;
    //   132: invokevirtual 363	android/widget/Button:setOnClickListener	(Landroid/view/View$OnClickListener;)V
    //   135: aload_0
    //   136: invokespecial 211	com/appyet/manager/as:u	()V
    //   139: aload_0
    //   140: invokevirtual 299	com/appyet/manager/as:l	()V
    //   143: aload_0
    //   144: getfield 199	com/appyet/manager/as:a	Landroid/media/MediaPlayer;
    //   147: ifnull +17 -> 164
    //   150: aload_0
    //   151: getfield 199	com/appyet/manager/as:a	Landroid/media/MediaPlayer;
    //   154: invokevirtual 367	android/media/MediaPlayer:isPlaying	()Z
    //   157: ifeq +7 -> 164
    //   160: aload_0
    //   161: invokespecial 215	com/appyet/manager/as:s	()V
    //   164: aload_0
    //   165: invokespecial 258	com/appyet/manager/as:q	()V
    //   168: return
    //   169: aload_0
    //   170: invokespecial 235	com/appyet/manager/as:o	()V
    //   173: goto -157 -> 16
    //   176: astore_1
    //   177: aload_1
    //   178: invokestatic 293	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   181: return
    //   182: astore_1
    //   183: aload_1
    //   184: invokestatic 293	com/appyet/d/d:a	(Ljava/lang/Exception;)V
    //   187: goto -52 -> 135
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	190	0	this	as
    //   0	190	1	paramMediaPlayerActivity	MediaPlayerActivity
    // Exception table:
    //   from	to	target	type
    //   0	16	176	java/lang/Exception
    //   135	164	176	java/lang/Exception
    //   164	168	176	java/lang/Exception
    //   169	173	176	java/lang/Exception
    //   183	187	176	java/lang/Exception
    //   16	135	182	java/lang/Exception
  }
  
  public final void a(FeedItem paramFeedItem)
  {
    if (paramFeedItem == null) {
      return;
    }
    try
    {
      d();
      e = paramFeedItem;
      g = null;
      f = null;
      return;
    }
    catch (Exception paramFeedItem)
    {
      d.a(paramFeedItem);
      r();
    }
  }
  
  public final void a(File paramFile)
  {
    if (paramFile == null) {
      return;
    }
    for (;;)
    {
      try
      {
        d();
        g = paramFile.getAbsolutePath();
        localObject2 = paramFile.getName();
      }
      catch (Exception paramFile)
      {
        Object localObject2;
        int i1;
        Object localObject1;
        d.a(paramFile);
        r();
        return;
      }
      try
      {
        i1 = ((String)localObject2).indexOf('_');
        localObject1 = localObject2;
        if (i1 != -1) {
          localObject1 = ((String)localObject2).substring(i1 + 1);
        }
      }
      catch (Exception localException)
      {
        d.a(localException);
        String str = paramFile.getName();
      }
    }
    localObject2 = localObject1;
    if (((String)localObject1).length() == 0) {
      localObject2 = paramFile.getName();
    }
    f = ((String)localObject2);
    e = null;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return;
    }
    try
    {
      d();
      g = paramString1;
      f = paramString2;
      e = null;
      return;
    }
    catch (Exception paramString1)
    {
      d.a(paramString1);
      r();
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    try
    {
      if (e == null) {
        break label458;
      }
      if (e.getEnclosureType().toLowerCase().contains("video"))
      {
        localObject = new Intent(d, VideoPlayerActivity.class);
        ((Intent)localObject).setDataAndType(Uri.parse(e.getEnclosureLink().toString()), e.getEnclosureType());
        d.startActivity((Intent)localObject);
        return;
      }
      d();
      u();
      a = new MediaPlayer();
      b = ((AudioManager)d.getSystemService("audio"));
      o = new ComponentName(d.getPackageName(), as.class.getName());
      v();
      a();
      p = new CommonReceiver();
      d.registerReceiver(p, new IntentFilter("android.intent.action.HEADSET_PLUG"));
      Object localObject = d.l.a(e.getTitle(), e.getEnclosureLink(), e.getEnclosureType());
      if ((!paramBoolean) && (d.l.c((String)localObject)))
      {
        a.setDataSource(d.l.a((String)localObject));
        a.setOnPreparedListener(v);
        a.setOnBufferingUpdateListener(w);
        a.setOnCompletionListener(x);
        a.setOnErrorListener(y);
        a.setOnInfoListener(z);
        a.setOnSeekCompleteListener(A);
        a.setWakeMode(d, 1);
        a.prepareAsync();
        n();
        s = true;
        return;
      }
    }
    catch (Exception localException)
    {
      d.a(localException);
      r();
      return;
    }
    a.setDataSource(e.getEnclosureLink());
    a.setOnPreparedListener(v);
    a.setOnBufferingUpdateListener(w);
    a.setOnCompletionListener(x);
    a.setOnErrorListener(y);
    a.setOnInfoListener(z);
    a.setOnSeekCompleteListener(A);
    a.setWakeMode(d, 1);
    a.prepareAsync();
    n();
    s = true;
    return;
    label458:
    if (g != null)
    {
      d();
      u();
      a = new MediaPlayer();
      b = ((AudioManager)d.getSystemService("audio"));
      o = new ComponentName(d.getPackageName(), as.class.getName());
      v();
      a();
      p = new CommonReceiver();
      d.registerReceiver(p, new IntentFilter("android.intent.action.HEADSET_PLUG"));
      a.setDataSource(g);
      a.setOnPreparedListener(v);
      a.setOnBufferingUpdateListener(w);
      a.setOnCompletionListener(x);
      a.setOnErrorListener(y);
      a.setOnInfoListener(z);
      a.setOnSeekCompleteListener(A);
      a.setWakeMode(d, 1);
      a.prepareAsync();
      n();
      s = true;
    }
  }
  
  public final void b()
  {
    try
    {
      if (n == null) {
        return;
      }
      if ((o != null) && (b != null))
      {
        n.invoke(b, new Object[] { o });
        return;
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getCause();
      if ((localThrowable instanceof RuntimeException)) {
        throw ((RuntimeException)localThrowable);
      }
      if ((localThrowable instanceof Error)) {
        throw ((Error)localThrowable);
      }
      throw new RuntimeException(localInvocationTargetException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      d.a(localIllegalAccessException);
    }
  }
  
  public final MediaProgressNotification c()
  {
    return k;
  }
  
  public final void d()
  {
    try
    {
      s = false;
      I = false;
      i();
      t();
      if (a != null)
      {
        l();
        a.release();
        a = null;
      }
      if (b != null)
      {
        w();
        b = null;
      }
      if (p != null)
      {
        d.unregisterReceiver(p);
        p = null;
      }
      if (k != null)
      {
        k.b();
        k = null;
      }
      if (j != null) {
        ((ImageButton)j.findViewById(2131361995)).setImageResource(2130837739);
      }
      l();
      if (c != null)
      {
        d.stopService(c);
        c = null;
      }
      o();
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  public final FeedItem f()
  {
    return e;
  }
  
  public final boolean g()
  {
    return (a != null) && (a.isPlaying());
  }
  
  public final void h()
  {
    try
    {
      if ((a != null) && (a.isPlaying())) {
        a.pause();
      }
      I = true;
      i();
      p();
      if (j != null) {
        ((ImageButton)j.findViewById(2131361995)).setImageResource(2130837739);
      }
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
      r();
    }
  }
  
  public final void i()
  {
    try
    {
      if ((a != null) && (e != null))
      {
        int i1 = a.getCurrentPosition();
        new bi(this, i1).a(new Void[0]);
        e.setEnclosureCurrentPosition(Integer.valueOf(i1));
      }
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  public final void j()
  {
    try
    {
      if ((a != null) && (I))
      {
        if (a.getCurrentPosition() >= a.getDuration())
        {
          a.seekTo(0);
          i();
        }
        a.start();
      }
      I = false;
      p();
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
      r();
    }
  }
  
  public final void k()
  {
    try
    {
      j = null;
      t();
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  public final void l()
  {
    try
    {
      if (j != null)
      {
        if (r == null) {
          r = new bj();
        }
        r.a(j, a, e);
        j.runOnUiThread(r);
      }
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  public final boolean m()
  {
    return I;
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */