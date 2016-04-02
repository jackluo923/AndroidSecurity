.class public Lorg/apache/cordova/InAppBrowser;
.super Lorg/apache/cordova/api/CordovaPlugin;
.source "InAppBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/InAppBrowser$InAppBrowserClient;
    }
.end annotation


# static fields
.field private static final CLEAR_ALL_CACHE:Ljava/lang/String; = "clearcache"

.field private static final CLEAR_SESSION_CACHE:Ljava/lang/String; = "clearsessioncache"

.field private static final CLOSE_BUTTON_CAPTION:Ljava/lang/String; = "closebuttoncaption"

.field private static final EXIT_EVENT:Ljava/lang/String; = "exit"

.field private static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final LOAD_ERROR_EVENT:Ljava/lang/String; = "loaderror"

.field private static final LOAD_START_EVENT:Ljava/lang/String; = "loadstart"

.field private static final LOAD_STOP_EVENT:Ljava/lang/String; = "loadstop"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final SELF:Ljava/lang/String; = "_self"

.field private static final SYSTEM:Ljava/lang/String; = "_system"


# instance fields
.field private buttonLabel:Ljava/lang/String;

.field private callbackContext:Lorg/apache/cordova/api/CallbackContext;

.field private clearAllCache:Z

.field private clearSessionCache:Z

.field private dialog:Landroid/app/Dialog;

.field private edittext:Landroid/widget/EditText;

.field private inAppWebView:Landroid/webkit/WebView;

.field private openWindowHidden:Z

.field private showLocationBar:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lorg/apache/cordova/api/CordovaPlugin;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 85
    iput-boolean v1, p0, Lorg/apache/cordova/InAppBrowser;->openWindowHidden:Z

    .line 86
    const-string v0, "Done"

    iput-object v0, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    .line 87
    iput-boolean v1, p0, Lorg/apache/cordova/InAppBrowser;->clearAllCache:Z

    .line 88
    iput-boolean v1, p0, Lorg/apache/cordova/InAppBrowser;->clearSessionCache:Z

    .line 634
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/InAppBrowser;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/cordova/InAppBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/cordova/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/cordova/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->openWindowHidden:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/cordova/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$1200(Lorg/apache/cordova/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/apache/cordova/api/PluginResult$Status;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->goBack()V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/cordova/InAppBrowser;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/cordova/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/cordova/InAppBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/cordova/InAppBrowser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/cordova/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->clearAllCache:Z

    return v0
.end method

.method static synthetic access$800(Lorg/apache/cordova/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    iget-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->clearSessionCache:Z

    return v0
.end method

.method static synthetic access$900(Lorg/apache/cordova/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/InAppBrowser;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/cordova/InAppBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method private getShowLocationBar()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    return v0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 348
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 357
    :cond_0
    return-void
.end method

.method private injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "jsWrapper"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 244
    if-eqz p2, :cond_0

    .line 245
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 246
    .local v1, "jsonEsc":Lorg/json/JSONArray;
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 247
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "jsonRepr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "jsonSourceString":Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .end local v1    # "jsonEsc":Lorg/json/JSONArray;
    .end local v2    # "jsonRepr":Ljava/lang/String;
    .end local v3    # "jsonSourceString":Ljava/lang/String;
    .local v4, "scriptToInject":Ljava/lang/String;
    :goto_0
    move-object v0, v4

    .line 255
    .local v0, "finalScriptToInject":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lorg/apache/cordova/InAppBrowser$3;

    invoke-direct {v6, p0, v0}, Lorg/apache/cordova/InAppBrowser$3;-><init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 261
    return-void

    .line 251
    .end local v0    # "finalScriptToInject":Ljava/lang/String;
    .end local v4    # "scriptToInject":Ljava/lang/String;
    :cond_0
    move-object v4, p1

    .restart local v4    # "scriptToInject":Ljava/lang/String;
    goto :goto_0
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 365
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 366
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 368
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 373
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 374
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseFeature(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "optString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 271
    const/4 v2, 0x0

    .line 288
    :cond_0
    return-object v2

    .line 273
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 274
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v0, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .local v0, "features":Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 277
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v3, "option":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 279
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "key":Ljava/lang/String;
    const-string v5, "closebuttoncaption"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 281
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/cordova/InAppBrowser;->buttonLabel:Ljava/lang/String;

    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 284
    .local v4, "value":Ljava/lang/Boolean;
    :goto_1
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    .end local v4    # "value":Ljava/lang/Boolean;
    :cond_4
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 609
    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V

    .line 610
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/api/PluginResult$Status;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z
    .param p3, "status"    # Lorg/apache/cordova/api/PluginResult$Status;

    .prologue
    .line 619
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    if-eqz v1, :cond_0

    .line 620
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v0, p3, p1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 621
    .local v0, "result":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 622
    iget-object v1, p0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    .line 623
    if-nez p2, :cond_0

    .line 624
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 627
    .end local v0    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public closeDialog()V
    .locals 5

    .prologue
    .line 316
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    .line 319
    .local v0, "childView":Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lorg/apache/cordova/InAppBrowser$4;

    invoke-direct {v4, p0, v0}, Lorg/apache/cordova/InAppBrowser$4;-><init>(Lorg/apache/cordova/InAppBrowser;Landroid/webkit/WebView;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 332
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 333
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "type"

    const-string v4, "exit"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lorg/apache/cordova/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "ex":Lorg/json/JSONException;
    const-string v3, "InAppBrowser"

    const-string v4, "Should never happen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/api/CallbackContext;)Z
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/api/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 99
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 100
    iput-object p3, p0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    .line 101
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 103
    .local v8, "t":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    const-string v8, "_self"

    .line 106
    :cond_1
    move-object v2, v8

    .line 107
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/InAppBrowser;->parseFeature(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 109
    .local v4, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v0, "InAppBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v0, Lorg/apache/cordova/InAppBrowser$1;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/InAppBrowser$1;-><init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lorg/apache/cordova/api/CallbackContext;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v8    # "t":Ljava/lang/String;
    :goto_0
    move v0, v9

    .line 207
    :cond_2
    return v0

    .line 156
    :cond_3
    const-string v1, "close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 157
    invoke-virtual {p0}, Lorg/apache/cordova/InAppBrowser;->closeDialog()V

    goto :goto_0

    .line 159
    :cond_4
    const-string v1, "injectScriptCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 160
    const/4 v6, 0x0

    .line 161
    .local v6, "jsWrapper":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 162
    const-string v1, "prompt(JSON.stringify([eval(%%s)]), \'gap-iab://%s\')"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 164
    :cond_5
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_6
    const-string v1, "injectScriptFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 168
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    const-string v1, "(function(d) { var c = d.createElement(\'script\'); c.src = %%s; c.onload = function() { prompt(\'\', \'gap-iab://%s\'); }; d.body.appendChild(c); })(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 173
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_7
    const-string v6, "(function(d) { var c = d.createElement(\'script\'); c.src = %s; d.body.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_1

    .line 175
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_8
    const-string v1, "injectStyleCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 177
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 178
    const-string v1, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %%s; d.body.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 182
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_9
    const-string v6, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %s; d.body.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_2

    .line 184
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_a
    const-string v1, "injectStyleFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 186
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 187
    const-string v1, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %%s; d.head.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/api/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 191
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_3
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 189
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_b
    const-string v6, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %s; d.head.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_3

    .line 193
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_c
    const-string v1, "show"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/InAppBrowser$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/InAppBrowser$2;-><init>(Lorg/apache/cordova/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    new-instance v7, Lorg/apache/cordova/api/PluginResult;

    sget-object v0, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v7, v0}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 201
    .local v7, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v7, v9}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 202
    iget-object v0, p0, Lorg/apache/cordova/InAppBrowser;->callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v0, v7}, Lorg/apache/cordova/api/CallbackContext;->sendPluginResult(Lorg/apache/cordova/api/PluginResult;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/apache/cordova/InAppBrowser;->closeDialog()V

    .line 224
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/apache/cordova/InAppBrowser;->closeDialog()V

    .line 216
    return-void
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 304
    iget-object v3, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 305
    const-string v3, ""
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 306
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v3, "InAppBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InAppBrowser: Error loading url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 306
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 394
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    iput-boolean v5, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 395
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/apache/cordova/InAppBrowser;->openWindowHidden:Z

    .line 396
    if-eqz p2, :cond_2

    .line 397
    const-string v5, "location"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 398
    .local v3, "show":Ljava/lang/Boolean;
    if-eqz v3, :cond_0

    .line 399
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/InAppBrowser;->showLocationBar:Z

    .line 401
    :cond_0
    const-string v5, "hidden"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 402
    .local v1, "hidden":Ljava/lang/Boolean;
    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/InAppBrowser;->openWindowHidden:Z

    .line 405
    :cond_1
    const-string v5, "clearcache"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 406
    .local v0, "cache":Ljava/lang/Boolean;
    if-eqz v0, :cond_3

    .line 407
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/InAppBrowser;->clearAllCache:Z

    .line 416
    .end local v0    # "cache":Ljava/lang/Boolean;
    .end local v1    # "hidden":Ljava/lang/Boolean;
    .end local v3    # "show":Ljava/lang/Boolean;
    :cond_2
    :goto_0
    iget-object v4, p0, Lorg/apache/cordova/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 419
    .local v4, "thatWebView":Lorg/apache/cordova/CordovaWebView;
    new-instance v2, Lorg/apache/cordova/InAppBrowser$5;

    invoke-direct {v2, p0, p1, v4}, Lorg/apache/cordova/InAppBrowser$5;-><init>(Lorg/apache/cordova/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 599
    .local v2, "runnable":Ljava/lang/Runnable;
    iget-object v5, p0, Lorg/apache/cordova/InAppBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    const-string v5, ""

    return-object v5

    .line 409
    .end local v2    # "runnable":Ljava/lang/Runnable;
    .end local v4    # "thatWebView":Lorg/apache/cordova/CordovaWebView;
    .restart local v0    # "cache":Ljava/lang/Boolean;
    .restart local v1    # "hidden":Ljava/lang/Boolean;
    .restart local v3    # "show":Ljava/lang/Boolean;
    :cond_3
    const-string v5, "clearsessioncache"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cache":Ljava/lang/Boolean;
    check-cast v0, Ljava/lang/Boolean;

    .line 410
    .restart local v0    # "cache":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 411
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lorg/apache/cordova/InAppBrowser;->clearSessionCache:Z

    goto :goto_0
.end method
