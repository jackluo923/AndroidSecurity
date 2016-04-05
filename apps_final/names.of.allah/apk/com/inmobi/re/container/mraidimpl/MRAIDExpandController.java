package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.container.CustomView;
import com.inmobi.re.container.CustomView.SwitchIconType;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.controller.JSController.ExpandProperties;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

public class MRAIDExpandController
{
  public static int EXP_CLOSE_BUTTON = 225;
  protected static final int PLACEHOLDER_ID = 437;
  protected static final int RELATIVELAYOUT_ID = 438;
  private IMWebView a;
  private Activity b;
  private Activity c;
  private IMWebView d = null;
  private IMWebView e = null;
  public JSController.ExpandProperties expandProperties;
  public int initialExpandOrientation;
  public boolean lockOrientationValueForExpand = true;
  public boolean mIsExpandUrlValid = false;
  public Display mSensorDisplay;
  public String orientationValueForExpand;
  public boolean tempExpPropsLock = true;
  public boolean useLockOrient;
  
  public MRAIDExpandController(IMWebView paramIMWebView, Activity paramActivity)
  {
    a = paramIMWebView;
    b = paramActivity;
  }
  
  private FrameLayout a(JSController.ExpandProperties paramExpandProperties)
  {
    FrameLayout localFrameLayout1 = (FrameLayout)((ViewGroup)a.getOriginalParent()).getRootView().findViewById(16908290);
    a();
    FrameLayout localFrameLayout2 = new FrameLayout(a.getContext());
    FrameLayout.LayoutParams localLayoutParams1 = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
    localFrameLayout2.setId(435);
    localFrameLayout2.setOnTouchListener(new MRAIDExpandController.b(this));
    localFrameLayout2.setPadding(x, y, 0, 0);
    FrameLayout.LayoutParams localLayoutParams2 = new FrameLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
    RelativeLayout localRelativeLayout = new RelativeLayout(a.getContext());
    localRelativeLayout.setId(438);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(WrapperFunctions.getParamFillParent(), WrapperFunctions.getParamFillParent());
    if (mIsExpandUrlValid) {
      localRelativeLayout.addView(d, localLayoutParams);
    }
    for (;;)
    {
      a(localRelativeLayout, useCustomClose);
      localFrameLayout2.addView(localRelativeLayout, localLayoutParams2);
      localFrameLayout1.addView(localFrameLayout2, localLayoutParams1);
      a.setFocusable(true);
      a.setFocusableInTouchMode(true);
      a.requestFocus();
      return localFrameLayout2;
      localRelativeLayout.addView(a, localLayoutParams);
    }
  }
  
  private void a()
  {
    try
    {
      if (a.getOriginalParent() != a.getParent())
      {
        ((ViewGroup)a.getParent()).removeView(a);
        return;
      }
      FrameLayout localFrameLayout = new FrameLayout(a.getContext());
      localFrameLayout.setId(437);
      ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(a.getWidth(), a.getHeight());
      ((ViewGroup)a.getOriginalParent()).addView(localFrameLayout, a.getOriginalIndex(), localLayoutParams);
      ((ViewGroup)a.getParent()).removeView(a);
      return;
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception in replaceByPlaceHolder ", localException);
    }
  }
  
  private void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams((int)(a.getDensity() * 50.0F), (int)(a.getDensity() * 50.0F));
    localLayoutParams.addRule(11);
    if (paramBoolean) {}
    for (CustomView localCustomView = new CustomView(a.getContext(), a.getDensity(), CustomView.SwitchIconType.CLOSE_TRANSPARENT);; localCustomView = new CustomView(a.getContext(), a.getDensity(), CustomView.SwitchIconType.CLOSE_BUTTON))
    {
      localCustomView.setId(EXP_CLOSE_BUTTON);
      paramViewGroup.addView(localCustomView, localLayoutParams);
      return;
    }
  }
  
  private void b()
  {
    if (d == null)
    {
      ((ViewGroup)a.getParent().getParent().getParent()).removeView((View)a.getParent().getParent());
      ((ViewGroup)a.getParent()).removeView(a);
      localObject = ((View)a.getOriginalParent()).findViewById(437);
      ((ViewGroup)((View)localObject).getParent()).removeView((View)localObject);
      if (a.mOriginalWebviewForExpandUrl == null) {
        break label192;
      }
    }
    label192:
    for (Object localObject = a.mOriginalWebviewForExpandUrl;; localObject = a)
    {
      ((ViewGroup)a.getOriginalParent()).addView((View)localObject, a.getOriginalIndex());
      ((IMWebView)localObject).resetLayout();
      return;
      ((ViewGroup)d.getParent().getParent().getParent()).removeView((View)d.getParent().getParent());
      ((ViewGroup)d.getParent()).removeView(d);
      break;
    }
  }
  
  public void closeExpanded()
  {
    if (a.getViewState().compareTo(IMWebView.ViewState.DEFAULT) == 0) {
      return;
    }
    if (e != null) {
      e.destroy();
    }
    if (a.mOriginalWebviewForExpandUrl != null)
    {
      a.mOriginalWebviewForExpandUrl.setState(IMWebView.ViewState.DEFAULT);
      a.mAudioVideoController.releaseAllPlayers();
      a.mOriginalWebviewForExpandUrl.mAudioVideoController.releaseAllPlayers();
      a.mOriginalWebviewForExpandUrl.mExpandController.e = null;
      a.destroy();
    }
    synchronized (a.mutex)
    {
      a.isMutexAquired.set(false);
      a.mutex.notifyAll();
      if ((!tempExpPropsLock) && (a.publisherOrientation == -1)) {
        tempExpPropsLock = true;
      }
      a.doNotFireVisibilityChanged.set(true);
      b();
      a.mAudioVideoController.releaseAllPlayers();
      a.getMRAIDUrls().clear();
      a.closeExpanded();
      a.setVisibility(0);
      mIsExpandUrlValid = false;
      if (useLockOrient) {
        b.setRequestedOrientation(initialExpandOrientation);
      }
      a.setState(IMWebView.ViewState.DEFAULT);
      a.doNotFireVisibilityChanged.set(false);
      return;
      e = null;
    }
  }
  
  public void disableEnableHardwareAccelerationForExpandWithURLView()
  {
    if (e != null) {
      e.disableHardwareAcceleration();
    }
  }
  
  /* Error */
  public void doExpand(android.os.Bundle arg1)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   4: getfield 280	com/inmobi/re/container/IMWebView:doNotFireVisibilityChanged	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   7: iconst_1
    //   8: invokevirtual 271	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   11: aload_0
    //   12: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   15: invokevirtual 60	com/inmobi/re/container/IMWebView:getOriginalParent	()Landroid/view/ViewParent;
    //   18: ifnonnull +10 -> 28
    //   21: aload_0
    //   22: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   25: invokevirtual 314	com/inmobi/re/container/IMWebView:saveOriginalViewParent	()V
    //   28: aload_0
    //   29: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   32: invokevirtual 155	com/inmobi/re/container/IMWebView:getParent	()Landroid/view/ViewParent;
    //   35: invokeinterface 211 1 0
    //   40: checkcast 75	android/widget/FrameLayout
    //   43: invokevirtual 317	android/widget/FrameLayout:getId	()I
    //   46: sipush 435
    //   49: if_icmpne +41 -> 90
    //   52: aload_0
    //   53: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   56: invokevirtual 155	com/inmobi/re/container/IMWebView:getParent	()Landroid/view/ViewParent;
    //   59: invokeinterface 211 1 0
    //   64: invokeinterface 211 1 0
    //   69: checkcast 62	android/view/ViewGroup
    //   72: aload_0
    //   73: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   76: invokevirtual 155	com/inmobi/re/container/IMWebView:getParent	()Landroid/view/ViewParent;
    //   79: invokeinterface 211 1 0
    //   84: checkcast 69	android/view/View
    //   87: invokevirtual 159	android/view/ViewGroup:removeView	(Landroid/view/View;)V
    //   90: aload_1
    //   91: ldc_w 319
    //   94: invokevirtual 325	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   97: astore_1
    //   98: aload_1
    //   99: invokestatic 331	android/webkit/URLUtil:isValidUrl	(Ljava/lang/String;)Z
    //   102: ifeq +498 -> 600
    //   105: aload_0
    //   106: iconst_1
    //   107: putfield 45	com/inmobi/re/container/mraidimpl/MRAIDExpandController:mIsExpandUrlValid	Z
    //   110: aload_0
    //   111: new 56	com/inmobi/re/container/IMWebView
    //   114: dup
    //   115: aload_0
    //   116: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   119: invokevirtual 81	com/inmobi/re/container/IMWebView:getContext	()Landroid/content/Context;
    //   122: aload_0
    //   123: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   126: getfield 335	com/inmobi/re/container/IMWebView:mListener	Lcom/inmobi/re/container/IMWebView$IMWebViewListener;
    //   129: iconst_0
    //   130: iconst_0
    //   131: invokespecial 338	com/inmobi/re/container/IMWebView:<init>	(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V
    //   134: putfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   137: aload_0
    //   138: aload_0
    //   139: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   142: putfield 49	com/inmobi/re/container/mraidimpl/MRAIDExpandController:e	Lcom/inmobi/re/container/IMWebView;
    //   145: aload_0
    //   146: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   149: aload_0
    //   150: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   153: getfield 277	com/inmobi/re/container/IMWebView:publisherOrientation	I
    //   156: putfield 277	com/inmobi/re/container/IMWebView:publisherOrientation	I
    //   159: aload_0
    //   160: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   163: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   166: aload_0
    //   167: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   170: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   173: getfield 41	com/inmobi/re/container/mraidimpl/MRAIDExpandController:tempExpPropsLock	Z
    //   176: putfield 41	com/inmobi/re/container/mraidimpl/MRAIDExpandController:tempExpPropsLock	Z
    //   179: aload_0
    //   180: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   183: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   186: new 110	com/inmobi/re/controller/JSController$ExpandProperties
    //   189: dup
    //   190: invokespecial 339	com/inmobi/re/controller/JSController$ExpandProperties:<init>	()V
    //   193: putfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   196: aload_0
    //   197: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   200: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   203: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   206: aload_0
    //   207: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   210: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   213: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   216: getfield 113	com/inmobi/re/controller/JSController$ExpandProperties:x	I
    //   219: putfield 113	com/inmobi/re/controller/JSController$ExpandProperties:x	I
    //   222: aload_0
    //   223: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   226: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   229: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   232: aload_0
    //   233: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   236: getfield 116	com/inmobi/re/controller/JSController$ExpandProperties:y	I
    //   239: putfield 116	com/inmobi/re/controller/JSController$ExpandProperties:y	I
    //   242: aload_0
    //   243: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   246: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   249: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   252: aload_0
    //   253: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   256: getfield 344	com/inmobi/re/controller/JSController$ExpandProperties:currentX	I
    //   259: putfield 344	com/inmobi/re/controller/JSController$ExpandProperties:currentX	I
    //   262: aload_0
    //   263: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   266: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   269: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   272: aload_0
    //   273: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   276: getfield 347	com/inmobi/re/controller/JSController$ExpandProperties:currentY	I
    //   279: putfield 347	com/inmobi/re/controller/JSController$ExpandProperties:currentY	I
    //   282: aload_0
    //   283: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   286: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   289: aload_0
    //   290: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   293: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   296: getfield 300	com/inmobi/re/container/mraidimpl/MRAIDExpandController:initialExpandOrientation	I
    //   299: putfield 300	com/inmobi/re/container/mraidimpl/MRAIDExpandController:initialExpandOrientation	I
    //   302: aload_0
    //   303: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   306: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   309: aload_0
    //   310: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   313: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   316: getfield 298	com/inmobi/re/container/mraidimpl/MRAIDExpandController:useLockOrient	Z
    //   319: putfield 298	com/inmobi/re/container/mraidimpl/MRAIDExpandController:useLockOrient	Z
    //   322: aload_0
    //   323: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   326: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   329: aload_0
    //   330: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   333: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   336: getfield 45	com/inmobi/re/container/mraidimpl/MRAIDExpandController:mIsExpandUrlValid	Z
    //   339: putfield 45	com/inmobi/re/container/mraidimpl/MRAIDExpandController:mIsExpandUrlValid	Z
    //   342: aload_0
    //   343: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   346: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   349: aload_0
    //   350: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   353: getfield 258	com/inmobi/re/container/IMWebView:mExpandController	Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;
    //   356: getfield 49	com/inmobi/re/container/mraidimpl/MRAIDExpandController:e	Lcom/inmobi/re/container/IMWebView;
    //   359: putfield 49	com/inmobi/re/container/mraidimpl/MRAIDExpandController:e	Lcom/inmobi/re/container/IMWebView;
    //   362: aload_0
    //   363: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   366: aload_0
    //   367: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   370: putfield 215	com/inmobi/re/container/IMWebView:mOriginalWebviewForExpandUrl	Lcom/inmobi/re/container/IMWebView;
    //   373: aload_0
    //   374: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   377: aload_0
    //   378: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   381: invokevirtual 60	com/inmobi/re/container/IMWebView:getOriginalParent	()Landroid/view/ViewParent;
    //   384: invokevirtual 351	com/inmobi/re/container/IMWebView:setOriginalParent	(Landroid/view/ViewParent;)V
    //   387: aload_0
    //   388: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   391: getfield 280	com/inmobi/re/container/IMWebView:doNotFireVisibilityChanged	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   394: iconst_0
    //   395: invokevirtual 271	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   398: aload_0
    //   399: aload_0
    //   400: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   403: invokespecial 353	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	(Lcom/inmobi/re/controller/JSController$ExpandProperties;)Landroid/widget/FrameLayout;
    //   406: astore_2
    //   407: aload_2
    //   408: iconst_0
    //   409: invokevirtual 356	android/widget/FrameLayout:setBackgroundColor	(I)V
    //   412: new 358	android/content/Intent
    //   415: dup
    //   416: aload_0
    //   417: getfield 53	com/inmobi/re/container/mraidimpl/MRAIDExpandController:b	Landroid/app/Activity;
    //   420: ldc_w 360
    //   423: invokespecial 363	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   426: astore_3
    //   427: aload_3
    //   428: ldc_w 365
    //   431: bipush 102
    //   433: invokevirtual 369	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   436: pop
    //   437: aload_2
    //   438: invokestatic 373	com/inmobi/androidsdk/IMBrowserActivity:setExpandedLayout	(Landroid/widget/FrameLayout;)V
    //   441: aload_0
    //   442: getfield 45	com/inmobi/re/container/mraidimpl/MRAIDExpandController:mIsExpandUrlValid	Z
    //   445: ifeq +224 -> 669
    //   448: aload_0
    //   449: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   452: invokestatic 377	com/inmobi/androidsdk/IMBrowserActivity:setExpandedWebview	(Lcom/inmobi/re/container/IMWebView;)V
    //   455: aload_0
    //   456: getfield 53	com/inmobi/re/container/mraidimpl/MRAIDExpandController:b	Landroid/app/Activity;
    //   459: invokestatic 381	com/inmobi/androidsdk/IMBrowserActivity:setOriginalActivity	(Landroid/app/Activity;)V
    //   462: aload_0
    //   463: getfield 53	com/inmobi/re/container/mraidimpl/MRAIDExpandController:b	Landroid/app/Activity;
    //   466: aload_3
    //   467: invokevirtual 385	android/app/Activity:startActivity	(Landroid/content/Intent;)V
    //   470: aload_0
    //   471: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   474: getfield 249	com/inmobi/re/container/IMWebView:mAudioVideoController	Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;
    //   477: aload_0
    //   478: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   481: getfield 388	com/inmobi/re/controller/JSController$ExpandProperties:width	I
    //   484: putfield 391	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoValidateWidth	I
    //   487: aload_0
    //   488: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   491: ifnull +20 -> 511
    //   494: aload_0
    //   495: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   498: getfield 249	com/inmobi/re/container/IMWebView:mAudioVideoController	Lcom/inmobi/re/container/mraidimpl/MRAIDAudioVideoController;
    //   501: aload_0
    //   502: getfield 341	com/inmobi/re/container/mraidimpl/MRAIDExpandController:expandProperties	Lcom/inmobi/re/controller/JSController$ExpandProperties;
    //   505: getfield 388	com/inmobi/re/controller/JSController$ExpandProperties:width	I
    //   508: putfield 391	com/inmobi/re/container/mraidimpl/MRAIDAudioVideoController:videoValidateWidth	I
    //   511: aload_0
    //   512: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   515: getfield 262	com/inmobi/re/container/IMWebView:mutex	Ljava/lang/Object;
    //   518: astore_2
    //   519: aload_2
    //   520: monitorenter
    //   521: aload_0
    //   522: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   525: getfield 266	com/inmobi/re/container/IMWebView:isMutexAquired	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   528: iconst_0
    //   529: invokevirtual 271	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   532: aload_0
    //   533: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   536: getfield 262	com/inmobi/re/container/IMWebView:mutex	Ljava/lang/Object;
    //   539: invokevirtual 274	java/lang/Object:notifyAll	()V
    //   542: aload_2
    //   543: monitorexit
    //   544: aload_0
    //   545: getfield 45	com/inmobi/re/container/mraidimpl/MRAIDExpandController:mIsExpandUrlValid	Z
    //   548: ifeq +11 -> 559
    //   551: aload_0
    //   552: getfield 43	com/inmobi/re/container/mraidimpl/MRAIDExpandController:d	Lcom/inmobi/re/container/IMWebView;
    //   555: aload_1
    //   556: invokevirtual 395	com/inmobi/re/container/IMWebView:loadUrl	(Ljava/lang/String;)V
    //   559: aload_0
    //   560: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   563: invokevirtual 398	com/inmobi/re/container/IMWebView:requestLayout	()V
    //   566: aload_0
    //   567: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   570: invokevirtual 401	com/inmobi/re/container/IMWebView:invalidate	()V
    //   573: aload_0
    //   574: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   577: new 403	com/inmobi/re/container/mraidimpl/MRAIDExpandController$a
    //   580: dup
    //   581: aload_0
    //   582: invokespecial 404	com/inmobi/re/container/mraidimpl/MRAIDExpandController$a:<init>	(Lcom/inmobi/re/container/mraidimpl/MRAIDExpandController;)V
    //   585: invokevirtual 408	com/inmobi/re/container/IMWebView:postInHandler	(Ljava/lang/Runnable;)V
    //   588: aload_0
    //   589: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   592: getfield 280	com/inmobi/re/container/IMWebView:doNotFireVisibilityChanged	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   595: iconst_0
    //   596: invokevirtual 271	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   599: return
    //   600: aload_0
    //   601: iconst_0
    //   602: putfield 45	com/inmobi/re/container/mraidimpl/MRAIDExpandController:mIsExpandUrlValid	Z
    //   605: goto -207 -> 398
    //   608: astore_1
    //   609: ldc -80
    //   611: ldc_w 410
    //   614: aload_1
    //   615: invokestatic 184	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   618: aload_0
    //   619: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   622: getstatic 232	com/inmobi/re/container/IMWebView$ViewState:DEFAULT	Lcom/inmobi/re/container/IMWebView$ViewState;
    //   625: invokevirtual 245	com/inmobi/re/container/IMWebView:setState	(Lcom/inmobi/re/container/IMWebView$ViewState;)V
    //   628: aload_0
    //   629: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   632: getfield 262	com/inmobi/re/container/IMWebView:mutex	Ljava/lang/Object;
    //   635: astore_1
    //   636: aload_1
    //   637: monitorenter
    //   638: aload_0
    //   639: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   642: getfield 266	com/inmobi/re/container/IMWebView:isMutexAquired	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   645: iconst_0
    //   646: invokevirtual 271	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   649: aload_0
    //   650: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   653: getfield 262	com/inmobi/re/container/IMWebView:mutex	Ljava/lang/Object;
    //   656: invokevirtual 274	java/lang/Object:notifyAll	()V
    //   659: aload_1
    //   660: monitorexit
    //   661: goto -73 -> 588
    //   664: astore_2
    //   665: aload_1
    //   666: monitorexit
    //   667: aload_2
    //   668: athrow
    //   669: aload_0
    //   670: getfield 51	com/inmobi/re/container/mraidimpl/MRAIDExpandController:a	Lcom/inmobi/re/container/IMWebView;
    //   673: invokestatic 377	com/inmobi/androidsdk/IMBrowserActivity:setExpandedWebview	(Lcom/inmobi/re/container/IMWebView;)V
    //   676: goto -221 -> 455
    //   679: astore_2
    //   680: ldc -80
    //   682: ldc_w 412
    //   685: aload_2
    //   686: invokestatic 415	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   689: goto -219 -> 470
    //   692: astore_1
    //   693: aload_2
    //   694: monitorexit
    //   695: aload_1
    //   696: athrow
    //   697: astore_2
    //   698: goto -608 -> 90
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	701	0	this	MRAIDExpandController
    //   664	4	2	localObject2	Object
    //   679	15	2	localException1	Exception
    //   697	1	2	localException2	Exception
    //   426	41	3	localIntent	android.content.Intent
    // Exception table:
    //   from	to	target	type
    //   90	398	608	java/lang/Exception
    //   398	412	608	java/lang/Exception
    //   470	511	608	java/lang/Exception
    //   511	521	608	java/lang/Exception
    //   544	559	608	java/lang/Exception
    //   559	588	608	java/lang/Exception
    //   600	605	608	java/lang/Exception
    //   680	689	608	java/lang/Exception
    //   693	697	608	java/lang/Exception
    //   638	661	664	finally
    //   412	455	679	java/lang/Exception
    //   455	470	679	java/lang/Exception
    //   669	676	679	java/lang/Exception
    //   521	544	692	finally
    //   11	28	697	java/lang/Exception
    //   28	90	697	java/lang/Exception
  }
  
  public void handleOrientationFor2Piece()
  {
    try
    {
      int i = a.getIntegerCurrentRotation();
      if (a.mInterstitialController.lockOrientationValueForInterstitial) {
        break label145;
      }
      if (a.mInterstitialController.orientationValueForInterstitial.equals("portrait"))
      {
        b.setRequestedOrientation(WrapperFunctions.getParamPortraitOrientation(i));
        return;
      }
      if (a.mInterstitialController.orientationValueForInterstitial.equals("landscape"))
      {
        b.setRequestedOrientation(WrapperFunctions.getParamLandscapeOrientation(i));
        return;
      }
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "IMWebview Handle orientation for 2 piece ", localException);
      return;
    }
    if (b.getResources().getConfiguration().orientation == 2)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE");
      b.setRequestedOrientation(0);
      return;
    }
    Log.internal("[InMobi]-[RE]-4.4.1", "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT");
    b.setRequestedOrientation(1);
    return;
    label145:
    if (b.getResources().getConfiguration().orientation == 2)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
      return;
    }
    Log.internal("[InMobi]-[RE]-4.4.1", "In allow true,  device orientation:ORIENTATION_PORTRAIT");
  }
  
  public void handleOrientationForExpand()
  {
    if (mIsExpandUrlValid)
    {
      e.lockExpandOrientation(c, lockOrientationValueForExpand, orientationValueForExpand);
      return;
    }
    a.lockExpandOrientation(c, lockOrientationValueForExpand, orientationValueForExpand);
  }
  
  public void reset()
  {
    expandProperties = new JSController.ExpandProperties();
  }
  
  public void setActivity(Activity paramActivity)
  {
    if (paramActivity != null) {
      c = paramActivity;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDExpandController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */