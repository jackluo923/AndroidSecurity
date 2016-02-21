package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.andymstone.compasslib.v;
import com.andymstone.core.o;
import com.mopub.mobileads.util.Strings;
import java.io.IOException;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.impl.client.DefaultHttpClient;

public class MraidView extends BaseWebView {
    private MraidBrowserController a;
    private MraidDisplayController b;
    private WebViewClient c;
    private WebChromeClient d;
    private boolean e;
    private final PlacementType f;
    private MraidListenerInfo g;

    public interface OnReadyListener {
        void a(MraidView mraidView);
    }

    public interface OnCloseButtonStateChangeListener {
        void a(MraidView mraidView, boolean z);
    }

    public interface OnCloseListener {
        void a(MraidView mraidView, com.mopub.mobileads.MraidView.ViewState viewState);
    }

    public interface OnFailureListener {
        void a(MraidView mraidView);
    }

    public interface OnExpandListener {
        void a(MraidView mraidView);
    }

    public enum ExpansionStyle {
        ENABLED,
        DISABLED;

        static {
            a = new com.mopub.mobileads.MraidView.ExpansionStyle("ENABLED", 0);
            b = new com.mopub.mobileads.MraidView.ExpansionStyle("DISABLED", 1);
            c = new com.mopub.mobileads.MraidView.ExpansionStyle[]{a, b};
        }
    }

    class MraidListenerInfo {
        private com.mopub.mobileads.MraidView.OnExpandListener a;
        private com.mopub.mobileads.MraidView.OnCloseListener b;
        private com.mopub.mobileads.MraidView.OnReadyListener c;
        private com.mopub.mobileads.MraidView.OnFailureListener d;
        private com.mopub.mobileads.MraidView.OnCloseButtonStateChangeListener e;
        private com.mopub.mobileads.MraidView.OnOpenListener f;

        MraidListenerInfo() {
        }
    }

    class MraidWebChromeClient extends WebChromeClient {
        private MraidWebChromeClient() {
        }

        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            Log.d("MraidView", str2);
            return false;
        }
    }

    class MraidWebViewClient extends WebViewClient {
        private MraidWebViewClient() {
        }

        public void onLoadResource(WebView webView, String str) {
            Log.d("MraidView", new StringBuilder("Loaded resource: ").append(str).toString());
        }

        public void onPageFinished(WebView webView, String str) {
            if (!MraidView.this.e) {
                MraidView.this.b.c();
                MraidView.this.a(MraidPlacementTypeProperty.a(MraidView.this.f));
                MraidView.this.a();
                if (MraidView.this.getOnReadyListener() != null) {
                    MraidView.this.getOnReadyListener().a(MraidView.this);
                }
                MraidView.this.e = true;
            }
        }

        public void onReceivedError(WebView webView, int i, String str, String str2) {
            Log.d("MraidView", new StringBuilder("Error: ").append(str).toString());
            super.onReceivedError(webView, i, str, str2);
        }

        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            String scheme = Uri.parse(str).getScheme();
            if (scheme.equals("mopub")) {
                return true;
            }
            if (scheme.equals("mraid")) {
                MraidView.this.a(URI.create(str));
                return true;
            } else {
                Intent intent = new Intent();
                intent.setAction("android.intent.action.VIEW");
                intent.setData(Uri.parse(str));
                intent.addFlags(268435456);
                try {
                    MraidView.this.getContext().startActivity(intent);
                    return true;
                } catch (ActivityNotFoundException e) {
                    return false;
                }
            }
        }
    }

    public enum NativeCloseButtonStyle {
        ALWAYS_VISIBLE,
        ALWAYS_HIDDEN,
        AD_CONTROLLED;

        static {
            a = new com.mopub.mobileads.MraidView.NativeCloseButtonStyle("ALWAYS_VISIBLE", 0);
            b = new com.mopub.mobileads.MraidView.NativeCloseButtonStyle("ALWAYS_HIDDEN", 1);
            c = new com.mopub.mobileads.MraidView.NativeCloseButtonStyle("AD_CONTROLLED", 2);
            d = new com.mopub.mobileads.MraidView.NativeCloseButtonStyle[]{a, b, c};
        }
    }

    public interface OnOpenListener {
        void a(MraidView mraidView);
    }

    public enum PlacementType {
        INLINE,
        INTERSTITIAL;

        static {
            a = new com.mopub.mobileads.MraidView.PlacementType("INLINE", 0);
            b = new com.mopub.mobileads.MraidView.PlacementType("INTERSTITIAL", 1);
            c = new com.mopub.mobileads.MraidView.PlacementType[]{a, b};
        }
    }

    public enum ViewState {
        LOADING,
        DEFAULT,
        EXPANDED,
        HIDDEN;

        static {
            a = new com.mopub.mobileads.MraidView.ViewState("LOADING", 0);
            b = new com.mopub.mobileads.MraidView.ViewState("DEFAULT", 1);
            c = new com.mopub.mobileads.MraidView.ViewState("EXPANDED", 2);
            d = new com.mopub.mobileads.MraidView.ViewState("HIDDEN", 3);
            e = new com.mopub.mobileads.MraidView.ViewState[]{a, b, c, d};
        }
    }

    public MraidView(Context context) {
        this(context, ExpansionStyle.a, NativeCloseButtonStyle.c, PlacementType.a);
    }

    public MraidView(Context context, ExpansionStyle expansionStyle, NativeCloseButtonStyle nativeCloseButtonStyle, PlacementType placementType) {
        super(context);
        this.f = placementType;
        a(expansionStyle, nativeCloseButtonStyle);
    }

    private void a(ExpansionStyle expansionStyle, NativeCloseButtonStyle nativeCloseButtonStyle) {
        setScrollContainer(false);
        setBackgroundColor(0);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case v.DropShadowView_cornerRadius:
                    case o.MyAlertDialog_myAlertDialogAccentColor:
                        if (!view.hasFocus()) {
                            view.requestFocus();
                        }
                        break;
                }
                return false;
            }
        });
        getSettings().setJavaScriptEnabled(true);
        this.a = new MraidBrowserController(this);
        this.b = new MraidDisplayController(this, expansionStyle, nativeCloseButtonStyle);
        this.c = new MraidWebViewClient(null);
        setWebViewClient(this.c);
        this.d = new MraidWebChromeClient(null);
        setWebChromeClient(this.d);
        this.g = new MraidListenerInfo();
    }

    private boolean a(URI uri) {
        String host = uri.getHost();
        List parse = URLEncodedUtils.parse(uri, "UTF-8");
        Map hashMap = new HashMap();
        Iterator it = parse.iterator();
        while (it.hasNext()) {
            NameValuePair nameValuePair = (NameValuePair) it.next();
            hashMap.put(nameValuePair.getName(), nameValuePair.getValue());
        }
        MraidCommand a = MraidCommandRegistry.a(host, hashMap, this);
        if (a == null) {
            c(host);
            return false;
        } else {
            a.a();
            c(host);
            return true;
        }
    }

    private void b() {
        if (this.g.d != null) {
            this.g.d.a(this);
        }
    }

    protected void a() {
        b("window.mraidbridge.fireReadyEvent();");
    }

    protected void a(MraidProperty mraidProperty) {
        String toString = new StringBuilder("{").append(mraidProperty.toString()).append("}").toString();
        b(new StringBuilder("window.mraidbridge.fireChangeEvent(").append(toString).append(");").toString());
        Log.d("MraidView", new StringBuilder("Fire change: ").append(toString).toString());
    }

    public void a(String str) {
        if (str != null) {
            if (str.indexOf("<html>") == -1) {
                str = new StringBuilder("<html><head></head><body style='margin:0;padding:0;'>").append(str).append("</body></html>").toString();
            }
            loadDataWithBaseURL(null, str.replace("<head>", "<head><script>(function() {\n  var isIOS = (/iphone|ipad|ipod/i).test(window.navigator.userAgent.toLowerCase()); \n  if (isIOS) {\n    console = {};\n    console.log = function(log) {\n      var iframe = document.createElement('iframe');\n      iframe.setAttribute('src', 'ios-log: ' + log);\n      document.documentElement.appendChild(iframe);\n      iframe.parentNode.removeChild(iframe);\n      iframe = null;\n    };\n    console.debug = console.info = console.warn = console.error = console.log;\n  }\n}());\n\n(function() {\n  // Establish the root mraidbridge object.\n  var mraidbridge = window.mraidbridge = {};\n  \n  // Listeners for bridge events.\n  var listeners = {};\n  \n  // Queue to track pending calls to the native SDK.\n  var nativeCallQueue = [];\n  \n  // Whether a native call is currently in progress.\n  var nativeCallInFlight = false;\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraidbridge.fireReadyEvent = function() {\n    mraidbridge.fireEvent('ready');\n  };\n  \n  mraidbridge.fireChangeEvent = function(properties) {\n    mraidbridge.fireEvent('change', properties);\n  };\n  \n  mraidbridge.fireErrorEvent = function(message, action) {\n    mraidbridge.fireEvent('error', message, action);\n  };\n\n  mraidbridge.fireEvent = function(type) {\n    var ls = listeners[type];\n    if (ls) {\n      var args = Array.prototype.slice.call(arguments);\n      args.shift();\n      var l = ls.length;\n      for (var i = 0; i < l; i++) {\n        ls[i].apply(null, args);\n      }\n    }\n  };\n  \n  mraidbridge.nativeCallComplete = function(command) {\n    if (nativeCallQueue.length === 0) {\n      nativeCallInFlight = false;\n      return;\n    }\n    \n    var nextCall = nativeCallQueue.pop();\n    window.location = nextCall;\n  };\n  \n  mraidbridge.executeNativeCall = function(command) {\n    var call = 'mraid://' + command;\n    \n    var key, value;\n    var isFirstArgument = true;\n    \n    for (var i = 1; i < arguments.length; i += 2) {\n      key = arguments[i];\n      value = arguments[i + 1];\n      \n      if (value === null) continue;\n      \n      if (isFirstArgument) {\n        call += '?';\n        isFirstArgument = false;\n      } else {\n        call += '&';\n      }\n      \n      call += key + '=' + escape(value);\n    }\n\n    if (nativeCallInFlight) {\n      nativeCallQueue.push(call);\n    } else {\n      nativeCallInFlight = true;\n      window.location = call;\n    }\n  };\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraidbridge.addEventListener = function(event, listener) {\n    var eventListeners;\n    listeners[event] = listeners[event] || [];\n    eventListeners = listeners[event];\n    \n    for (var l in eventListeners) {\n      // Listener already registered, so no need to add it.\n      if (listener === l) return;\n    }\n    \n    eventListeners.push(listener);\n  };\n\n  mraidbridge.removeEventListener = function(event, listener) {\n    if (listeners.hasOwnProperty(event)) {\n      var eventListeners = listeners[event];\n      if (eventListeners) {\n        var idx = eventListeners.indexOf(listener);\n        if (idx !== -1) {\n          eventListeners.splice(idx, 1);\n        }\n      }\n    }\n  };\n}());\n\n(function() {\n  var mraid = window.mraid = {};\n  var bridge = window.mraidbridge;\n  \n  // Constants. ////////////////////////////////////////////////////////////////////////////////////\n  \n  var VERSION = mraid.VERSION = '1.0';\n  \n  var STATES = mraid.STATES = {\n    LOADING: 'loading',     // Initial state.\n    DEFAULT: 'default',\n    EXPANDED: 'expanded',\n    HIDDEN: 'hidden'\n  };\n  \n  var EVENTS = mraid.EVENTS = {\n    ERROR: 'error',\n    INFO: 'info',\n    READY: 'ready',\n    STATECHANGE: 'stateChange',\n    VIEWABLECHANGE: 'viewableChange'\n  };\n  \n  var PLACEMENT_TYPES = mraid.PLACEMENT_TYPES = {\n    UNKNOWN: 'unknown',\n    INLINE: 'inline',\n    INTERSTITIAL: 'interstitial'\n  };\n\n  // External MRAID state: may be directly or indirectly modified by the ad JS. ////////////////////\n\n  // Properties which define the behavior of an expandable ad.\n  var expandProperties = {\n    width: -1,\n    height: -1,\n    useCustomClose: false,\n    isModal: true,\n    lockOrientation: false\n  };\n\n  var hasSetCustomSize = false;\n\n  var hasSetCustomClose = false;\n \n  var listeners = {};\n\n  // Internal MRAID state. Modified by the native SDK. /////////////////////////////////////////////\n  \n  var state = STATES.LOADING;\n  \n  var isViewable = false;\n  \n  var screenSize = { width: -1, height: -1 };\n\n  var placementType = PLACEMENT_TYPES.UNKNOWN;\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  var EventListeners = function(event) {\n    this.event = event;\n    this.count = 0;\n    var listeners = {};\n    \n    this.add = function(func) {\n      var id = String(func);\n      if (!listeners[id]) {\n        listeners[id] = func;\n        this.count++;\n      }\n    };\n    \n    this.remove = function(func) {\n      var id = String(func);\n      if (listeners[id]) {\n        listeners[id] = null;\n        delete listeners[id];\n        this.count--;\n        return true;\n      } else {\n        return false;\n      }\n    };\n    \n    this.removeAll = function() {\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) this.remove(listeners[id]);\n      }\n    };\n    \n    this.broadcast = function(args) {\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) listeners[id].apply({}, args);\n      }\n    };\n    \n    this.toString = function() {\n      var out = [event, ':'];\n      for (var id in listeners) {\n        if (listeners.hasOwnProperty(id)) out.push('|', id, '|');\n      }\n      return out.join('');\n    };\n  };\n  \n  var broadcastEvent = function() {\n    var args = new Array(arguments.length);\n    var l = arguments.length;\n    for (var i = 0; i < l; i++) args[i] = arguments[i];\n    var event = args.shift();\n    if (listeners[event]) listeners[event].broadcast(args);\n  };\n  \n  var contains = function(value, array) {\n    for (var i in array) {\n      if (array[i] === value) return true;\n    }\n    return false;\n  };\n  \n  var clone = function(obj) {\n    if (obj === null) return null;\n    var f = function() {};\n    f.prototype = obj;\n    return new f();\n  };\n  \n  var stringify = function(obj) {\n    if (typeof obj === 'object') {\n      var out = [];\n      if (obj.push) {\n        // Array.\n        for (var p in obj) out.push(obj[p]);\n        return '[' + out.join(',') + ']';\n      } else {\n        // Other object.\n        for (var p in obj) out.push(\"'\" + p + \"': \" + obj[p]);\n        return '{' + out.join(',') + '}';\n      }\n    } else return String(obj);\n  };\n  \n  var trim = function(str) {\n    return str.replace(/^\\s+|\\s+$/g, '');\n  };\n  \n  // Functions that will be invoked by the native SDK whenever a \"change\" event occurs.\n  var changeHandlers = {\n    state: function(val) {\n      if (state === STATES.LOADING) {\n        broadcastEvent(EVENTS.INFO, 'Native SDK initialized.');\n      }\n      state = val;\n      broadcastEvent(EVENTS.INFO, 'Set state to ' + stringify(val));\n      broadcastEvent(EVENTS.STATECHANGE, state);\n    },\n    \n    viewable: function(val) {\n      isViewable = val;\n      broadcastEvent(EVENTS.INFO, 'Set isViewable to ' + stringify(val));\n      broadcastEvent(EVENTS.VIEWABLECHANGE, isViewable);\n    },\n    \n    placementType: function(val) {\n      broadcastEvent(EVENTS.INFO, 'Set placementType to ' + stringify(val));\n      placementType = val;\n    },\n\n    screenSize: function(val) {\n      broadcastEvent(EVENTS.INFO, 'Set screenSize to ' + stringify(val));\n      for (var key in val) {\n        if (val.hasOwnProperty(key)) screenSize[key] = val[key];\n      }\n\n      if (!hasSetCustomSize) {\n        expandProperties['width'] = screenSize['width'];\n        expandProperties['height'] = screenSize['height'];\n      }\n    },\n    \n    expandProperties: function(val) {\n      broadcastEvent(EVENTS.INFO, 'Merging expandProperties with ' + stringify(val));\n      for (var key in val) {\n        if (val.hasOwnProperty(key)) expandProperties[key] = val[key];\n      }\n    }\n  };\n  \n  var validate = function(obj, validators, action, merge) {\n    if (!merge) {\n      // Check to see if any required properties are missing.\n      if (obj === null) {\n        broadcastEvent(EVENTS.ERROR, 'Required object not provided.', action);\n        return false;\n      } else {\n        for (var i in validators) {\n          if (validators.hasOwnProperty(i) && obj[i] === undefined) {\n            broadcastEvent(EVENTS.ERROR, 'Object is missing required property: ' + i + '.', action);\n            return false;\n          }\n        }\n      }\n    }\n    \n    for (var prop in obj) {\n      var validator = validators[prop];\n      var value = obj[prop];\n      if (validator && !validator(value)) {\n        // Failed validation.\n        broadcastEvent(EVENTS.ERROR, 'Value of property ' + prop + ' is invalid.', \n          action);\n        return false;\n      }\n    }\n    return true;\n  };\n  \n  var expandPropertyValidators = {\n    width: function(v) { return !isNaN(v) && v >= 0; },\n    height: function(v) { return !isNaN(v) && v >= 0; },\n    useCustomClose: function(v) { return (typeof v === 'boolean'); },\n    lockOrientation: function(v) { return (typeof v === 'boolean'); }\n  };\n  \n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  bridge.addEventListener('change', function(properties) {\n    for (var p in properties) {\n      if (properties.hasOwnProperty(p)) {\n        var handler = changeHandlers[p];\n        handler(properties[p]);\n      }\n    }\n  });\n  \n  bridge.addEventListener('error', function(message, action) {\n    broadcastEvent(EVENTS.ERROR, message, action);\n  });\n  \n  bridge.addEventListener('ready', function() {\n    broadcastEvent(EVENTS.READY);\n  });\n\n  //////////////////////////////////////////////////////////////////////////////////////////////////\n  \n  mraid.addEventListener = function(event, listener) {\n    if (!event || !listener) {\n      broadcastEvent(EVENTS.ERROR, 'Both event and listener are required.', 'addEventListener');\n    } else if (!contains(event, EVENTS)) {\n      broadcastEvent(EVENTS.ERROR, 'Unknown MRAID event: ' + event, 'addEventListener');\n    } else {\n      if (!listeners[event]) listeners[event] = new EventListeners(event);\n      listeners[event].add(listener);\n    }\n  };\n  \n  mraid.close = function() {\n    if (state === STATES.HIDDEN) {\n      broadcastEvent(EVENTS.ERROR, 'Ad cannot be closed when it is already hidden.',\n        'close');\n    } else bridge.executeNativeCall('close');\n  };\n  \n  mraid.expand = function(URL) {\n    if (state !== STATES.DEFAULT) {\n      broadcastEvent(EVENTS.ERROR, 'Ad can only be expanded from the default state.', 'expand');\n    } else {\n      var args = ['expand'];\n      \n      if (hasSetCustomClose) {\n        args = args.concat(['shouldUseCustomClose', expandProperties.useCustomClose ? 'true' : 'false']);\n      }\n\n      if (hasSetCustomSize) {\n        if (expandProperties.width >= 0 && expandProperties.height >= 0) {\n          args = args.concat(['w', expandProperties.width, 'h', expandProperties.height]);\n        }\n      }\n      \n      if (typeof expandProperties.lockOrientation !== 'undefined') {\n        args = args.concat(['lockOrientation', expandProperties.lockOrientation]);\n      }\n\n      if (URL) {\n        args = args.concat(['url', URL]);\n      }\n      \n      bridge.executeNativeCall.apply(this, args);\n    }\n  };\n  \n  mraid.getExpandProperties = function() {\n    var properties = {\n      width: expandProperties.width,\n      height: expandProperties.height,\n      useCustomClose: expandProperties.useCustomClose,\n      isModal: expandProperties.isModal\n    };\n    return properties;\n  };\n  \n  mraid.getPlacementType = function() {\n    return placementType;\n  };\n  \n  mraid.getState = function() {\n    return state;\n  };\n  \n  mraid.getVersion = function() {\n    return mraid.VERSION;\n  };\n  \n  mraid.isViewable = function() {\n    return isViewable;\n  };\n  \n  mraid.open = function(URL) {\n    if (!URL) broadcastEvent(EVENTS.ERROR, 'URL is required.', 'open');\n    else bridge.executeNativeCall('open', 'url', URL);\n  };\n\n  mraid.removeEventListener = function(event, listener) {\n    if (!event) broadcastEvent(EVENTS.ERROR, 'Event is required.', 'removeEventListener');\n    else {\n      if (listener && (!listeners[event] || !listeners[event].remove(listener))) {\n        broadcastEvent(EVENTS.ERROR, 'Listener not currently registered for event.', \n          'removeEventListener');\n        return;\n      } else if (listeners[event]) listeners[event].removeAll();\n      \n      if (listeners[event] && listeners[event].count === 0) {\n        listeners[event] = null;\n        delete listeners[event];\n      }\n    }\n  };\n  \n  mraid.setExpandProperties = function(properties) {\n    if (validate(properties, expandPropertyValidators, 'setExpandProperties', true)) {\n      if (properties.hasOwnProperty('width') || properties.hasOwnProperty('height')) {\n        hasSetCustomSize = true;\n      }\n\n      if (properties.hasOwnProperty('useCustomClose')) hasSetCustomClose = true;\n\n      var desiredProperties = ['width', 'height', 'useCustomClose', 'lockOrientation'];\n      var length = desiredProperties.length;\n      for (var i = 0; i < length; i++) {\n        var propname = desiredProperties[i];\n        if (properties.hasOwnProperty(propname)) expandProperties[propname] = properties[propname];\n      }\n    }\n  };\n  \n  mraid.useCustomClose = function(shouldUseCustomClose) {\n    expandProperties.useCustomClose = shouldUseCustomClose;\n    hasSetCustomClose = true;\n    bridge.executeNativeCall('usecustomclose', 'shouldUseCustomClose', shouldUseCustomClose);\n  };\n}());</script>"), "text/html", "UTF-8", null);
        }
    }

    protected void a(String str, String str2) {
        b(new StringBuilder("window.mraidbridge.fireErrorEvent('").append(str).append("', '").append(str2).append("');").toString());
    }

    protected void a(ArrayList arrayList) {
        String toString = arrayList.toString();
        if (toString.length() >= 2) {
            toString = new StringBuilder("{").append(toString.substring(1, toString.length() - 1)).append("}").toString();
            b(new StringBuilder("window.mraidbridge.fireChangeEvent(").append(toString).append(");").toString());
            Log.d("MraidView", new StringBuilder("Fire changes: ").append(toString).toString());
        }
    }

    protected void b(String str) {
        if (str != null) {
            super.loadUrl(new StringBuilder("javascript:").append(str).toString());
        }
    }

    protected void c(String str) {
        b(new StringBuilder("window.mraidbridge.nativeCallComplete('").append(str).append("');").toString());
    }

    public void destroy() {
        this.b.b();
        super.destroy();
    }

    protected MraidBrowserController getBrowserController() {
        return this.a;
    }

    protected MraidDisplayController getDisplayController() {
        return this.b;
    }

    public OnCloseButtonStateChangeListener getOnCloseButtonStateChangeListener() {
        return this.g.e;
    }

    public OnCloseListener getOnCloseListener() {
        return this.g.b;
    }

    public OnExpandListener getOnExpandListener() {
        return this.g.a;
    }

    public OnFailureListener getOnFailureListener() {
        return this.g.d;
    }

    public OnOpenListener getOnOpenListener() {
        return this.g.f;
    }

    public OnReadyListener getOnReadyListener() {
        return this.g.c;
    }

    public void loadUrl(String str) {
        String str2 = "";
        try {
            HttpEntity entity = new DefaultHttpClient().execute(new HttpGet(str)).getEntity();
            if (entity != null) {
                str2 = Strings.a(entity.getContent());
            }
            a(str2);
        } catch (IllegalArgumentException e) {
            Log.d("MoPub", new StringBuilder("Mraid loadUrl failed (IllegalArgumentException): ").append(str).toString());
            b();
        } catch (ClientProtocolException e2) {
            b();
        } catch (IOException e3) {
            b();
        }
    }

    public void setOnCloseButtonStateChange(OnCloseButtonStateChangeListener onCloseButtonStateChangeListener) {
        this.g.e = onCloseButtonStateChangeListener;
    }

    public void setOnCloseListener(OnCloseListener onCloseListener) {
        this.g.b = onCloseListener;
    }

    public void setOnExpandListener(OnExpandListener onExpandListener) {
        this.g.a = onExpandListener;
    }

    public void setOnFailureListener(OnFailureListener onFailureListener) {
        this.g.d = onFailureListener;
    }

    public void setOnOpenListener(OnOpenListener onOpenListener) {
        this.g.f = onOpenListener;
    }

    public void setOnReadyListener(OnReadyListener onReadyListener) {
        this.g.c = onReadyListener;
    }
}