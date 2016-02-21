package com.inmobi.re.controller;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.webkit.JavascriptInterface;
import com.inmobi.commons.internal.ApiStatCollector;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import com.inmobi.re.controller.JSController.ExpandProperties;
import com.inmobi.re.controller.JSController.OrientationProperties;
import com.inmobi.re.controller.JSController.ResizeProperties;
import com.inmobi.re.controller.util.Constants;
import org.json.JSONException;
import org.json.JSONObject;

public class JSDisplayController extends JSController {
    private WindowManager a;
    private float b;
    private OrientationProperties c;
    private ResizeProperties d;

    public JSDisplayController(IMWebView iMWebView, Context context) {
        super(iMWebView, context);
        this.c = null;
        this.d = null;
        DisplayMetrics displayMetrics = new DisplayMetrics();
        this.a = (WindowManager) context.getSystemService("window");
        this.a.getDefaultDisplay().getMetrics(displayMetrics);
        this.b = ((Activity) this.mContext).getResources().getDisplayMetrics().density;
    }

    private ExpandProperties a(ExpandProperties expandProperties) {
        Display defaultDisplay = this.a.getDefaultDisplay();
        int i = ((Activity) this.mContext).getResources().getDisplayMetrics().widthPixels;
        int i2 = ((Activity) this.mContext).getResources().getDisplayMetrics().heightPixels;
        View findViewById = ((Activity) this.mContext).getWindow().findViewById(16908290);
        expandProperties.topStuff = findViewById.getTop();
        expandProperties.bottomStuff = i2 - findViewById.getBottom();
        int displayRotation = InternalSDKUtil.getDisplayRotation(defaultDisplay);
        if (InternalSDKUtil.isDefOrientationLandscape(displayRotation, i, i2)) {
            displayRotation++;
            if (displayRotation > 3) {
                displayRotation = 0;
            }
            if (InternalSDKUtil.isTablet(this.mContext)) {
                this.imWebView.isTablet = true;
            }
        }
        int i3 = displayRotation;
        Log.debug(Constants.RENDERING_LOG_TAG, "Device current rotation: " + i3);
        Log.debug(Constants.RENDERING_LOG_TAG, "Density of device: " + this.b);
        expandProperties.width = (int) (((float) expandProperties.width) * this.b);
        expandProperties.height = (int) (((float) expandProperties.height) * this.b);
        expandProperties.x = (int) (((float) expandProperties.x) * this.b);
        expandProperties.y = (int) (((float) expandProperties.y) * this.b);
        expandProperties.currentX = 0;
        expandProperties.currentY = 0;
        this.imWebView.publisherOrientation = ((Activity) this.imWebView.getContext()).getRequestedOrientation();
        if (i3 == 0 || i3 == 2) {
            expandProperties.rotationAtExpand = DeviceInfo.ORIENTATION_PORTRAIT;
        } else {
            expandProperties.rotationAtExpand = DeviceInfo.ORIENTATION_LANDSCAPE;
        }
        if (expandProperties.height <= 0 || expandProperties.width <= 0) {
            expandProperties.height = i2;
            expandProperties.width = i;
            expandProperties.zeroWidthHeight = true;
        }
        if (i3 == 0 || i3 == 2) {
            expandProperties.portraitWidthRequested = expandProperties.width;
            expandProperties.portraitHeightRequested = expandProperties.height;
        } else {
            expandProperties.portraitWidthRequested = expandProperties.height;
            expandProperties.portraitHeightRequested = expandProperties.width;
        }
        Log.debug(Constants.RENDERING_LOG_TAG, "Device Width: " + i + " Device height: " + i2);
        displayRotation = i2 - expandProperties.topStuff;
        if (expandProperties.width > i) {
            expandProperties.width = i;
        }
        if (expandProperties.height > displayRotation) {
            expandProperties.height = displayRotation;
        }
        int[] iArr = new int[2];
        this.imWebView.getLocationOnScreen(iArr);
        if (expandProperties.x < 0) {
            expandProperties.x = iArr[0];
        }
        if (expandProperties.y < 0) {
            expandProperties.y = iArr[1] - expandProperties.topStuff;
            Log.debug(Constants.RENDERING_LOG_TAG, "topStuff: " + expandProperties.topStuff + " ,bottomStuff: " + expandProperties.bottomStuff);
        }
        Log.debug(Constants.RENDERING_LOG_TAG, "loc 0: " + iArr[0] + " loc 1: " + iArr[1]);
        i3 = i - expandProperties.x + expandProperties.width;
        if (i3 < 0) {
            expandProperties.x = i3 + expandProperties.x;
            if (expandProperties.x < 0) {
                expandProperties.width += expandProperties.x;
                expandProperties.x = 0;
            }
        }
        displayRotation -= expandProperties.y + expandProperties.height;
        if (displayRotation < 0) {
            expandProperties.y = displayRotation + expandProperties.y;
            if (expandProperties.y < 0) {
                expandProperties.height += expandProperties.y;
                expandProperties.y = 0;
            }
        }
        expandProperties.currentX = expandProperties.x;
        expandProperties.currentY = expandProperties.y;
        Log.debug(Constants.RENDERING_LOG_TAG, "final expanded width after density : " + expandProperties.width + "final expanded height after density " + expandProperties.height + "portrait width requested :" + expandProperties.portraitWidthRequested + "portrait height requested :" + expandProperties.portraitHeightRequested);
        return expandProperties;
    }

    private void a(ExpandProperties expandProperties, ExpandProperties expandProperties2) {
        expandProperties.width = expandProperties2.width;
        expandProperties.height = expandProperties2.height;
        expandProperties.x = expandProperties2.x;
        expandProperties.y = expandProperties2.y;
        expandProperties.actualWidthRequested = expandProperties2.actualWidthRequested;
        expandProperties.actualHeightRequested = expandProperties2.actualHeightRequested;
        expandProperties.lockOrientation = expandProperties2.lockOrientation;
        expandProperties.isModal = expandProperties2.isModal;
        expandProperties.useCustomClose = expandProperties2.useCustomClose;
        expandProperties.orientation = expandProperties2.orientation;
        expandProperties.topStuff = expandProperties2.topStuff;
        expandProperties.bottomStuff = expandProperties2.bottomStuff;
        expandProperties.portraitWidthRequested = expandProperties2.portraitWidthRequested;
        expandProperties.portraitHeightRequested = expandProperties2.portraitHeightRequested;
        expandProperties.zeroWidthHeight = expandProperties2.zeroWidthHeight;
        expandProperties.rotationAtExpand = expandProperties2.rotationAtExpand;
        expandProperties.currentX = expandProperties2.currentX;
        expandProperties.currentY = expandProperties2.currentY;
    }

    private void a(ResizeProperties resizeProperties, ResizeProperties resizeProperties2) {
        resizeProperties.width = resizeProperties2.width;
        resizeProperties.height = resizeProperties2.height;
        resizeProperties.allowOffscreen = resizeProperties2.allowOffscreen;
        resizeProperties.customClosePosition = resizeProperties2.customClosePosition;
        resizeProperties.offsetX = resizeProperties2.offsetX;
        resizeProperties.offsetY = resizeProperties2.offsetY;
    }

    @JavascriptInterface
    public void close() {
        Activity activity = null;
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(13), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> close");
        if (this.imWebView.mOriginalWebviewForExpandUrl != null) {
            this.imWebView.mOriginalWebviewForExpandUrl.close();
        }
        if (this.imWebView.isExpanded()) {
            activity = this.imWebView.getExpandedActivity();
        }
        this.imWebView.close();
        if (activity != null) {
            activity.finish();
        }
    }

    @JavascriptInterface
    public void expand(String str) {
        boolean z = false;
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(11), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> expand: url: " + str);
        try {
            if (this.imWebView.getStateVariable() == ViewState.EXPANDED || this.imWebView.getStateVariable() == ViewState.EXPANDING) {
                Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> Already expanded state");
            } else if (this.imWebView.getStateVariable() == ViewState.HIDDEN) {
                Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> Expand cannot be called in hidden state. Doing nothing.");
            } else {
                this.imWebView.mExpandController.useLockOrient = false;
                if (this.imWebView.getStateVariable() != ViewState.DEFAULT && this.imWebView.getStateVariable() != ViewState.RESIZED && this.imWebView.getStateVariable() != ViewState.RESIZING) {
                    this.imWebView.raiseError("Current state is not default", "expand");
                } else if (this.imWebView.getStateVariable() == ViewState.DEFAULT && this.imWebView.mIsInterstitialAd) {
                    this.imWebView.raiseError("Expand cannot be called on interstitial ad", "expand");
                } else {
                    a(this.temporaryexpProps, this.expProps);
                    ExpandProperties expandProperties = this.temporaryexpProps;
                    this.temporaryexpProps.height = 0;
                    expandProperties.width = 0;
                    Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> At the time of expand the properties are: Expandable width: " + this.temporaryexpProps.width + " Expandable height: " + this.temporaryexpProps.height + " Expandable orientation: " + this.temporaryexpProps.orientation + " Expandable lock orientation: " + this.temporaryexpProps.lockOrientation + " Expandable Modality: " + this.temporaryexpProps.isModal + " Expandable Use custom close " + this.temporaryexpProps.useCustomClose);
                    this.expProps = a(this.expProps);
                    if (this.c != null) {
                        this.imWebView.mExpandController.lockOrientationValueForExpand = this.c.allowOrientationChange;
                        this.imWebView.mExpandController.orientationValueForExpand = this.c.forceOrientation;
                    } else {
                        MRAIDExpandController mRAIDExpandController = this.imWebView.mExpandController;
                        if (!this.temporaryexpProps.lockOrientation) {
                            z = true;
                        }
                        mRAIDExpandController.lockOrientationValueForExpand = z;
                        this.imWebView.mExpandController.orientationValueForExpand = this.temporaryexpProps.orientation;
                    }
                    this.imWebView.expand(str, a(this.temporaryexpProps));
                }
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception while expanding the ad. ", e);
        }
    }

    @JavascriptInterface
    public String getExpandProperties() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(4), null));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MMLayout.KEY_WIDTH, this.expProps.width);
            jSONObject.put(MMLayout.KEY_HEIGHT, this.expProps.height);
            jSONObject.put("isModal", this.expProps.isModal);
            jSONObject.put("useCustomClose", this.expProps.useCustomClose);
            jSONObject.put("lockOrientation", this.expProps.lockOrientation);
            jSONObject.put("orientation", this.expProps.orientation);
        } catch (JSONException e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get screen size");
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String getOrientation() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(16), null));
        try {
            String currentRotation = this.imWebView.getCurrentRotation(this.imWebView.getIntegerCurrentRotation());
            Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> getOrientation: " + currentRotation);
            return currentRotation;
        } catch (Exception e) {
            currentRotation = "-1";
            Log.debug(Constants.RENDERING_LOG_TAG, "Error getOrientation: " + currentRotation, e);
            return currentRotation;
        }
    }

    @JavascriptInterface
    public String getOrientationProperties() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(5), null));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("allowOrientationChange", this.c.allowOrientationChange);
            jSONObject.put("orientation", this.c.forceOrientation);
        } catch (JSONException e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get screen size");
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String getPlacementType() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(15), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> getPlacementType");
        return this.imWebView.getPlacementType();
    }

    @JavascriptInterface
    public String getResizeProperties() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(6), null));
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MMLayout.KEY_WIDTH, this.d.width);
            jSONObject.put(MMLayout.KEY_HEIGHT, this.d.height);
            jSONObject.put("offsetX", this.d.offsetX);
            jSONObject.put("offsetY", this.d.offsetY);
            jSONObject.put("customClosePosition", this.d.customClosePosition);
            jSONObject.put("allowOffscreen", this.d.allowOffscreen);
        } catch (JSONException e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Failed to get screen size");
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String getState() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(3), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> getState");
        return this.imWebView.getState();
    }

    @JavascriptInterface
    public boolean isViewable() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(14), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> isViewable");
        return this.imWebView.isViewable();
    }

    @JavascriptInterface
    public void onOrientationChange() {
        this.imWebView.onOrientationEventChange();
    }

    @JavascriptInterface
    public void open(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(1), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> open: url: " + str);
        this.imWebView.openURL(str);
    }

    public void reset() {
        if (this.expProps != null) {
            this.expProps.reinitializeExpandProperties();
        }
        if (this.d != null) {
            this.d.initializeResizeProperties();
        }
    }

    @JavascriptInterface
    public void resize() {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(12), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> resize");
        try {
            if (this.imWebView.getStateVariable() == ViewState.RESIZING) {
                Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> Already resize state");
            } else if (this.imWebView.getStateVariable() == ViewState.HIDDEN) {
                Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> Resize cannot be called in hidden state. Doing nothing.");
            } else if (this.imWebView.getStateVariable() != ViewState.DEFAULT && this.imWebView.getStateVariable() != ViewState.RESIZED) {
                this.imWebView.raiseError("Current state is neither default nor resized", "resize");
            } else if (this.imWebView.mIsInterstitialAd) {
                this.imWebView.raiseError("Resize cannot be called on interstitial ad", "resize");
            } else {
                ResizeProperties resizeProperties = new ResizeProperties();
                a(resizeProperties, this.d);
                resizeProperties.width = (int) (((float) resizeProperties.width) * this.imWebView.getDensity());
                resizeProperties.height = (int) (((float) resizeProperties.height) * this.imWebView.getDensity());
                resizeProperties.offsetX = (int) (((float) resizeProperties.offsetX) * this.imWebView.getDensity());
                resizeProperties.offsetY = (int) (((float) resizeProperties.offsetY) * this.imWebView.getDensity());
                Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> At the time of resize the properties are: Resize width: " + resizeProperties.width + " Resize height: " + resizeProperties.height + " Resize offsetX: " + resizeProperties.offsetX + " Resize offsetY: " + resizeProperties.offsetY + " customClosePosition: " + resizeProperties.customClosePosition + " allowOffscreen: " + resizeProperties.allowOffscreen);
                this.imWebView.resize(resizeProperties);
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception while expanding the ad. ", e);
        }
    }

    @JavascriptInterface
    public void setExpandProperties(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(7), null));
        try {
            this.expProps = (ExpandProperties) getFromJSON(new JSONObject(str), ExpandProperties.class);
            this.expProps.isModal = true;
            Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> ExpandProperties is set: Expandable Width: " + this.expProps.width + " Expandable height: " + this.expProps.height + " Expandable orientation: " + this.expProps.orientation + " Expandable lock orientation: " + this.expProps.lockOrientation + " Expandable Modality: " + this.expProps.isModal + " Expandable Use Custom close: " + this.expProps.useCustomClose);
            this.imWebView.setCustomClose(this.expProps.useCustomClose);
            if (this.d == null) {
                this.imWebView.setOrientationPropertiesForInterstitial(!this.expProps.lockOrientation, this.expProps.orientation);
            }
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception while setting the expand properties " + e);
        }
    }

    @JavascriptInterface
    public void setOrientationProperties(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(8), null));
        try {
            this.c = (OrientationProperties) getFromJSON(new JSONObject(str), OrientationProperties.class);
            Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> OrientationProperties is set: Expandable orientation: " + this.expProps.orientation + " Expandable lock orientation: " + this.expProps.lockOrientation);
            this.imWebView.setOrientationPropertiesForInterstitial(this.c.allowOrientationChange, this.c.forceOrientation);
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception while setting the expand properties " + e);
        }
    }

    @JavascriptInterface
    public void setResizeProperties(String str) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(9), null));
        try {
            this.d = (ResizeProperties) getFromJSON(new JSONObject(str), ResizeProperties.class);
            Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> ResizeProperties is set: Resize Width: " + this.d.width + " Resize height: " + this.d.height + " Resize offsetX: " + this.d.offsetX + " Resize offsetY: " + this.d.offsetY + " customClosePosition: " + this.d.customClosePosition + " allowOffscreen: " + this.d.allowOffscreen);
        } catch (Exception e) {
            Log.debug(Constants.RENDERING_LOG_TAG, "Exception while setting the expand properties " + e);
        }
    }

    public void stopAllListeners() {
    }

    @JavascriptInterface
    public void useCustomClose(boolean z) {
        ApiStatCollector.getLogger().logEvent(new EventLog(new ApiEventType(10), null));
        Log.debug(Constants.RENDERING_LOG_TAG, "JSDisplayController-> useCustomClose" + z);
        this.imWebView.setCustomClose(z);
    }
}