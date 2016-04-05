package com.inmobi.re.controller;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import com.inmobi.commons.internal.ApiStatCollector;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.commons.metric.Logger;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import org.json.JSONException;
import org.json.JSONObject;

public class JSDisplayController
  extends JSController
{
  private WindowManager a;
  private float b;
  private JSController.OrientationProperties c = null;
  private JSController.ResizeProperties d = null;
  
  public JSDisplayController(IMWebView paramIMWebView, Context paramContext)
  {
    super(paramIMWebView, paramContext);
    paramIMWebView = new DisplayMetrics();
    a = ((WindowManager)paramContext.getSystemService("window"));
    a.getDefaultDisplay().getMetrics(paramIMWebView);
    b = mContext).getResources().getDisplayMetrics().density;
  }
  
  private JSController.ExpandProperties a(JSController.ExpandProperties paramExpandProperties)
  {
    Object localObject = a.getDefaultDisplay();
    int k = mContext).getResources().getDisplayMetrics().widthPixels;
    int m = mContext).getResources().getDisplayMetrics().heightPixels;
    View localView = ((Activity)mContext).getWindow().findViewById(16908290);
    topStuff = localView.getTop();
    bottomStuff = (m - localView.getBottom());
    int i = InternalSDKUtil.getDisplayRotation((Display)localObject);
    int j = i;
    if (InternalSDKUtil.isDefOrientationLandscape(i, k, m))
    {
      j = i + 1;
      i = j;
      if (j > 3) {
        i = 0;
      }
      j = i;
      if (InternalSDKUtil.isTablet(mContext))
      {
        imWebView.isTablet = true;
        j = i;
      }
    }
    Log.debug("[InMobi]-[RE]-4.4.1", "Device current rotation: " + j);
    Log.debug("[InMobi]-[RE]-4.4.1", "Density of device: " + b);
    width = ((int)(width * b));
    height = ((int)(height * b));
    x = ((int)(x * b));
    y = ((int)(y * b));
    currentX = 0;
    currentY = 0;
    imWebView.publisherOrientation = ((Activity)imWebView.getContext()).getRequestedOrientation();
    if ((j == 0) || (j == 2))
    {
      rotationAtExpand = "portrait";
      if ((height <= 0) || (width <= 0))
      {
        height = m;
        width = k;
        zeroWidthHeight = true;
      }
      if ((j != 0) && (j != 2)) {
        break label742;
      }
      portraitWidthRequested = width;
    }
    for (portraitHeightRequested = height;; portraitHeightRequested = width)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Device Width: " + k + " Device height: " + m);
      i = m - topStuff;
      if (width > k) {
        width = k;
      }
      if (height > i) {
        height = i;
      }
      localObject = new int[2];
      imWebView.getLocationOnScreen((int[])localObject);
      if (x < 0) {
        x = localObject[0];
      }
      if (y < 0)
      {
        y = (localObject[1] - topStuff);
        Log.debug("[InMobi]-[RE]-4.4.1", "topStuff: " + topStuff + " ,bottomStuff: " + bottomStuff);
      }
      Log.debug("[InMobi]-[RE]-4.4.1", "loc 0: " + localObject[0] + " loc 1: " + localObject[1]);
      j = k - (x + width);
      if (j < 0)
      {
        x = (j + x);
        if (x < 0)
        {
          width += x;
          x = 0;
        }
      }
      i -= y + height;
      if (i < 0)
      {
        y = (i + y);
        if (y < 0)
        {
          height += y;
          y = 0;
        }
      }
      currentX = x;
      currentY = y;
      Log.debug("[InMobi]-[RE]-4.4.1", "final expanded width after density : " + width + "final expanded height after density " + height + "portrait width requested :" + portraitWidthRequested + "portrait height requested :" + portraitHeightRequested);
      return paramExpandProperties;
      rotationAtExpand = "landscape";
      break;
      label742:
      portraitWidthRequested = height;
    }
  }
  
  private void a(JSController.ExpandProperties paramExpandProperties1, JSController.ExpandProperties paramExpandProperties2)
  {
    width = width;
    height = height;
    x = x;
    y = y;
    actualWidthRequested = actualWidthRequested;
    actualHeightRequested = actualHeightRequested;
    lockOrientation = lockOrientation;
    isModal = isModal;
    useCustomClose = useCustomClose;
    orientation = orientation;
    topStuff = topStuff;
    bottomStuff = bottomStuff;
    portraitWidthRequested = portraitWidthRequested;
    portraitHeightRequested = portraitHeightRequested;
    zeroWidthHeight = zeroWidthHeight;
    rotationAtExpand = rotationAtExpand;
    currentX = currentX;
    currentY = currentY;
  }
  
  private void a(JSController.ResizeProperties paramResizeProperties1, JSController.ResizeProperties paramResizeProperties2)
  {
    width = width;
    height = height;
    allowOffscreen = allowOffscreen;
    customClosePosition = customClosePosition;
    offsetX = offsetX;
    offsetY = offsetY;
  }
  
  @JavascriptInterface
  public void close()
  {
    Activity localActivity = null;
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(13), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> close");
    if (imWebView.mOriginalWebviewForExpandUrl != null) {
      imWebView.mOriginalWebviewForExpandUrl.close();
    }
    if (imWebView.isExpanded()) {
      localActivity = imWebView.getExpandedActivity();
    }
    imWebView.close();
    if (localActivity != null) {
      localActivity.finish();
    }
  }
  
  @JavascriptInterface
  public void expand(String paramString)
  {
    boolean bool = false;
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(11), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> expand: url: " + paramString);
    try
    {
      if ((imWebView.getStateVariable() == IMWebView.ViewState.EXPANDED) || (imWebView.getStateVariable() == IMWebView.ViewState.EXPANDING))
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> Already expanded state");
        return;
      }
      if (imWebView.getStateVariable() == IMWebView.ViewState.HIDDEN)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> Expand cannot be called in hidden state. Doing nothing.");
        return;
      }
    }
    catch (Exception paramString)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception while expanding the ad. ", paramString);
      return;
    }
    imWebView.mExpandController.useLockOrient = false;
    if ((imWebView.getStateVariable() != IMWebView.ViewState.DEFAULT) && (imWebView.getStateVariable() != IMWebView.ViewState.RESIZED) && (imWebView.getStateVariable() != IMWebView.ViewState.RESIZING))
    {
      imWebView.raiseError("Current state is not default", "expand");
      return;
    }
    if ((imWebView.getStateVariable() == IMWebView.ViewState.DEFAULT) && (imWebView.mIsInterstitialAd))
    {
      imWebView.raiseError("Expand cannot be called on interstitial ad", "expand");
      return;
    }
    a(temporaryexpProps, expProps);
    Object localObject = temporaryexpProps;
    temporaryexpProps.height = 0;
    width = 0;
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> At the time of expand the properties are: Expandable width: " + temporaryexpProps.width + " Expandable height: " + temporaryexpProps.height + " Expandable orientation: " + temporaryexpProps.orientation + " Expandable lock orientation: " + temporaryexpProps.lockOrientation + " Expandable Modality: " + temporaryexpProps.isModal + " Expandable Use custom close " + temporaryexpProps.useCustomClose);
    expProps = a(expProps);
    if (c != null) {
      imWebView.mExpandController.lockOrientationValueForExpand = c.allowOrientationChange;
    }
    for (imWebView.mExpandController.orientationValueForExpand = c.forceOrientation;; imWebView.mExpandController.orientationValueForExpand = temporaryexpProps.orientation)
    {
      imWebView.expand(paramString, a(temporaryexpProps));
      return;
      localObject = imWebView.mExpandController;
      if (!temporaryexpProps.lockOrientation) {
        bool = true;
      }
      lockOrientationValueForExpand = bool;
    }
  }
  
  @JavascriptInterface
  public String getExpandProperties()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(4), null));
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("width", expProps.width);
      localJSONObject.put("height", expProps.height);
      localJSONObject.put("isModal", expProps.isModal);
      localJSONObject.put("useCustomClose", expProps.useCustomClose);
      localJSONObject.put("lockOrientation", expProps.lockOrientation);
      localJSONObject.put("orientation", expProps.orientation);
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "Failed to get screen size");
      }
    }
  }
  
  @JavascriptInterface
  public String getOrientation()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(16), null));
    try
    {
      String str = imWebView.getCurrentRotation(imWebView.getIntegerCurrentRotation());
      Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> getOrientation: " + str);
      return str;
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Error getOrientation: " + "-1", localException);
    }
    return "-1";
  }
  
  @JavascriptInterface
  public String getOrientationProperties()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(5), null));
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("allowOrientationChange", c.allowOrientationChange);
      localJSONObject.put("orientation", c.forceOrientation);
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "Failed to get screen size");
      }
    }
  }
  
  @JavascriptInterface
  public String getPlacementType()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(15), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> getPlacementType");
    return imWebView.getPlacementType();
  }
  
  @JavascriptInterface
  public String getResizeProperties()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(6), null));
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("width", d.width);
      localJSONObject.put("height", d.height);
      localJSONObject.put("offsetX", d.offsetX);
      localJSONObject.put("offsetY", d.offsetY);
      localJSONObject.put("customClosePosition", d.customClosePosition);
      localJSONObject.put("allowOffscreen", d.allowOffscreen);
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "Failed to get screen size");
      }
    }
  }
  
  @JavascriptInterface
  public String getState()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(3), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> getState");
    return imWebView.getState();
  }
  
  @JavascriptInterface
  public boolean isViewable()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(14), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> isViewable");
    return imWebView.isViewable();
  }
  
  @JavascriptInterface
  public void onOrientationChange()
  {
    imWebView.onOrientationEventChange();
  }
  
  @JavascriptInterface
  public void open(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> open: url: " + paramString);
    imWebView.openURL(paramString);
  }
  
  public void reset()
  {
    if (expProps != null) {
      expProps.reinitializeExpandProperties();
    }
    if (d != null) {
      d.initializeResizeProperties();
    }
  }
  
  @JavascriptInterface
  public void resize()
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(12), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> resize");
    try
    {
      if (imWebView.getStateVariable() == IMWebView.ViewState.RESIZING)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> Already resize state");
        return;
      }
      if (imWebView.getStateVariable() == IMWebView.ViewState.HIDDEN)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> Resize cannot be called in hidden state. Doing nothing.");
        return;
      }
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception while expanding the ad. ", localException);
      return;
    }
    if ((imWebView.getStateVariable() != IMWebView.ViewState.DEFAULT) && (imWebView.getStateVariable() != IMWebView.ViewState.RESIZED))
    {
      imWebView.raiseError("Current state is neither default nor resized", "resize");
      return;
    }
    if (imWebView.mIsInterstitialAd)
    {
      imWebView.raiseError("Resize cannot be called on interstitial ad", "resize");
      return;
    }
    JSController.ResizeProperties localResizeProperties = new JSController.ResizeProperties();
    a(localResizeProperties, d);
    width = ((int)(width * imWebView.getDensity()));
    height = ((int)(height * imWebView.getDensity()));
    offsetX = ((int)(offsetX * imWebView.getDensity()));
    offsetY = ((int)(offsetY * imWebView.getDensity()));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> At the time of resize the properties are: Resize width: " + width + " Resize height: " + height + " Resize offsetX: " + offsetX + " Resize offsetY: " + offsetY + " customClosePosition: " + customClosePosition + " allowOffscreen: " + allowOffscreen);
    imWebView.resize(localResizeProperties);
  }
  
  @JavascriptInterface
  public void setExpandProperties(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(7), null));
    try
    {
      expProps = ((JSController.ExpandProperties)getFromJSON(new JSONObject(paramString), JSController.ExpandProperties.class));
      expProps.isModal = true;
      Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> ExpandProperties is set: Expandable Width: " + expProps.width + " Expandable height: " + expProps.height + " Expandable orientation: " + expProps.orientation + " Expandable lock orientation: " + expProps.lockOrientation + " Expandable Modality: " + expProps.isModal + " Expandable Use Custom close: " + expProps.useCustomClose);
      imWebView.setCustomClose(expProps.useCustomClose);
      if (d == null)
      {
        paramString = imWebView;
        if (expProps.lockOrientation) {
          break label210;
        }
      }
      label210:
      for (boolean bool = true;; bool = false)
      {
        paramString.setOrientationPropertiesForInterstitial(bool, expProps.orientation);
        return;
      }
      return;
    }
    catch (Exception paramString)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception while setting the expand properties " + paramString);
    }
  }
  
  @JavascriptInterface
  public void setOrientationProperties(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(8), null));
    try
    {
      c = ((JSController.OrientationProperties)getFromJSON(new JSONObject(paramString), JSController.OrientationProperties.class));
      Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> OrientationProperties is set: Expandable orientation: " + expProps.orientation + " Expandable lock orientation: " + expProps.lockOrientation);
      imWebView.setOrientationPropertiesForInterstitial(c.allowOrientationChange, c.forceOrientation);
      return;
    }
    catch (Exception paramString)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception while setting the expand properties " + paramString);
    }
  }
  
  @JavascriptInterface
  public void setResizeProperties(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(9), null));
    try
    {
      d = ((JSController.ResizeProperties)getFromJSON(new JSONObject(paramString), JSController.ResizeProperties.class));
      Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> ResizeProperties is set: Resize Width: " + d.width + " Resize height: " + d.height + " Resize offsetX: " + d.offsetX + " Resize offsetY: " + d.offsetY + " customClosePosition: " + d.customClosePosition + " allowOffscreen: " + d.allowOffscreen);
      return;
    }
    catch (Exception paramString)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Exception while setting the expand properties " + paramString);
    }
  }
  
  public void stopAllListeners() {}
  
  @JavascriptInterface
  public void useCustomClose(boolean paramBoolean)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(10), null));
    Log.debug("[InMobi]-[RE]-4.4.1", "JSDisplayController-> useCustomClose" + paramBoolean);
    imWebView.setCustomClose(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSDisplayController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */