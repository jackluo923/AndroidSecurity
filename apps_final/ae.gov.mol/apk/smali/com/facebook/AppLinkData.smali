.class public Lcom/facebook/AppLinkData;
.super Ljava/lang/Object;
.source "AppLinkData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppLinkData$CompletionHandler;,
        Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private arguments:Lorg/json/JSONObject;

.field private ref:[Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/facebook/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    .locals 1

    .prologue
    .line 151
    invoke-static {p0}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/facebook/AppLinkData;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    const-string v3, "activity"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 136
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 137
    const/4 v1, 0x0

    .line 148
    :cond_0
    :goto_0
    return-object v1

    .line 140
    :cond_1
    const-string v3, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "appLinkArgsJsonString":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;

    move-result-object v1

    .line 143
    .local v1, "appLinkData":Lcom/facebook/AppLinkData;
    if-nez v1, :cond_0

    .line 145
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;

    move-result-object v1

    goto :goto_0
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/facebook/AppLinkData;
    .locals 10
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 152
    if-nez p0, :cond_1

    move-object v1, v7

    .line 186
    :cond_0
    :goto_0
    return-object v1

    .line 158
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "appLinkArgsJson":Lorg/json/JSONObject;
    const-string v8, "version"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "version":Ljava/lang/String;
    const-string v8, "bridge_args"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 162
    .local v2, "bridgeArgs":Lorg/json/JSONObject;
    const-string v8, "method"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "method":Ljava/lang/String;
    const-string v8, "applink"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "2"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 165
    new-instance v1, Lcom/facebook/AppLinkData;

    invoke-direct {v1}, Lcom/facebook/AppLinkData;-><init>()V

    .line 166
    .local v1, "appLinkData":Lcom/facebook/AppLinkData;
    iput-object v6, v1, Lcom/facebook/AppLinkData;->version:Ljava/lang/String;

    .line 168
    const-string v8, "method_args"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    iput-object v8, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    .line 169
    iget-object v8, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v9, "ref"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 170
    iget-object v8, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v9, "ref"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "ref":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 172
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/facebook/AppLinkData;->ref:[Ljava/lang/String;

    .line 176
    .end local v5    # "ref":Ljava/lang/String;
    :cond_2
    iget-object v8, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v9, "target_url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 177
    iget-object v8, v1, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v9, "target_url"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v1, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v0    # "appLinkArgsJson":Lorg/json/JSONObject;
    .end local v1    # "appLinkData":Lcom/facebook/AppLinkData;
    .end local v2    # "bridgeArgs":Lorg/json/JSONObject;
    .end local v4    # "method":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Lorg/json/JSONException;
    sget-object v8, Lcom/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v9, "Unable to parse AppLink JSON"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Lorg/json/JSONException;
    :cond_3
    move-object v1, v7

    .line 186
    goto :goto_0
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/facebook/AppLinkData;
    .locals 1
    .param p0, "appLinkDataUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 190
    if-nez p0, :cond_0

    .line 196
    :cond_0
    return-object v0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "completionHandler"    # Lcom/facebook/AppLinkData$CompletionHandler;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V

    .line 68
    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/AppLinkData$CompletionHandler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "completionHandler"    # Lcom/facebook/AppLinkData$CompletionHandler;

    .prologue
    .line 82
    const-string v3, "context"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    const-string v3, "completionHandler"

    invoke-static {p2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    if-nez p1, :cond_0

    .line 86
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 89
    :cond_0
    const-string v3, "applicationId"

    invoke-static {p1, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;

    invoke-direct {v1, p0, p1}, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    .local v1, "client":Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;
    new-instance v0, Lcom/facebook/AppLinkData$1;

    invoke-direct {v0, p2}, Lcom/facebook/AppLinkData$1;-><init>(Lcom/facebook/AppLinkData$CompletionHandler;)V

    .line 113
    .local v0, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    invoke-virtual {v1, v0}, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    .line 115
    invoke-virtual {v1}, Lcom/facebook/AppLinkData$DeferredAppLinkDataClient;->start()Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 119
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/facebook/AppLinkData$2;

    invoke-direct {v3, p2}, Lcom/facebook/AppLinkData$2;-><init>(Lcom/facebook/AppLinkData$CompletionHandler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 126
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method


# virtual methods
.method public getArguments()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRef()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/AppLinkData;->ref:[Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method
