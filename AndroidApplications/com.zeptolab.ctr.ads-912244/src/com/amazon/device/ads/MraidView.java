package com.amazon.device.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.amazon.device.ads.WebRequest.WebRequestException;
import com.inmobi.re.configs.Initializer;
import com.zeptolab.utils.HTMLEncoder;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;

@SuppressLint({"ViewConstructor"})
class MraidView extends FrameLayout {
    private static final String d;
    private static final String e = "(function(){var mraidbridge=window.mraidbridge={};var listeners={};var nativeCallQueue=[];var nativeCallInFlight=false;mraidbridge.fireReadyEvent=function(){mraidbridge.fireEvent('ready')};mraidbridge.fireChangeEvent=function(properties){mraidbridge.fireEvent('change',properties)};mraidbridge.fireErrorEvent=function(message,action){mraidbridge.fireEvent('error',message,action)};mraidbridge.fireEvent=function(type){var ls=listeners[type];if(ls){var args=Array.prototype.slice.call(arguments);args.shift();var l=ls.length;for(var i=0;i<l;i++){ls[i].apply(null,args)}}};mraidbridge.nativeCallComplete=function(command){if(nativeCallQueue.length===0){nativeCallInFlight=false;return}var nextCall=nativeCallQueue.pop();window.location=nextCall};mraidbridge.executeNativeCall=function(command){var call='mraid://'+command;var key,value;var isFirstArgument=true;for(var i=1;i<arguments.length;i+=2){key=arguments[i];value=arguments[i+1];if(value===null)continue;if(isFirstArgument){call+='?';isFirstArgument=false}else{call+='&'}call+=key+'='+escape(value)}if(nativeCallInFlight){nativeCallQueue.push(call)}else{nativeCallInFlight=true;window.location=call}};mraidbridge.addEventListener=function(event,listener){var eventListeners;listeners[event]=listeners[event]||[];eventListeners=listeners[event];for(var l in eventListeners){if(listener===l)return}eventListeners.push(listener)};mraidbridge.removeEventListener=function(event,listener){if(listeners.hasOwnProperty(event)){var eventListeners=listeners[event];if(eventListeners){var idx=eventListeners.indexOf(listener);if(idx!==-1){eventListeners.splice(idx,1)}}}}}());(function(){var mraid=window.mraid={};var bridge=window.mraidbridge;var VERSION=mraid.VERSION='1.0';var STATES=mraid.STATES={LOADING:'loading',DEFAULT:'default',EXPANDED:'expanded',HIDDEN:'hidden',};var EVENTS=mraid.EVENTS={ERROR:'error',INFO:'info',READY:'ready',STATECHANGE:'stateChange',VIEWABLECHANGE:'viewableChange'};var PLACEMENT_TYPES=mraid.PLACEMENT_TYPES={UNKNOWN:'unknown',INLINE:'inline',INTERSTITIAL:'interstitial'};var LOG_LEVELS=mraid.LOG_LEVELS={INFO:4,DEBUG:3,VERBOSE:2,WARNING:5,ERROR:6};var expandProperties={width:-1,height:-1,useCustomClose:false,isModal:true,lockOrientation:true};var hasSetCustomSize=false;var hasSetCustomClose=false;var listeners={};var state=STATES.LOADING;var isViewable=false;var screenSize={width:-1,height:-1};var placementType=PLACEMENT_TYPES.UNKNOWN;var EventListeners=function(event){this.event=event;this.count=0;var listeners={};this.add=function(func){var id=String(func);if(!listeners[id]){listeners[id]=func;this.count++}};this.remove=function(func){var id=String(func);if(listeners[id]){listeners[id]=null;delete listeners[id];this.count--;return true}else{return false}};this.removeAll=function(){for(var id in listeners){if(listeners.hasOwnProperty(id))this.remove(listeners[id])}};this.broadcast=function(args){for(var id in listeners){if(listeners.hasOwnProperty(id))listeners[id].apply({},args)}};this.toString=function(){var out=[event,':'];for(var id in listeners){if(listeners.hasOwnProperty(id))out.push('|',id,'|')}return out.join('')}};var broadcastEvent=function(){var args=new Array(arguments.length);var l=arguments.length;for(var i=0;i<l;i++)args[i]=arguments[i];var event=args.shift();if(listeners[event])listeners[event].broadcast(args)};var contains=function(value,array){for(var i in array){if(array[i]===value)return true}return false};var clone=function(obj){if(obj===null)return null;var f=function(){};f.prototype=obj;return new f()};var stringify=function(obj){if(typeof obj==='object'){var out=[];if(obj.push){for(var p in obj)out.push(obj[p]);return'['+out.join(',')+']'}else{for(var p in obj)out.push(\"'\"+p+\"': \"+obj[p]);return'{'+out.join(',')+'}'}}else return String(obj)};var trim=function(str){return str.replace(/^\\s+|\\s+$/g,'')};var changeHandlers={state:function(val){if(state===STATES.LOADING){broadcastEvent(EVENTS.INFO,'Native SDK initialized.')}state=val;broadcastEvent(EVENTS.INFO,'Set state to '+stringify(val));broadcastEvent(EVENTS.STATECHANGE,state)},viewable:function(val){isViewable=val;broadcastEvent(EVENTS.INFO,'Set isViewable to '+stringify(val));broadcastEvent(EVENTS.VIEWABLECHANGE,isViewable)},placementType:function(val){broadcastEvent(EVENTS.INFO,'Set placementType to '+stringify(val));placementType=val},screenSize:function(val){broadcastEvent(EVENTS.INFO,'Set screenSize to '+stringify(val));for(var key in val){if(val.hasOwnProperty(key))screenSize[key]=val[key]}if(!hasSetCustomSize){expandProperties['width']=screenSize['width'];expandProperties['height']=screenSize['height']}},expandProperties:function(val){broadcastEvent(EVENTS.INFO,'Merging expandProperties with '+stringify(val));for(var key in val){if(val.hasOwnProperty(key))expandProperties[key]=val[key]}}};var validate=function(obj,validators,action,merge){if(!merge){if(obj===null){broadcastEvent(EVENTS.ERROR,'Required object not provided.',action);return false}else{for(var i in validators){if(validators.hasOwnProperty(i)&&obj[i]===undefined){broadcastEvent(EVENTS.ERROR,'Object is missing required property: '+i+'.',action);return false}}}}for(var prop in obj){var validator=validators[prop];var value=obj[prop];if(validator&&!validator(value)){broadcastEvent(EVENTS.ERROR,'Value of property '+prop+' is invalid.',action);return false}}return true};var expandPropertyValidators={width:function(v){return!isNaN(v)&&v>=0},height:function(v){return!isNaN(v)&&v>=0},useCustomClose:function(v){return(typeof v==='boolean')},lockOrientation:function(v){return(typeof v==='boolean')}};bridge.addEventListener('change',function(properties){for(var p in properties){if(properties.hasOwnProperty(p)){var handler=changeHandlers[p];handler(properties[p])}}});bridge.addEventListener('error',function(message,action){broadcastEvent(EVENTS.ERROR,message,action)});bridge.addEventListener('ready',function(){broadcastEvent(EVENTS.READY)});mraid.addEventListener=function(event,listener){if(!event||!listener){broadcastEvent(EVENTS.ERROR,'Both event and listener are required.','addEventListener')}else if(!contains(event,EVENTS)){broadcastEvent(EVENTS.ERROR,'Unknown MRAID event: '+event,'addEventListener')}else{if(!listeners[event])listeners[event]=new EventListeners(event);listeners[event].add(listener)}};mraid.close=function(){if(state===STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,'Ad cannot be closed when it is already hidden.','close')}else bridge.executeNativeCall('close')};mraid.playVideo=function(URL,properties){if(state==STATES.DEFAULT||state==STATES.EXPANDED){var args=['playVideo'];if(URL){args=args.concat(['url',URL])}var audioMuted=false,autoPlay=true,controls=true,loop=false,position=[-1,-1,-1,-1],startStyle='normal',stopStyle='normal';if(properties){if((typeof properties.audio!=\"undefined\")&&(properties.audio!=null)){audioMuted=properties.audio}if((typeof properties.autoplay!=\"undefined\")&&(properties.autoplay!=null)){autoPlay=properties.autoplay}if((typeof properties.controls!=\"undefined\")&&(properties.controls!=null)){controls=properties.controls}if((typeof properties.loop!=\"undefined\")&&(properties.loop!=null)){loop=properties.loop}if((typeof properties.position!=\"undefined\")&&(properties.position!=null)){inline=new Array(4);inline[0]=properties.position.top;inline[1]=properties.position.left;if((typeof properties.position.width!=\"undefined\")&&(properties.position.width!=null)){inline[2]=properties.position.width}if((typeof properties.position.height!=\"undefined\")&&(properties.position.height!=null)){inline[3]=properties.position.height}position=inline}if((typeof properties.startStyle!=\"undefined\")&&(properties.startStyle!=null)){startStyle=properties.startStyle}if((typeof properties.stopStyle!=\"undefined\")&&(properties.stopStyle!=null)){stopStyle=properties.stopStyle}if(loop){stopStyle='normal';controls=true}if(!autoPlay){controls=true}if(!controls){stopStyle='exit'}if(position[0]==-1||position[1]==-1){startStyle='fullscreen';autoPlay=true}args=args.concat(['audioMuted',audioMuted]);args=args.concat(['autoPlay',autoPlay]);args=args.concat(['controls',controls]);args=args.concat(['loop',loop]);args=args.concat(['position',position]);args=args.concat(['startStyle',startStyle]);args=args.concat(['stopStyle',stopStyle])}bridge.executeNativeCall.apply(this,args)}};mraid.log=function(level,log){var args=['log','level',level,'log',log];bridge.executeNativeCall.apply(this,args)};mraid.expand=function(URL){if(state!==STATES.DEFAULT){broadcastEvent(EVENTS.ERROR,'Ad can only be expanded from the default state.','expand')}else{var args=['expand'];if(hasSetCustomClose){args=args.concat(['shouldUseCustomClose',expandProperties.useCustomClose?'true':'false'])}if(hasSetCustomSize){if(expandProperties.width>=0&&expandProperties.height>=0){args=args.concat(['w',expandProperties.width,'h',expandProperties.height])}}if(typeof expandProperties.lockOrientation!=='undefined'){args=args.concat(['lockOrientation',expandProperties.lockOrientation])}if(URL){args=args.concat(['url',URL])}bridge.executeNativeCall.apply(this,args)}};mraid.getExpandProperties=function(){var properties={width:expandProperties.width,height:expandProperties.height,useCustomClose:expandProperties.useCustomClose,isModal:expandProperties.isModal};return properties};mraid.getPlacementType=function(){return placementType};mraid.getState=function(){return state};mraid.getVersion=function(){return mraid.VERSION};mraid.isViewable=function(){return isViewable};mraid.open=function(URL){if(!URL)broadcastEvent(EVENTS.ERROR,'URL is required.','open');else bridge.executeNativeCall('open','url',URL)};mraid.removeEventListener=function(event,listener){if(!event)broadcastEvent(EVENTS.ERROR,'Event is required.','removeEventListener');else{if(listener&&(!listeners[event]||!listeners[event].remove(listener))){broadcastEvent(EVENTS.ERROR,'Listener not currently registered for event.','removeEventListener');return}else if(listeners[event])listeners[event].removeAll();if(listeners[event]&&listeners[event].count===0){listeners[event]=null;delete listeners[event]}}};mraid.setExpandProperties=function(properties){if(validate(properties,expandPropertyValidators,'setExpandProperties',true)){if(properties.hasOwnProperty('width')||properties.hasOwnProperty('height')){hasSetCustomSize=true}if(properties.hasOwnProperty('useCustomClose'))hasSetCustomClose=true;var desiredProperties=['width','height','useCustomClose','lockOrientation'];var length=desiredProperties.length;for(var i=0;i<length;i++){var propname=desiredProperties[i];if(properties.hasOwnProperty(propname))expandProperties[propname]=properties[propname]}}};mraid.useCustomClose=function(shouldUseCustomClose){expandProperties.useCustomClose=shouldUseCustomClose;hasSetCustomClose=true;bridge.executeNativeCall('usecustomclose','shouldUseCustomClose',shouldUseCustomClose)}}());";
    private static HashMap f;
    protected boolean a;
    protected double b;
    protected AdView c;
    private MraidBrowserController g;
    private MraidDisplayController h;
    private WebViewClient i;
    private WebChromeClient j;
    private boolean k;
    private final PlacementType l;
    private MraidListenerInfo m;
    private boolean n;
    private int o;
    private boolean p;
    private int q;
    private int r;
    private Context s;
    private WebView t;

    public static interface OnCloseListener {
        void onClose(MraidView mraidView, com.amazon.device.ads.MraidView.ViewState viewState);
    }

    public static interface OnExpandListener {
        void onExpand(MraidView mraidView);
    }

    public static interface OnReadyListener {
        void onReady(MraidView mraidView);
    }

    public static interface OnSpecialUrlClickListener {
        void onSpecialUrlClick(MraidView mraidView, String str);
    }

    enum ExpansionStyle {
        ENABLED,
        DISABLED;

        static {
            ENABLED = new ExpansionStyle("ENABLED", 0);
            DISABLED = new ExpansionStyle("DISABLED", 1);
            a = new ExpansionStyle[]{ENABLED, DISABLED};
        }
    }

    class MraidExecutor implements UrlExecutor {
        MraidExecutor() {
        }

        public boolean execute(String str) {
            URI create = URI.create(str);
            String host = create.getHost();
            List parse = URLEncodedUtils.parse(create, HTMLEncoder.ENCODE_NAME_DEFAULT);
            Map hashMap = new HashMap();
            Iterator it = parse.iterator();
            while (it.hasNext()) {
                NameValuePair nameValuePair = (NameValuePair) it.next();
                hashMap.put(nameValuePair.getName(), nameValuePair.getValue());
            }
            MraidCommand a = MraidCommandRegistry.a(host, hashMap, MraidView.this);
            if (a == null) {
                MraidView.this.b(host);
                return false;
            } else {
                a.a();
                MraidView.this.b(host);
                return true;
            }
        }
    }

    static class MraidListenerInfo {
        private com.amazon.device.ads.MraidView.OnExpandListener a;
        private com.amazon.device.ads.MraidView.OnCloseListener b;
        private com.amazon.device.ads.MraidView.OnReadyListener c;
        private com.amazon.device.ads.MraidView.OnFailureListener d;
        private com.amazon.device.ads.MraidView.OnCloseButtonStateChangeListener e;
        private com.amazon.device.ads.MraidView.OnOpenListener f;
        private com.amazon.device.ads.MraidView.OnSpecialUrlClickListener g;

        MraidListenerInfo() {
        }
    }

    protected class MraidWebChromeClient extends WebChromeClient {
        protected MraidWebChromeClient() {
        }

        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            Log.d(d, str2);
            return false;
        }
    }

    enum NativeCloseButtonStyle {
        ALWAYS_VISIBLE,
        ALWAYS_HIDDEN,
        AD_CONTROLLED;

        static {
            ALWAYS_VISIBLE = new NativeCloseButtonStyle("ALWAYS_VISIBLE", 0);
            ALWAYS_HIDDEN = new NativeCloseButtonStyle("ALWAYS_HIDDEN", 1);
            AD_CONTROLLED = new NativeCloseButtonStyle("AD_CONTROLLED", 2);
            a = new NativeCloseButtonStyle[]{ALWAYS_VISIBLE, ALWAYS_HIDDEN, AD_CONTROLLED};
        }
    }

    public static interface OnCloseButtonStateChangeListener {
        void onCloseButtonStateChange(MraidView mraidView, boolean z);
    }

    public static interface OnFailureListener {
        void onFailure(MraidView mraidView);
    }

    public static interface OnOpenListener {
        void onOpen(MraidView mraidView);
    }

    enum PlacementType {
        INLINE,
        INTERSTITIAL;

        static {
            INLINE = new PlacementType("INLINE", 0);
            INTERSTITIAL = new PlacementType("INTERSTITIAL", 1);
            a = new PlacementType[]{INLINE, INTERSTITIAL};
        }
    }

    public enum ViewState {
        LOADING,
        DEFAULT,
        EXPANDED,
        HIDDEN;

        static {
            LOADING = new com.amazon.device.ads.MraidView.ViewState("LOADING", 0);
            DEFAULT = new com.amazon.device.ads.MraidView.ViewState("DEFAULT", 1);
            EXPANDED = new com.amazon.device.ads.MraidView.ViewState("EXPANDED", 2);
            HIDDEN = new com.amazon.device.ads.MraidView.ViewState("HIDDEN", 3);
            a = new com.amazon.device.ads.MraidView.ViewState[]{LOADING, DEFAULT, EXPANDED, HIDDEN};
        }
    }

    static {
        d = MraidView.class.getSimpleName();
    }

    public MraidView(AdView adView, int i, int i2, double d, Context context, WebView webView) {
        this(adView, i, i2, d, context, webView, ExpansionStyle.ENABLED, NativeCloseButtonStyle.AD_CONTROLLED, PlacementType.INLINE);
    }

    MraidView(AdView adView, int i, int i2, double d, Context context, WebView webView, ExpansionStyle expansionStyle, NativeCloseButtonStyle nativeCloseButtonStyle, PlacementType placementType) {
        super(context);
        this.n = false;
        this.o = 8;
        this.a = false;
        this.p = false;
        this.c = adView;
        this.l = placementType;
        this.r = i2;
        this.q = i;
        this.b = d;
        this.s = context;
        this.t = webView;
        b();
        addView(this.t);
        if (VERSION.SDK_INT >= 11 && shouldDisableWebViewHardwareAcceleration()) {
            a();
        }
        a(expansionStyle, nativeCloseButtonStyle);
    }

    public MraidView(AdView adView, Context context, WebView webView) {
        this(adView, 0, 0, 0.0d, context, webView, ExpansionStyle.DISABLED, NativeCloseButtonStyle.ALWAYS_HIDDEN, PlacementType.INLINE);
    }

    public static void cacheMraidView(String str, MraidView mraidView) {
        l().put(str, mraidView);
    }

    public static MraidView getCachedMraidView(String str) {
        return (MraidView) l().get(str);
    }

    static HashMap l() {
        if (f == null) {
            f = new HashMap();
        }
        return f;
    }

    private void n() {
        WebViewClient adWebViewClient = new AdWebViewClient(this.c, this.s);
        adWebViewClient.putUrlExecutor(Initializer.PRODUCT_MRAID, g());
        adWebViewClient.putUrlExecutor(AdWebViewClient.AMAZON_MOBILE, this.c.getSpecialUrlExecutor());
        this.i = adWebViewClient;
        a(this.i);
    }

    private void o() {
        if (this.m.d != null) {
            this.m.d.onFailure(this);
        }
    }

    public static MraidView removeCachedMraidView(String str) {
        return (MraidView) l().remove(str);
    }

    protected void a() {
        AndroidTargetUtils.disableHardwareAcceleration(this);
    }

    protected void a(int i, int i2) {
        this.t.setLayoutParams(new LayoutParams(i, i2));
    }

    protected void a(WebChromeClient webChromeClient) {
        this.j = webChromeClient;
    }

    protected void a(WebViewClient webViewClient) {
        this.t.setWebViewClient(webViewClient);
    }

    protected void a(MraidBrowserController mraidBrowserController) {
        this.g = mraidBrowserController;
    }

    protected void a(MraidDisplayController mraidDisplayController) {
        this.h = mraidDisplayController;
    }

    protected void a(MraidProperty mraidProperty) {
        a("window.mraidbridge.fireChangeEvent(" + ("{" + mraidProperty.toString() + "}") + ");");
        Log.d(d, "Fire change: %s", new Object[]{str});
    }

    protected void a(ExpansionStyle expansionStyle, NativeCloseButtonStyle nativeCloseButtonStyle) {
        boolean z = true;
        this.g = new MraidBrowserController(this);
        this.h = new MraidDisplayController(this, expansionStyle, nativeCloseButtonStyle);
        this.t.setScrollContainer(false);
        this.t.setBackgroundColor(0);
        this.t.setVerticalScrollBarEnabled(false);
        this.t.setHorizontalScrollBarEnabled(false);
        if (WebViewFactory.setJavaScriptEnabledForWebView(true, this.t, d)) {
            z = false;
        }
        this.a = z;
        n();
        this.j = new MraidWebChromeClient();
        this.t.setWebChromeClient(this.j);
        this.m = new MraidListenerInfo();
    }

    protected void a(MraidListenerInfo mraidListenerInfo) {
        this.m = mraidListenerInfo;
    }

    protected void a(String str) {
        if (str != null) {
            this.t.loadUrl("javascript:" + str);
        }
    }

    protected void a(String str, String str2) {
        a("window.mraidbridge.fireErrorEvent('" + str + "', '" + str2 + "');");
    }

    protected void a(ArrayList arrayList) {
        String toString = arrayList.toString();
        if (toString.length() >= 2) {
            a("window.mraidbridge.fireChangeEvent(" + ("{" + toString.substring(1, toString.length() - 1) + "}") + ");");
            Log.d(d, "Fire changes: %s", new Object[]{toString});
        }
    }

    protected void b() {
        int height = (int) ((((double) this.c.getHeight()) * this.b) * ((double) InternalAdRegistration.getInstance().getDeviceInfo().getScalingFactorAsFloat()));
        if (height > 0) {
            a(-1, height);
        }
    }

    protected void b(WebViewClient webViewClient) {
        this.i = webViewClient;
    }

    protected void b(String str) {
        a("window.mraidbridge.nativeCallComplete('" + str + "');");
    }

    protected int c() {
        return this.q;
    }

    protected int d() {
        return this.r;
    }

    public void destroy() {
        this.h.destroy();
        removeView(this.t);
        this.t.destroy();
    }

    protected double e() {
        return this.b;
    }

    protected AdView f() {
        return this.c;
    }

    protected MraidExecutor g() {
        return new MraidExecutor();
    }

    public OnCloseButtonStateChangeListener getOnCloseButtonStateChangeListener() {
        return this.m.e;
    }

    public OnCloseListener getOnCloseListener() {
        return this.m.b;
    }

    public OnExpandListener getOnExpandListener() {
        return this.m.a;
    }

    public OnFailureListener getOnFailureListener() {
        return this.m.d;
    }

    public OnOpenListener getOnOpenListener() {
        return this.m.f;
    }

    public OnReadyListener getOnReadyListener() {
        return this.m.c;
    }

    public OnSpecialUrlClickListener getOnSpecialUrlClickListener() {
        return this.m.g;
    }

    public boolean getShouldForceRenderFailure() {
        return this.a;
    }

    public WebView getWebView() {
        return this.t;
    }

    protected MraidBrowserController h() {
        return this.g;
    }

    protected MraidDisplayController i() {
        return this.h;
    }

    protected void j() {
        a("window.mraidbridge.fireReadyEvent();");
    }

    protected void k() {
        if (!this.k) {
            this.h.f();
            a(MraidPlacementTypeProperty.createWithType(this.l));
            j();
            if (getOnReadyListener() != null) {
                getOnReadyListener().onReady(this);
            }
            this.k = true;
            this.h.d();
        }
    }

    public boolean loadHtmlData(String str) {
        return loadHtmlData(null, str);
    }

    public boolean loadHtmlData(String str, String str2) {
        if (str2.indexOf("<html>") == -1) {
            str2 = "<html><meta name=\"viewport\" content=\"width=" + this.q + ", height=" + this.r + ", initial-scale=" + AdUtils.getViewportInitialScale(this.b) + ", minimum-scale=" + this.b + ", maximum-scale=" + this.b + "\"/>" + "<head></head><body style='margin:0;padding:0;'>" + str2 + "</body></html>";
        }
        String str3 = str;
        this.t.loadDataWithBaseURL(str3, str2.replace("<head>", "<head><script type='text/javascript'>(function(){var mraidbridge=window.mraidbridge={};var listeners={};var nativeCallQueue=[];var nativeCallInFlight=false;mraidbridge.fireReadyEvent=function(){mraidbridge.fireEvent('ready')};mraidbridge.fireChangeEvent=function(properties){mraidbridge.fireEvent('change',properties)};mraidbridge.fireErrorEvent=function(message,action){mraidbridge.fireEvent('error',message,action)};mraidbridge.fireEvent=function(type){var ls=listeners[type];if(ls){var args=Array.prototype.slice.call(arguments);args.shift();var l=ls.length;for(var i=0;i<l;i++){ls[i].apply(null,args)}}};mraidbridge.nativeCallComplete=function(command){if(nativeCallQueue.length===0){nativeCallInFlight=false;return}var nextCall=nativeCallQueue.pop();window.location=nextCall};mraidbridge.executeNativeCall=function(command){var call='mraid://'+command;var key,value;var isFirstArgument=true;for(var i=1;i<arguments.length;i+=2){key=arguments[i];value=arguments[i+1];if(value===null)continue;if(isFirstArgument){call+='?';isFirstArgument=false}else{call+='&'}call+=key+'='+escape(value)}if(nativeCallInFlight){nativeCallQueue.push(call)}else{nativeCallInFlight=true;window.location=call}};mraidbridge.addEventListener=function(event,listener){var eventListeners;listeners[event]=listeners[event]||[];eventListeners=listeners[event];for(var l in eventListeners){if(listener===l)return}eventListeners.push(listener)};mraidbridge.removeEventListener=function(event,listener){if(listeners.hasOwnProperty(event)){var eventListeners=listeners[event];if(eventListeners){var idx=eventListeners.indexOf(listener);if(idx!==-1){eventListeners.splice(idx,1)}}}}}());(function(){var mraid=window.mraid={};var bridge=window.mraidbridge;var VERSION=mraid.VERSION='1.0';var STATES=mraid.STATES={LOADING:'loading',DEFAULT:'default',EXPANDED:'expanded',HIDDEN:'hidden',};var EVENTS=mraid.EVENTS={ERROR:'error',INFO:'info',READY:'ready',STATECHANGE:'stateChange',VIEWABLECHANGE:'viewableChange'};var PLACEMENT_TYPES=mraid.PLACEMENT_TYPES={UNKNOWN:'unknown',INLINE:'inline',INTERSTITIAL:'interstitial'};var LOG_LEVELS=mraid.LOG_LEVELS={INFO:4,DEBUG:3,VERBOSE:2,WARNING:5,ERROR:6};var expandProperties={width:-1,height:-1,useCustomClose:false,isModal:true,lockOrientation:true};var hasSetCustomSize=false;var hasSetCustomClose=false;var listeners={};var state=STATES.LOADING;var isViewable=false;var screenSize={width:-1,height:-1};var placementType=PLACEMENT_TYPES.UNKNOWN;var EventListeners=function(event){this.event=event;this.count=0;var listeners={};this.add=function(func){var id=String(func);if(!listeners[id]){listeners[id]=func;this.count++}};this.remove=function(func){var id=String(func);if(listeners[id]){listeners[id]=null;delete listeners[id];this.count--;return true}else{return false}};this.removeAll=function(){for(var id in listeners){if(listeners.hasOwnProperty(id))this.remove(listeners[id])}};this.broadcast=function(args){for(var id in listeners){if(listeners.hasOwnProperty(id))listeners[id].apply({},args)}};this.toString=function(){var out=[event,':'];for(var id in listeners){if(listeners.hasOwnProperty(id))out.push('|',id,'|')}return out.join('')}};var broadcastEvent=function(){var args=new Array(arguments.length);var l=arguments.length;for(var i=0;i<l;i++)args[i]=arguments[i];var event=args.shift();if(listeners[event])listeners[event].broadcast(args)};var contains=function(value,array){for(var i in array){if(array[i]===value)return true}return false};var clone=function(obj){if(obj===null)return null;var f=function(){};f.prototype=obj;return new f()};var stringify=function(obj){if(typeof obj==='object'){var out=[];if(obj.push){for(var p in obj)out.push(obj[p]);return'['+out.join(',')+']'}else{for(var p in obj)out.push(\"'\"+p+\"': \"+obj[p]);return'{'+out.join(',')+'}'}}else return String(obj)};var trim=function(str){return str.replace(/^\\s+|\\s+$/g,'')};var changeHandlers={state:function(val){if(state===STATES.LOADING){broadcastEvent(EVENTS.INFO,'Native SDK initialized.')}state=val;broadcastEvent(EVENTS.INFO,'Set state to '+stringify(val));broadcastEvent(EVENTS.STATECHANGE,state)},viewable:function(val){isViewable=val;broadcastEvent(EVENTS.INFO,'Set isViewable to '+stringify(val));broadcastEvent(EVENTS.VIEWABLECHANGE,isViewable)},placementType:function(val){broadcastEvent(EVENTS.INFO,'Set placementType to '+stringify(val));placementType=val},screenSize:function(val){broadcastEvent(EVENTS.INFO,'Set screenSize to '+stringify(val));for(var key in val){if(val.hasOwnProperty(key))screenSize[key]=val[key]}if(!hasSetCustomSize){expandProperties['width']=screenSize['width'];expandProperties['height']=screenSize['height']}},expandProperties:function(val){broadcastEvent(EVENTS.INFO,'Merging expandProperties with '+stringify(val));for(var key in val){if(val.hasOwnProperty(key))expandProperties[key]=val[key]}}};var validate=function(obj,validators,action,merge){if(!merge){if(obj===null){broadcastEvent(EVENTS.ERROR,'Required object not provided.',action);return false}else{for(var i in validators){if(validators.hasOwnProperty(i)&&obj[i]===undefined){broadcastEvent(EVENTS.ERROR,'Object is missing required property: '+i+'.',action);return false}}}}for(var prop in obj){var validator=validators[prop];var value=obj[prop];if(validator&&!validator(value)){broadcastEvent(EVENTS.ERROR,'Value of property '+prop+' is invalid.',action);return false}}return true};var expandPropertyValidators={width:function(v){return!isNaN(v)&&v>=0},height:function(v){return!isNaN(v)&&v>=0},useCustomClose:function(v){return(typeof v==='boolean')},lockOrientation:function(v){return(typeof v==='boolean')}};bridge.addEventListener('change',function(properties){for(var p in properties){if(properties.hasOwnProperty(p)){var handler=changeHandlers[p];handler(properties[p])}}});bridge.addEventListener('error',function(message,action){broadcastEvent(EVENTS.ERROR,message,action)});bridge.addEventListener('ready',function(){broadcastEvent(EVENTS.READY)});mraid.addEventListener=function(event,listener){if(!event||!listener){broadcastEvent(EVENTS.ERROR,'Both event and listener are required.','addEventListener')}else if(!contains(event,EVENTS)){broadcastEvent(EVENTS.ERROR,'Unknown MRAID event: '+event,'addEventListener')}else{if(!listeners[event])listeners[event]=new EventListeners(event);listeners[event].add(listener)}};mraid.close=function(){if(state===STATES.HIDDEN){broadcastEvent(EVENTS.ERROR,'Ad cannot be closed when it is already hidden.','close')}else bridge.executeNativeCall('close')};mraid.playVideo=function(URL,properties){if(state==STATES.DEFAULT||state==STATES.EXPANDED){var args=['playVideo'];if(URL){args=args.concat(['url',URL])}var audioMuted=false,autoPlay=true,controls=true,loop=false,position=[-1,-1,-1,-1],startStyle='normal',stopStyle='normal';if(properties){if((typeof properties.audio!=\"undefined\")&&(properties.audio!=null)){audioMuted=properties.audio}if((typeof properties.autoplay!=\"undefined\")&&(properties.autoplay!=null)){autoPlay=properties.autoplay}if((typeof properties.controls!=\"undefined\")&&(properties.controls!=null)){controls=properties.controls}if((typeof properties.loop!=\"undefined\")&&(properties.loop!=null)){loop=properties.loop}if((typeof properties.position!=\"undefined\")&&(properties.position!=null)){inline=new Array(4);inline[0]=properties.position.top;inline[1]=properties.position.left;if((typeof properties.position.width!=\"undefined\")&&(properties.position.width!=null)){inline[2]=properties.position.width}if((typeof properties.position.height!=\"undefined\")&&(properties.position.height!=null)){inline[3]=properties.position.height}position=inline}if((typeof properties.startStyle!=\"undefined\")&&(properties.startStyle!=null)){startStyle=properties.startStyle}if((typeof properties.stopStyle!=\"undefined\")&&(properties.stopStyle!=null)){stopStyle=properties.stopStyle}if(loop){stopStyle='normal';controls=true}if(!autoPlay){controls=true}if(!controls){stopStyle='exit'}if(position[0]==-1||position[1]==-1){startStyle='fullscreen';autoPlay=true}args=args.concat(['audioMuted',audioMuted]);args=args.concat(['autoPlay',autoPlay]);args=args.concat(['controls',controls]);args=args.concat(['loop',loop]);args=args.concat(['position',position]);args=args.concat(['startStyle',startStyle]);args=args.concat(['stopStyle',stopStyle])}bridge.executeNativeCall.apply(this,args)}};mraid.log=function(level,log){var args=['log','level',level,'log',log];bridge.executeNativeCall.apply(this,args)};mraid.expand=function(URL){if(state!==STATES.DEFAULT){broadcastEvent(EVENTS.ERROR,'Ad can only be expanded from the default state.','expand')}else{var args=['expand'];if(hasSetCustomClose){args=args.concat(['shouldUseCustomClose',expandProperties.useCustomClose?'true':'false'])}if(hasSetCustomSize){if(expandProperties.width>=0&&expandProperties.height>=0){args=args.concat(['w',expandProperties.width,'h',expandProperties.height])}}if(typeof expandProperties.lockOrientation!=='undefined'){args=args.concat(['lockOrientation',expandProperties.lockOrientation])}if(URL){args=args.concat(['url',URL])}bridge.executeNativeCall.apply(this,args)}};mraid.getExpandProperties=function(){var properties={width:expandProperties.width,height:expandProperties.height,useCustomClose:expandProperties.useCustomClose,isModal:expandProperties.isModal};return properties};mraid.getPlacementType=function(){return placementType};mraid.getState=function(){return state};mraid.getVersion=function(){return mraid.VERSION};mraid.isViewable=function(){return isViewable};mraid.open=function(URL){if(!URL)broadcastEvent(EVENTS.ERROR,'URL is required.','open');else bridge.executeNativeCall('open','url',URL)};mraid.removeEventListener=function(event,listener){if(!event)broadcastEvent(EVENTS.ERROR,'Event is required.','removeEventListener');else{if(listener&&(!listeners[event]||!listeners[event].remove(listener))){broadcastEvent(EVENTS.ERROR,'Listener not currently registered for event.','removeEventListener');return}else if(listeners[event])listeners[event].removeAll();if(listeners[event]&&listeners[event].count===0){listeners[event]=null;delete listeners[event]}}};mraid.setExpandProperties=function(properties){if(validate(properties,expandPropertyValidators,'setExpandProperties',true)){if(properties.hasOwnProperty('width')||properties.hasOwnProperty('height')){hasSetCustomSize=true}if(properties.hasOwnProperty('useCustomClose'))hasSetCustomClose=true;var desiredProperties=['width','height','useCustomClose','lockOrientation'];var length=desiredProperties.length;for(var i=0;i<length;i++){var propname=desiredProperties[i];if(properties.hasOwnProperty(propname))expandProperties[propname]=properties[propname]}}};mraid.useCustomClose=function(shouldUseCustomClose){expandProperties.useCustomClose=shouldUseCustomClose;hasSetCustomClose=true;bridge.executeNativeCall('usecustomclose','shouldUseCustomClose',shouldUseCustomClose)}}());</script>"), WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT, null);
        return true;
    }

    public void loadUrlForTwoPartExpansionView(String str) {
        WebRequest createNewWebRequest = WebRequest.createNewWebRequest();
        createNewWebRequest.setUrlString(str);
        try {
            loadHtmlData(createNewWebRequest.makeCall().getBody());
        } catch (WebRequestException e) {
            o();
        }
    }

    protected void onAttachedToWindow() {
        if (!this.p) {
            super.onAttachedToWindow();
            this.n = true;
            if (this.h != null) {
                this.h.a();
            }
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.n = false;
        if (this.h != null) {
            this.h.b();
        }
    }

    protected void onWindowVisibilityChanged(int i) {
        if (this.n && this.o != i && i != 0 && this.h != null) {
            this.h.b();
        }
    }

    public void prepareToGoAway() {
        this.p = true;
        if (this.h != null) {
            this.h.j();
        }
    }

    public void registerReceivers() {
        this.h.a();
    }

    public void setAdView(AdView adView) {
        this.c = adView;
        b();
        n();
    }

    public void setOnCloseButtonStateChange(OnCloseButtonStateChangeListener onCloseButtonStateChangeListener) {
        this.m.e = onCloseButtonStateChangeListener;
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.m.b = onCloseListener;
    }

    public void setOnExpandListener(OnExpandListener onExpandListener) {
        this.m.a = onExpandListener;
    }

    public void setOnFailureListener(OnFailureListener onFailureListener) {
        this.m.d = onFailureListener;
    }

    public void setOnOpenListener(OnOpenListener onOpenListener) {
        this.m.f = onOpenListener;
    }

    public void setOnReadyListener(OnReadyListener onReadyListener) {
        this.m.c = onReadyListener;
    }

    public void setOnSpecialUrlClickListener(OnSpecialUrlClickListener onSpecialUrlClickListener) {
        this.m.g = onSpecialUrlClickListener;
    }

    public boolean shouldDisableWebViewHardwareAcceleration() {
        return this.c.shouldDisableWebViewHardwareAcceleration();
    }

    public void unregisterReceivers() {
        this.h.b();
    }
}