package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup.LayoutParams;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.JSController.Dimensions;
import com.inmobi.re.controller.JSController.ExpandProperties;
import com.inmobi.re.controller.JSController.PlayerProperties;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.AVPlayer.playerState;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class MRAIDAudioVideoController
{
  private IMWebView a;
  public Hashtable<String, AVPlayer> audioPlayerList = new Hashtable();
  public AVPlayer audioplayer;
  public AVPlayer videoPlayer;
  public Hashtable<String, AVPlayer> videoPlayerList = new Hashtable();
  public int videoValidateWidth;
  
  public MRAIDAudioVideoController(IMWebView paramIMWebView)
  {
    a = paramIMWebView;
  }
  
  private AVPlayer a(String paramString)
  {
    if (!videoPlayerList.isEmpty()) {
      return (AVPlayer)videoPlayerList.get(paramString);
    }
    return null;
  }
  
  private void a(AVPlayer paramAVPlayer, JSController.Dimensions paramDimensions)
  {
    int i = (int)(-99999.0F * a.getDensity());
    FrameLayout.LayoutParams localLayoutParams1;
    FrameLayout.LayoutParams localLayoutParams2;
    if (paramAVPlayer.isInlineVideo())
    {
      localLayoutParams1 = new FrameLayout.LayoutParams(width, height);
      localLayoutParams2 = (FrameLayout.LayoutParams)paramAVPlayer.getLayoutParams();
      if ((x != i) || (y != i)) {
        break label92;
      }
      leftMargin = leftMargin;
    }
    for (topMargin = topMargin;; topMargin = y)
    {
      gravity = 3;
      paramAVPlayer.setLayoutParams(localLayoutParams1);
      return;
      label92:
      leftMargin = x;
    }
  }
  
  private boolean a(String paramString1, String paramString2, Activity paramActivity)
  {
    if (!audioPlayerList.isEmpty())
    {
      audioplayer = ((AVPlayer)audioPlayerList.get(paramString1));
      if (audioplayer == null)
      {
        if (audioPlayerList.size() > 4)
        {
          a.raiseError("Too many audio players", "playAudio");
          return false;
        }
        audioplayer = new AVPlayer(paramActivity, a);
      }
    }
    for (;;)
    {
      return true;
      if ((audioplayer.getMediaURL().equals(paramString2)) || (paramString2.length() == 0))
      {
        if (audioplayer.getState() == AVPlayer.playerState.PLAYING) {
          return false;
        }
        if (audioplayer.getState() == AVPlayer.playerState.INIT)
        {
          if (audioplayer.isPrepared()) {
            audioplayer.start();
          }
          for (;;)
          {
            return false;
            audioplayer.setAutoPlay(true);
          }
        }
        if (audioplayer.getState() == AVPlayer.playerState.PAUSED)
        {
          audioplayer.start();
          return false;
        }
        paramString2 = audioplayer.getProperties();
        String str = audioplayer.getMediaURL();
        audioplayer.releasePlayer(false);
        audioPlayerList.remove(paramString1);
        audioplayer = new AVPlayer(paramActivity, a);
        audioplayer.setPlayData(paramString2, str);
      }
      else
      {
        audioplayer.releasePlayer(false);
        audioPlayerList.remove(paramString1);
        audioplayer = new AVPlayer(paramActivity, a);
        continue;
        audioplayer = new AVPlayer(paramActivity, a);
      }
    }
  }
  
  private boolean a(String paramString1, String paramString2, Activity paramActivity, JSController.Dimensions paramDimensions)
  {
    if ((videoPlayer == null) || (!paramString1.equalsIgnoreCase(videoPlayer.getPropertyID()))) {
      return b(paramString1, paramString2, paramActivity);
    }
    AVPlayer.playerState localplayerState = videoPlayer.getState();
    if (paramString1.equalsIgnoreCase(videoPlayer.getPropertyID()))
    {
      paramString1 = videoPlayer.getMediaURL();
      if ((paramString2.length() == 0) || (paramString2.equalsIgnoreCase(paramString1)))
      {
        switch (MRAIDAudioVideoController.d.a[localplayerState.ordinal()])
        {
        default: 
          return false;
        case 1: 
          videoPlayer.start();
        }
        for (;;)
        {
          a(videoPlayer, paramDimensions);
          return false;
          a(videoPlayer, paramDimensions);
          return false;
          if (!videoPlayer.getProperties().doLoop()) {
            videoPlayer.start();
          }
          a(videoPlayer, paramDimensions);
          return false;
          if (videoPlayer.isPrepared()) {
            videoPlayer.start();
          } else {
            videoPlayer.setAutoPlay(true);
          }
        }
      }
      if (!URLUtil.isValidUrl(paramString2))
      {
        a.raiseError("Request must specify a valid URL", "playVideo");
        return false;
      }
      videoPlayer.releasePlayer(false);
      videoPlayer = new AVPlayer(paramActivity, a);
    }
    return true;
  }
  
  private boolean a(Hashtable<String, AVPlayer> paramHashtable, AVPlayer paramAVPlayer)
  {
    paramHashtable = paramHashtable.entrySet().iterator();
    Map.Entry localEntry;
    do
    {
      if (!paramHashtable.hasNext()) {
        break;
      }
      localEntry = (Map.Entry)paramHashtable.next();
    } while (localEntry.getValue() != paramAVPlayer);
    for (paramHashtable = (String)localEntry.getKey();; paramHashtable = null)
    {
      if (paramHashtable != null)
      {
        audioPlayerList.remove(paramHashtable);
        return true;
      }
      return false;
    }
  }
  
  private boolean b(String paramString1, String paramString2, Activity paramActivity)
  {
    if (((paramString2.length() != 0) && (!URLUtil.isValidUrl(paramString2))) || ((paramString2.length() == 0) && (!videoPlayerList.containsKey(paramString1))))
    {
      a.raiseError("Request must specify a valid URL", "playVideo");
      return false;
    }
    if (videoPlayer != null)
    {
      videoPlayer.hide();
      videoPlayerList.put(videoPlayer.getPropertyID(), videoPlayer);
    }
    AVPlayer localAVPlayer = a(paramString1);
    if (localAVPlayer == null) {}
    for (videoPlayer = new AVPlayer(paramActivity, a);; videoPlayer = localAVPlayer)
    {
      if (paramString2.length() == 0)
      {
        videoPlayer.setPlayData(localAVPlayer.getProperties(), localAVPlayer.getMediaURL());
        videoPlayer.setPlayDimensions(localAVPlayer.getPlayDimensions());
      }
      videoPlayerList.remove(paramString1);
      return true;
    }
  }
  
  /* Error */
  public AVPlayer getCurrentAudioPlayer(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: getfield 92	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioplayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   8: ifnull +26 -> 34
    //   11: aload_0
    //   12: getfield 92	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioplayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   15: invokevirtual 166	com/inmobi/re/controller/util/AVPlayer:getPropertyID	()Ljava/lang/String;
    //   18: aload_1
    //   19: invokevirtual 170	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   22: ifeq +12 -> 34
    //   25: aload_0
    //   26: getfield 92	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioplayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   29: astore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_2
    //   33: areturn
    //   34: aload_3
    //   35: astore_2
    //   36: aload_0
    //   37: getfield 27	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioPlayerList	Ljava/util/Hashtable;
    //   40: invokevirtual 36	java/util/Hashtable:isEmpty	()Z
    //   43: ifne -13 -> 30
    //   46: aload_3
    //   47: astore_2
    //   48: aload_0
    //   49: getfield 27	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioPlayerList	Ljava/util/Hashtable;
    //   52: aload_1
    //   53: invokevirtual 230	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   56: ifeq -26 -> 30
    //   59: aload_0
    //   60: getfield 27	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioPlayerList	Ljava/util/Hashtable;
    //   63: aload_1
    //   64: invokevirtual 40	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   67: checkcast 42	com/inmobi/re/controller/util/AVPlayer
    //   70: astore_2
    //   71: goto -41 -> 30
    //   74: astore_1
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	MRAIDAudioVideoController
    //   0	79	1	paramString	String
    //   29	42	2	localObject1	Object
    //   3	44	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	30	74	finally
    //   36	46	74	finally
    //   48	71	74	finally
  }
  
  /* Error */
  public AVPlayer getVideoPlayer(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_0
    //   5: getfield 163	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   8: ifnull +26 -> 34
    //   11: aload_0
    //   12: getfield 163	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   15: invokevirtual 166	com/inmobi/re/controller/util/AVPlayer:getPropertyID	()Ljava/lang/String;
    //   18: aload_1
    //   19: invokevirtual 170	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   22: ifeq +12 -> 34
    //   25: aload_0
    //   26: getfield 163	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   29: astore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_2
    //   33: areturn
    //   34: aload_3
    //   35: astore_2
    //   36: aload_0
    //   37: getfield 25	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayerList	Ljava/util/Hashtable;
    //   40: invokevirtual 36	java/util/Hashtable:isEmpty	()Z
    //   43: ifne -13 -> 30
    //   46: aload_3
    //   47: astore_2
    //   48: aload_0
    //   49: getfield 25	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayerList	Ljava/util/Hashtable;
    //   52: aload_1
    //   53: invokevirtual 230	java/util/Hashtable:containsKey	(Ljava/lang/Object;)Z
    //   56: ifeq -26 -> 30
    //   59: aload_0
    //   60: getfield 25	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayerList	Ljava/util/Hashtable;
    //   63: aload_1
    //   64: invokevirtual 40	java/util/Hashtable:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   67: checkcast 42	com/inmobi/re/controller/util/AVPlayer
    //   70: astore_2
    //   71: goto -41 -> 30
    //   74: astore_1
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	MRAIDAudioVideoController
    //   0	79	1	paramString	String
    //   29	42	2	localObject1	Object
    //   3	44	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	30	74	finally
    //   36	46	74	finally
    //   48	71	74	finally
  }
  
  public void hidePlayers()
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "MRAIDAudioVideoController: hiding all players");
    if ((videoPlayer != null) && (videoPlayer.getState() != AVPlayer.playerState.RELEASED))
    {
      videoPlayerList.put(videoPlayer.getPropertyID(), videoPlayer);
      videoPlayer.hide();
    }
    Iterator localIterator = audioPlayerList.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      AVPlayer localAVPlayer = (AVPlayer)localEntry.getValue();
      switch (MRAIDAudioVideoController.d.a[localAVPlayer.getState().ordinal()])
      {
      case 3: 
      default: 
        break;
      case 2: 
        localAVPlayer.pause();
        break;
      case 4: 
        localAVPlayer.releasePlayer(false);
        audioPlayerList.remove(localEntry.getKey());
      }
    }
  }
  
  public void mediaPlayerReleased(AVPlayer paramAVPlayer)
  {
    if (paramAVPlayer == audioplayer) {
      audioplayer = null;
    }
    if (paramAVPlayer == videoPlayer) {
      videoPlayer = null;
    }
    if (a(audioPlayerList, paramAVPlayer)) {
      return;
    }
    a(videoPlayerList, paramAVPlayer);
  }
  
  public void playAudioImpl(Bundle paramBundle, Activity paramActivity)
  {
    JSController.PlayerProperties localPlayerProperties = (JSController.PlayerProperties)paramBundle.getParcelable("player_properties");
    Object localObject = paramBundle.getString("expand_url");
    paramBundle = (Bundle)localObject;
    if (localObject == null) {
      paramBundle = "";
    }
    if (!a(id, paramBundle, paramActivity)) {}
    do
    {
      return;
      if (((paramBundle.length() != 0) && (!URLUtil.isValidUrl(paramBundle))) || ((paramBundle.length() == 0) && (!audioPlayerList.containsKey(id))))
      {
        a.raiseError("Request must specify a valid URL", "playAudio");
        return;
      }
    } while (audioplayer == null);
    if (paramBundle.length() != 0) {
      audioplayer.setPlayData(localPlayerProperties, paramBundle);
    }
    audioPlayerList.put(id, audioplayer);
    paramBundle = (FrameLayout)paramActivity.findViewById(16908290);
    if (localPlayerProperties.isFullScreen())
    {
      localObject = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
      ((RelativeLayout.LayoutParams)localObject).addRule(13);
      audioplayer.setLayoutParams((ViewGroup.LayoutParams)localObject);
      paramActivity = new RelativeLayout(paramActivity);
      paramActivity.setOnTouchListener(new MRAIDAudioVideoController.g(this));
      paramActivity.setBackgroundColor(-16777216);
      paramBundle.addView(paramActivity, new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
      paramActivity.addView(audioplayer);
      audioplayer.setBackGroundLayout(paramActivity);
      audioplayer.requestFocus();
      audioplayer.setOnKeyListener(new MRAIDAudioVideoController.c(this));
    }
    for (;;)
    {
      audioplayer.setListener(new MRAIDAudioVideoController.a(this, localPlayerProperties));
      audioplayer.play();
      return;
      audioplayer.setLayoutParams(new ViewGroup.LayoutParams(1, 1));
      paramBundle.addView(audioplayer);
    }
  }
  
  public void playVideoImpl(Bundle paramBundle, Activity paramActivity)
  {
    Object localObject1 = (JSController.PlayerProperties)paramBundle.getParcelable("player_properties");
    Object localObject2 = (JSController.Dimensions)paramBundle.getParcelable("expand_dimensions");
    Log.debug("[InMobi]-[RE]-4.4.1", "Final dimensions: " + localObject2);
    paramBundle = paramBundle.getString("expand_url");
    if (!a(id, paramBundle, paramActivity, (JSController.Dimensions)localObject2)) {
      return;
    }
    a.setBusy(true);
    if (paramBundle.length() == 0)
    {
      localObject1 = videoPlayer.getProperties();
      paramBundle = videoPlayer.getPlayDimensions();
      videoPlayer.getMediaURL();
    }
    while (videoPlayer.getState() == AVPlayer.playerState.HIDDEN)
    {
      videoPlayer.pseudoPause = true;
      videoPlayer.show();
      return;
      videoPlayer.setPlayData((JSController.PlayerProperties)localObject1, paramBundle);
      videoPlayer.setPlayDimensions((JSController.Dimensions)localObject2);
      paramBundle = (Bundle)localObject2;
    }
    localObject2 = (FrameLayout)paramActivity.findViewById(16908290);
    if (((JSController.PlayerProperties)localObject1).isFullScreen())
    {
      paramBundle = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
      paramBundle.addRule(13);
      videoPlayer.setLayoutParams(paramBundle);
      paramBundle = new RelativeLayout(paramActivity);
      paramBundle.setOnTouchListener(new MRAIDAudioVideoController.b(this));
      paramBundle.setBackgroundColor(-16777216);
      ((FrameLayout)localObject2).addView(paramBundle, new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
      paramBundle.addView(videoPlayer);
      videoPlayer.setBackGroundLayout(paramBundle);
      videoPlayer.requestFocus();
      videoPlayer.setOnKeyListener(new MRAIDAudioVideoController.e(this));
      videoPlayer.setListener(new MRAIDAudioVideoController.f(this));
      videoPlayer.play();
      return;
    }
    localObject1 = new FrameLayout.LayoutParams(width, height);
    paramActivity = new FrameLayout(paramActivity);
    if (a.mExpandController.expandProperties == null) {
      leftMargin = x;
    }
    for (topMargin = y;; topMargin = (y + a.mExpandController.expandProperties.currentY))
    {
      gravity = 3;
      videoPlayer.setLayoutParams((ViewGroup.LayoutParams)localObject1);
      ((FrameLayout)localObject2).addView(paramActivity, new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent()));
      videoPlayer.setBackGroundLayout(paramActivity);
      paramActivity.addView(videoPlayer);
      break;
      leftMargin = (x + a.mExpandController.expandProperties.currentX);
    }
  }
  
  /* Error */
  public void releaseAllPlayers()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 163	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   4: ifnull +22 -> 26
    //   7: aload_0
    //   8: getfield 25	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayerList	Ljava/util/Hashtable;
    //   11: aload_0
    //   12: getfield 163	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   15: invokevirtual 166	com/inmobi/re/controller/util/AVPlayer:getPropertyID	()Ljava/lang/String;
    //   18: aload_0
    //   19: getfield 163	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   22: invokevirtual 237	java/util/Hashtable:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   25: pop
    //   26: aload_0
    //   27: getfield 25	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayerList	Ljava/util/Hashtable;
    //   30: invokevirtual 439	java/util/Hashtable:values	()Ljava/util/Collection;
    //   33: invokeinterface 445 1 0
    //   38: astore_1
    //   39: aload_1
    //   40: arraylength
    //   41: istore 4
    //   43: iconst_0
    //   44: istore_3
    //   45: iload_3
    //   46: iload 4
    //   48: if_icmpge +46 -> 94
    //   51: aload_1
    //   52: iload_3
    //   53: aaload
    //   54: astore_2
    //   55: aload_2
    //   56: checkcast 42	com/inmobi/re/controller/util/AVPlayer
    //   59: getstatic 448	com/inmobi/re/container/IMWebView:userInitiatedClose	Z
    //   62: invokevirtual 153	com/inmobi/re/controller/util/AVPlayer:releasePlayer	(Z)V
    //   65: iload_3
    //   66: iconst_1
    //   67: iadd
    //   68: istore_3
    //   69: goto -24 -> 45
    //   72: astore_2
    //   73: ldc -4
    //   75: ldc_w 450
    //   78: invokestatic 453	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   81: goto -16 -> 65
    //   84: astore_1
    //   85: ldc -4
    //   87: ldc_w 455
    //   90: aload_1
    //   91: invokestatic 458	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   94: aload_0
    //   95: getfield 25	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayerList	Ljava/util/Hashtable;
    //   98: invokevirtual 461	java/util/Hashtable:clear	()V
    //   101: aload_0
    //   102: aconst_null
    //   103: putfield 163	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoPlayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   106: aload_0
    //   107: getfield 27	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioPlayerList	Ljava/util/Hashtable;
    //   110: invokevirtual 439	java/util/Hashtable:values	()Ljava/util/Collection;
    //   113: invokeinterface 445 1 0
    //   118: astore_1
    //   119: aload_1
    //   120: arraylength
    //   121: istore 4
    //   123: iconst_0
    //   124: istore_3
    //   125: iload_3
    //   126: iload 4
    //   128: if_icmpge +46 -> 174
    //   131: aload_1
    //   132: iload_3
    //   133: aaload
    //   134: astore_2
    //   135: aload_2
    //   136: checkcast 42	com/inmobi/re/controller/util/AVPlayer
    //   139: getstatic 448	com/inmobi/re/container/IMWebView:userInitiatedClose	Z
    //   142: invokevirtual 153	com/inmobi/re/controller/util/AVPlayer:releasePlayer	(Z)V
    //   145: iload_3
    //   146: iconst_1
    //   147: iadd
    //   148: istore_3
    //   149: goto -24 -> 125
    //   152: astore_2
    //   153: ldc -4
    //   155: ldc_w 450
    //   158: invokestatic 453	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   161: goto -16 -> 145
    //   164: astore_1
    //   165: ldc -4
    //   167: ldc_w 455
    //   170: aload_1
    //   171: invokestatic 458	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   174: iconst_0
    //   175: putstatic 448	com/inmobi/re/container/IMWebView:userInitiatedClose	Z
    //   178: aload_0
    //   179: getfield 27	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioPlayerList	Ljava/util/Hashtable;
    //   182: invokevirtual 461	java/util/Hashtable:clear	()V
    //   185: aload_0
    //   186: aconst_null
    //   187: putfield 92	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:audioplayer	Lcom/inmobi/re/controller/util/AVPlayer;
    //   190: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	191	0	this	MRAIDAudioVideoController
    //   38	14	1	arrayOfObject1	Object[]
    //   84	7	1	localException1	Exception
    //   118	14	1	arrayOfObject2	Object[]
    //   164	7	1	localException2	Exception
    //   54	2	2	localObject1	Object
    //   72	1	2	localException3	Exception
    //   134	2	2	localObject2	Object
    //   152	1	2	localException4	Exception
    //   44	105	3	i	int
    //   41	88	4	j	int
    // Exception table:
    //   from	to	target	type
    //   55	65	72	java/lang/Exception
    //   26	43	84	java/lang/Exception
    //   73	81	84	java/lang/Exception
    //   135	145	152	java/lang/Exception
    //   106	123	164	java/lang/Exception
    //   153	161	164	java/lang/Exception
  }
  
  public void validateVideoDimensions(JSController.Dimensions paramDimensions)
  {
    width = ((int)(width * a.getDensity()));
    height = ((int)(height * a.getDensity()));
    x = ((int)(x * a.getDensity()));
    y = ((int)(y * a.getDensity()));
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */