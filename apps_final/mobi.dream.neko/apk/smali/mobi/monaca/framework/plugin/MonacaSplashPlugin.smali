.class public Lmobi/monaca/framework/plugin/MonacaSplashPlugin;
.super Lorg/apache/cordova/api/Plugin;
.source "MonacaSplashPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 27
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_show:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaSplashPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaPageActivity;->showMonacaSplash()V

    .line 29
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    .line 37
    :goto_0
    return-object v0

    .line 33
    :cond_0
    sget v0, Lmobi/monaca/framework/psedo/R$string;->nc_hide:I

    invoke-static {v0}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {p0}, Lmobi/monaca/framework/plugin/MonacaSplashPlugin;->getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lmobi/monaca/framework/MonacaPageActivity;->removeMonacaSplash()V

    .line 35
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 37
    :cond_1
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0
.end method

.method protected getMonacaPageActivity()Lmobi/monaca/framework/MonacaPageActivity;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lmobi/monaca/framework/plugin/MonacaSplashPlugin;->cordova:Lorg/apache/cordova/api/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmobi/monaca/framework/MonacaPageActivity;

    return-object v0
.end method
