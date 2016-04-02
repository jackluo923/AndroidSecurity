.class public Lmobi/monaca/framework/MonacaChromeClient;
.super Lorg/apache/cordova/CordovaChromeClient;
.source "MonacaChromeClient.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private cordova:Lorg/apache/cordova/api/CordovaInterface;

.field private geolocationPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lmobi/monaca/framework/MonacaChromeClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/MonacaChromeClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/cordova/api/CordovaInterface;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 30
    iput-object p1, p0, Lmobi/monaca/framework/MonacaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 31
    iget-object v1, p0, Lmobi/monaca/framework/MonacaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 32
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->pref_geolocation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lmobi/monaca/framework/MonacaChromeClient;->geolocationPref:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 3
    .param p1, "ctx"    # Lorg/apache/cordova/api/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 38
    iput-object p1, p0, Lmobi/monaca/framework/MonacaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    .line 39
    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lmobi/monaca/framework/psedo/R$string;->pref_geolocation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lmobi/monaca/framework/MonacaChromeClient;->geolocationPref:Landroid/content/SharedPreferences;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lmobi/monaca/framework/MonacaChromeClient;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lmobi/monaca/framework/MonacaChromeClient;

    .prologue
    .line 22
    iget-object v0, p0, Lmobi/monaca/framework/MonacaChromeClient;->geolocationPref:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 8
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    const/4 v7, 0x0

    .line 45
    sget-object v4, Lmobi/monaca/framework/MonacaChromeClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lmobi/monaca/framework/MonacaChromeClient;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lmobi/monaca/framework/util/MyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    move-object v3, p1

    .line 47
    .local v3, "fOrigin":Ljava/lang/String;
    move-object v2, p2

    .line 49
    .local v2, "fCallback":Landroid/webkit/GeolocationPermissions$Callback;
    iget-object v4, p0, Lmobi/monaca/framework/MonacaChromeClient;->geolocationPref:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmobi/monaca/framework/MonacaChromeClient;->geolocationPref:Landroid/content/SharedPreferences;

    invoke-interface {v4, p1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const/4 v4, 0x1

    invoke-interface {p2, p1, v4, v7}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 79
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v4, p0, Lmobi/monaca/framework/MonacaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 54
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    sget v4, Lmobi/monaca/framework/psedo/R$string;->geo_confirm_title:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 56
    sget v4, Lmobi/monaca/framework/psedo/R$string;->geo_confirm_message:I

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 57
    const v4, 0x104000a

    new-instance v5, Lmobi/monaca/framework/MonacaChromeClient$1;

    invoke-direct {v5, p0, v3, v2}, Lmobi/monaca/framework/MonacaChromeClient$1;-><init>(Lmobi/monaca/framework/MonacaChromeClient;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    const v4, 0x1040009

    new-instance v5, Lmobi/monaca/framework/MonacaChromeClient$2;

    invoke-direct {v5, p0, v2, v3}, Lmobi/monaca/framework/MonacaChromeClient$2;-><init>(Lmobi/monaca/framework/MonacaChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    new-instance v4, Lmobi/monaca/framework/MonacaChromeClient$3;

    invoke-direct {v4, p0, v2, v3}, Lmobi/monaca/framework/MonacaChromeClient$3;-><init>(Lmobi/monaca/framework/MonacaChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 92
    iget-object v0, p0, Lmobi/monaca/framework/MonacaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/cordova/CordovaChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 102
    iget-object v0, p0, Lmobi/monaca/framework/MonacaChromeClient;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 105
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/cordova/CordovaChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "jsPromtResult"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 83
    sget v0, Lmobi/monaca/framework/psedo/R$string;->uri:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/apache/cordova/CordovaChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method
