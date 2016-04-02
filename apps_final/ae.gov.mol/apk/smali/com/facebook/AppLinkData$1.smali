.class Lcom/facebook/AppLinkData$1;
.super Ljava/lang/Object;
.source "AppLinkData.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;


# direct methods
.method constructor <init>(Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/AppLinkData$1;->val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "appLinkData":Lcom/facebook/AppLinkData;
    if-eqz p1, :cond_0

    .line 97
    const-string v5, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "appLinkArgsJsonString":Ljava/lang/String;
    const-string v5, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 101
    .local v3, "tapTimeUtc":J
    # invokes: Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    invoke-static {v0}, Lcom/facebook/AppLinkData;->access$0(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    move-result-object v1

    .line 102
    cmp-long v5, v3, v6

    if-eqz v5, :cond_0

    .line 104
    :try_start_0
    invoke-virtual {v1}, Lcom/facebook/AppLinkData;->getArguments()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "com.facebook.platform.APPLINK_TAP_TIME_UTC"

    invoke-virtual {v5, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "appLinkArgsJsonString":Ljava/lang/String;
    .end local v3    # "tapTimeUtc":J
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/facebook/AppLinkData$1;->val$completionHandler:Lcom/facebook/AppLinkData$CompletionHandler;

    invoke-interface {v5, v1}, Lcom/facebook/AppLinkData$CompletionHandler;->onDeferredAppLinkDataFetched(Lcom/facebook/AppLinkData;)V

    .line 111
    return-void

    .line 105
    .restart local v0    # "appLinkArgsJsonString":Ljava/lang/String;
    .restart local v3    # "tapTimeUtc":J
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Lorg/json/JSONException;
    # getter for: Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AppLinkData;->access$1()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Unable to put tap time in AppLinkData.arguments"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
