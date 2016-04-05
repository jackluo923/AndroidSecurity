package com.inmobi.re.container;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController;
import com.inmobi.re.container.mraidimpl.MRAIDBasic;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.container.mraidimpl.MRAIDResizeController;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.AVPlayer.playerState;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;

class IMWebView$l
  extends Handler
{
  private final WeakReference<IMWebView> a;
  private final WeakReference<MRAIDExpandController> b;
  private final WeakReference<MRAIDResizeController> c;
  private final WeakReference<MRAIDBasic> d;
  private final WeakReference<MRAIDInterstitialController> e;
  private final WeakReference<MRAIDAudioVideoController> f;
  
  public IMWebView$l(IMWebView paramIMWebView, MRAIDBasic paramMRAIDBasic, MRAIDExpandController paramMRAIDExpandController, MRAIDInterstitialController paramMRAIDInterstitialController, MRAIDAudioVideoController paramMRAIDAudioVideoController, MRAIDResizeController paramMRAIDResizeController)
  {
    a = new WeakReference(paramIMWebView);
    b = new WeakReference(paramMRAIDExpandController);
    d = new WeakReference(paramMRAIDBasic);
    e = new WeakReference(paramMRAIDInterstitialController);
    f = new WeakReference(paramMRAIDAudioVideoController);
    c = new WeakReference(paramMRAIDResizeController);
  }
  
  public void handleMessage(Message paramMessage)
  {
    IMWebView localIMWebView;
    Object localObject3;
    MRAIDResizeController localMRAIDResizeController;
    MRAIDInterstitialController localMRAIDInterstitialController;
    Object localObject2;
    for (;;)
    {
      MRAIDExpandController localMRAIDExpandController;
      MRAIDAudioVideoController localMRAIDAudioVideoController;
      try
      {
        localIMWebView = (IMWebView)a.get();
        localObject3 = (MRAIDBasic)d.get();
        localMRAIDExpandController = (MRAIDExpandController)b.get();
        localMRAIDResizeController = (MRAIDResizeController)c.get();
        localMRAIDInterstitialController = (MRAIDInterstitialController)e.get();
        localMRAIDAudioVideoController = (MRAIDAudioVideoController)f.get();
        if (localIMWebView != null)
        {
          Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView->handleMessage: msg: " + paramMessage);
          localObject2 = paramMessage.getData();
        }
        switch (what)
        {
        case 1031: 
          super.handleMessage(paramMessage);
          return;
        }
      }
      catch (Exception paramMessage)
      {
        Log.internal("[InMobi]-[RE]-4.4.1", "Webview Handle Message Exception ", paramMessage);
        return;
      }
      if (mListener != null)
      {
        mListener.onResizeClose();
        continue;
        if (mListener != null)
        {
          mListener.onExpandClose();
          continue;
          switch (IMWebView.h.a[IMWebView.b(localIMWebView).ordinal()])
          {
          case 5: 
            if (mIsInterstitialAd) {
              localMRAIDInterstitialController.resetContentsForInterstitials();
            }
            break;
          case 1: 
          case 2: 
            localMRAIDResizeController.closeResized();
            break;
          case 3: 
          case 4: 
            label356:
            localMRAIDExpandController.closeExpanded();
            mIsExpandUrlValid = false;
            continue;
            localIMWebView.hide();
            continue;
            localIMWebView.setVisibility(4);
            localIMWebView.setState(IMWebView.ViewState.HIDDEN);
            continue;
            localIMWebView.injectJavaScript("window.mraidview.fireChangeEvent({ state: 'default' });");
            localIMWebView.setVisibility(0);
            continue;
            if (IMWebView.b(localIMWebView) == IMWebView.ViewState.RESIZING)
            {
              localMRAIDResizeController.doResize((Bundle)localObject2);
              continue;
              if (IMWebView.b(localIMWebView) == IMWebView.ViewState.EXPANDING) {
                localMRAIDExpandController.doExpand((Bundle)localObject2);
              }
              IMWebView.m(localIMWebView).setWebViewClosed(false);
              continue;
              try
              {
                localMRAIDAudioVideoController.playAudioImpl((Bundle)localObject2, IMWebView.h(localIMWebView));
              }
              catch (Exception localException1)
              {
                Log.debug("[InMobi]-[RE]-4.4.1", "Play audio failed ", localException1);
              }
              continue;
              try
              {
                localException1.playVideoImpl((Bundle)localObject2, IMWebView.h(localIMWebView));
              }
              catch (Exception localException2)
              {
                Log.debug("[InMobi]-[RE]-4.4.1", "Play video failed ", localException2);
              }
              continue;
              localObject1 = (AVPlayer)audioPlayerList.get(((Bundle)localObject2).getString("aplayerref"));
              if (localObject1 != null)
              {
                ((AVPlayer)localObject1).pause();
                continue;
                localObject1 = (AVPlayer)audioPlayerList.get(((Bundle)localObject2).getString("aplayerref"));
                if (localObject1 != null)
                {
                  ((AVPlayer)localObject1).mute();
                  continue;
                  localObject1 = (AVPlayer)audioPlayerList.get(((Bundle)localObject2).getString("aplayerref"));
                  if (localObject1 != null)
                  {
                    ((AVPlayer)localObject1).unMute();
                    continue;
                    localObject1 = (AVPlayer)audioPlayerList.get(((Bundle)localObject2).getString("aplayerref"));
                    if (localObject1 != null)
                    {
                      ((AVPlayer)localObject1).setVolume(((Bundle)localObject2).getInt("vol"));
                      continue;
                      ((AVPlayer)obj).seekPlayer(((Bundle)localObject2).getInt("seekaudio") * 1000);
                    }
                  }
                }
              }
            }
            break;
          }
        }
      }
    }
    Object localObject1 = ((MRAIDAudioVideoController)localObject1).getVideoPlayer(((Bundle)localObject2).getString("pid"));
    if (localObject1 == null) {}
    for (localObject1 = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"pauseVideo\")";; localObject1 = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"pauseVideo\")")
    {
      localIMWebView.injectJavaScript((String)localObject1);
      break;
      if (((AVPlayer)localObject1).getState() != AVPlayer.playerState.PLAYING)
      {
        if (((AVPlayer)localObject1).getState() != AVPlayer.playerState.INIT) {
          continue;
        }
        if (((AVPlayer)localObject1).isPrepared()) {
          break;
        }
        ((AVPlayer)localObject1).setAutoPlay(false);
        break;
      }
      ((AVPlayer)localObject1).pause();
      return;
      ((AVPlayer)obj).releasePlayer(false);
      break;
      localObject2 = ((Bundle)localObject2).getString("pid");
      localObject3 = ((MRAIDAudioVideoController)localObject1).getVideoPlayer((String)localObject2);
      if (localObject3 == null) {}
      for (localObject1 = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"hideVideo\")";; localObject1 = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"hideVideo\")")
      {
        localIMWebView.injectJavaScript((String)localObject1);
        break;
        if (((AVPlayer)localObject3).getState() != AVPlayer.playerState.RELEASED) {
          break label808;
        }
      }
      label808:
      videoPlayerList.put(localObject2, localObject3);
      ((AVPlayer)localObject3).hide();
      return;
      localObject2 = ((Bundle)localObject2).getString("pid");
      localObject3 = ((MRAIDAudioVideoController)localObject1).getVideoPlayer((String)localObject2);
      if (localObject3 == null) {
        localObject1 = "window.mraid.broadcastEvent('error',\"Invalid property ID\", \"showVideo\")";
      }
      for (;;)
      {
        localIMWebView.injectJavaScript((String)localObject1);
        break;
        if ((((AVPlayer)localObject3).getState() != AVPlayer.playerState.RELEASED) && (((AVPlayer)localObject3).getState() != AVPlayer.playerState.HIDDEN))
        {
          localObject1 = "window.mraid.broadcastEvent('error',\"Invalid player state\", \"showVideo\")";
        }
        else
        {
          if ((videoPlayer == null) || (videoPlayer.getPropertyID().equalsIgnoreCase((String)localObject2))) {
            break label918;
          }
          localObject1 = "window.mraid.broadcastEvent('error',\"Show failed. There is already a video playing\", \"showVideo\")";
        }
      }
      label918:
      videoPlayerList.remove(localObject2);
      videoPlayer = ((AVPlayer)localObject3);
      ((AVPlayer)localObject3).show();
      return;
      ((AVPlayer)obj).mute();
      break;
      ((AVPlayer)obj).unMute();
      break;
      ((AVPlayer)obj).seekPlayer(((Bundle)localObject2).getInt("seek") * 1000);
      break;
      ((AVPlayer)obj).setVolume(((Bundle)localObject2).getInt("volume"));
      break;
      localObject1 = ((Bundle)localObject2).getString("message");
      localObject2 = ((Bundle)localObject2).getString("action");
      localIMWebView.injectJavaScript("window.mraid.broadcastEvent('error',\"" + (String)localObject1 + "\", \"" + (String)localObject2 + "\")");
      break;
      localIMWebView.setCloseButton();
      break;
      ((MRAIDAudioVideoController)localObject1).hidePlayers();
      break;
      ((MRAIDBasic)localObject3).open(((Bundle)localObject2).getString("expand_url"));
      break;
      localObject1 = ((Bundle)localObject2).getString("injectMessage");
      if (localObject1 == null) {
        break;
      }
      localIMWebView.loadUrl("javascript:" + (String)localObject1);
      break;
      localMRAIDInterstitialController.handleOrientationForInterstitial();
      break;
      if (mIsInterstitialAd) {
        break;
      }
      localMRAIDResizeController.onOrientationChange();
      break;
      if (mListener == null) {
        break;
      }
      mListener.onDismissAdScreen();
      break;
      ((MRAIDBasic)localObject3).getCurrentPosition();
      break;
      ((MRAIDBasic)localObject3).getDefaultPosition();
      break;
      localObject1 = (HashMap)paramMessage.getData().getSerializable("map");
      if (mListener == null) {
        break;
      }
      mListener.onUserInteraction((Map)localObject1);
      break;
      localObject1 = (HashMap)paramMessage.getData().getSerializable("incent_ad_map");
      if (mListener == null) {
        break;
      }
      mListener.onIncentCompleted((Map)localObject1);
      break;
      break;
      break label356;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.IMWebView.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */