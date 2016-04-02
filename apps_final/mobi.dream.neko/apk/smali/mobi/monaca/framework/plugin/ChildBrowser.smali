.class public Lmobi/monaca/framework/plugin/ChildBrowser;
.super Lorg/apache/cordova/api/Plugin;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/plugin/ChildBrowser$ChildBrowserClient;
    }
.end annotation


# static fields
.field private static CLOSE_EVENT:I = 0x0

.field private static LOCATION_CHANGED_EVENT:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "ChildBrowser"


# instance fields
.field private browserCallbackId:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private edittext:Landroid/widget/EditText;

.field private showLocationBar:Z

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lmobi/monaca/framework/plugin/ChildBrowser;->CLOSE_EVENT:I

    .line 53
    const/4 v0, 0x1

    sput v0, Lmobi/monaca/framework/plugin/ChildBrowser;->LOCATION_CHANGED_EVENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->showLocationBar:Z

    .line 411
    return-void
.end method

.method static synthetic access$000(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;

    .prologue
    .line 49
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lmobi/monaca/framework/plugin/ChildBrowser;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 49
    iput-object p1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lmobi/monaca/framework/plugin/ChildBrowser;->CLOSE_EVENT:I

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lmobi/monaca/framework/plugin/ChildBrowser;->LOCATION_CHANGED_EVENT:I

    return v0
.end method

.method static synthetic access$200(Lmobi/monaca/framework/plugin/ChildBrowser;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lmobi/monaca/framework/plugin/ChildBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$300(Lmobi/monaca/framework/plugin/ChildBrowser;)V
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;

    .prologue
    .line 49
    invoke-direct {p0}, Lmobi/monaca/framework/plugin/ChildBrowser;->goBack()V

    return-void
.end method

.method static synthetic access$400(Lmobi/monaca/framework/plugin/ChildBrowser;)V
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;

    .prologue
    .line 49
    invoke-direct {p0}, Lmobi/monaca/framework/plugin/ChildBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$500(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;

    .prologue
    .line 49
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lmobi/monaca/framework/plugin/ChildBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 49
    iput-object p1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$600(Lmobi/monaca/framework/plugin/ChildBrowser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lmobi/monaca/framework/plugin/ChildBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lmobi/monaca/framework/plugin/ChildBrowser;)V
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;

    .prologue
    .line 49
    invoke-direct {p0}, Lmobi/monaca/framework/plugin/ChildBrowser;->closeDialog()V

    return-void
.end method

.method static synthetic access$800(Lmobi/monaca/framework/plugin/ChildBrowser;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;

    .prologue
    .line 49
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$802(Lmobi/monaca/framework/plugin/ChildBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 49
    iput-object p1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$900(Lmobi/monaca/framework/plugin/ChildBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/plugin/ChildBrowser;

    .prologue
    .line 49
    invoke-direct {p0}, Lmobi/monaca/framework/plugin/ChildBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 160
    :cond_0
    return-void
.end method

.method private getShowLocationBar()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->showLocationBar:Z

    return v0
.end method

.method private goBack()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 169
    :cond_0
    return-void
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 178
    :cond_0
    return-void
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 187
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 189
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

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

    .line 194
    :goto_0
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 195
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 401
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 402
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 403
    .local v0, "result":Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 404
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmobi/monaca/framework/plugin/ChildBrowser;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 406
    .end local v0    # "result":Lorg/apache/cordova/api/PluginResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 71
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 72
    .local v4, "status":Lorg/apache/cordova/api/PluginResult$Status;
    const-string v3, ""

    .line 75
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    const-string v5, "showWebPage"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    iput-object p3, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 79
    iget-object v5, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v6, "ChildBrowser is already open"

    invoke-direct {v2, v5, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-object v2

    .line 83
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lmobi/monaca/framework/plugin/ChildBrowser;->showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 86
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    .line 87
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v4, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v5}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v4, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 90
    .local v2, "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    goto :goto_0

    .line 94
    .end local v2    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :cond_2
    const-string v5, "close"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 95
    invoke-direct {p0}, Lmobi/monaca/framework/plugin/ChildBrowser;->closeDialog()V

    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v5, "type"

    sget v6, Lmobi/monaca/framework/plugin/ChildBrowser;->CLOSE_EVENT:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v4, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 101
    .restart local v2    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    goto :goto_0

    .line 104
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "pluginResult":Lorg/apache/cordova/api/PluginResult;
    :cond_3
    const-string v5, "openExternal"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 105
    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v6

    invoke-virtual {p0, v5, v6}, Lmobi/monaca/framework/plugin/ChildBrowser;->openExternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 107
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    .line 113
    :cond_4
    :goto_1
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v4, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_5
    sget-object v4, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public openExternal(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "usePhoneGap"    # Z

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 130
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lorg/apache/cordova/DroidGap;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 131
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 132
    const-string v3, "url"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v3, "loadUrlTimeoutValue"

    const v4, 0xea60

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v3, "loadingDialog"

    const-string v4, "Wait,Loading web page..."

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v3, "hideLoadingDialogOnPageLoad"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    :goto_0
    iget-object v3, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 146
    const-string v3, ""

    .line 149
    :goto_1
    return-object v3

    .line 142
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string v3, "ChildBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChildBrowser: Error loading url "

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

    .line 149
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 147
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method public showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 215
    if-eqz p2, :cond_0

    .line 216
    const-string v1, "showLocationBar"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->showLocationBar:Z

    .line 220
    :cond_0
    new-instance v0, Lmobi/monaca/framework/plugin/ChildBrowser$1;

    invoke-direct {v0, p0, p1}, Lmobi/monaca/framework/plugin/ChildBrowser$1;-><init>(Lmobi/monaca/framework/plugin/ChildBrowser;Ljava/lang/String;)V

    .line 391
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lmobi/monaca/framework/plugin/ChildBrowser;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 392
    const-string v1, ""

    return-object v1
.end method
