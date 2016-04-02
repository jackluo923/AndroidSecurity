.class public Lorg/apache/cordova/CordovaActivity;
.super Landroid/app/Activity;
.source "CordovaActivity.java"

# interfaces
.implements Lorg/apache/cordova/api/CordovaInterface;


# static fields
.field private static ACTIVITY_EXITING:I

.field private static ACTIVITY_RUNNING:I

.field private static ACTIVITY_STARTING:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private LOG_TAG:Ljava/lang/Object;

.field protected activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

.field protected activityResultKeepRunning:Z

.field private activityState:I

.field protected appView:Lorg/apache/cordova/CordovaWebView;

.field private backgroundColor:I

.field protected cancelLoadUrl:Z

.field private initCallbackClass:Ljava/lang/String;

.field protected keepRunning:Z

.field private lastIntent:Landroid/content/Intent;

.field private lastRequestCode:I

.field private lastResponseCode:Ljava/lang/Object;

.field protected loadUrlTimeoutValue:I

.field private responseCode:Ljava/lang/Object;

.field protected root:Landroid/widget/LinearLayout;

.field protected spinnerDialog:Landroid/app/ProgressDialog;

.field protected splashDialog:Landroid/app/Dialog;

.field protected splashscreen:I

.field protected splashscreenTime:I

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field protected webViewClient:Lorg/apache/cordova/CordovaWebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "CordovaActivity"

    sput-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_STARTING:I

    .line 155
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_RUNNING:I

    .line 156
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_EXITING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    iput-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->cancelLoadUrl:Z

    .line 146
    iput-object v2, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 147
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/CordovaActivity;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 157
    iput v1, p0, Lorg/apache/cordova/CordovaActivity;->activityState:I

    .line 160
    iput-object v2, p0, Lorg/apache/cordova/CordovaActivity;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    .line 165
    const/high16 v0, -0x1000000

    iput v0, p0, Lorg/apache/cordova/CordovaActivity;->backgroundColor:I

    .line 173
    iput v1, p0, Lorg/apache/cordova/CordovaActivity;->splashscreen:I

    .line 174
    const/16 v0, 0xbb8

    iput v0, p0, Lorg/apache/cordova/CordovaActivity;->splashscreenTime:I

    .line 177
    const/16 v0, 0x4e20

    iput v0, p0, Lorg/apache/cordova/CordovaActivity;->loadUrlTimeoutValue:I

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    return-void
.end method

.method private checkIntents()V
    .locals 4

    .prologue
    .line 257
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, "intentAction":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 260
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    const-string v2, "Cordova"

    const-string v3, "This isn\'t the root activity. Clearing it and returning to the root activity."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->finish()V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 770
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/api/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_0
    return-void
.end method

.method public backHistory()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->backHistory()Z

    move-result v0

    .line 495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelLoadUrl()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaActivity;->cancelLoadUrl:Z

    .line 467
    return-void
.end method

.method public clearAuthenticationTokens()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebViewClient;->clearAuthenticationTokens()V

    .line 252
    :cond_0
    return-void
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-nez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->init()V

    .line 476
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->clearCache(Z)V

    .line 477
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->clearHistory()V

    .line 484
    return-void
.end method

.method public displayError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "button"    # Ljava/lang/String;
    .param p4, "exit"    # Z

    .prologue
    .line 937
    move-object v2, p0

    .line 938
    .local v2, "me":Lorg/apache/cordova/CordovaActivity;
    new-instance v0, Lorg/apache/cordova/CordovaActivity$4;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/CordovaActivity$4;-><init>(Lorg/apache/cordova/CordovaActivity;Lorg/apache/cordova/CordovaActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CordovaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 961
    return-void
.end method

.method public endActivity()V
    .locals 1

    .prologue
    .line 821
    sget v0, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_EXITING:I

    iput v0, p0, Lorg/apache/cordova/CordovaActivity;->activityState:I

    .line 822
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 823
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 321
    return-object p0
.end method

.method public getAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;->getAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;

    move-result-object v0

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 517
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 518
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 537
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 521
    .restart local p2    # "defaultValue":Z
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 524
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .local v2, "p":Ljava/lang/Boolean;
    :goto_1
    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    .line 525
    .end local v2    # "p":Ljava/lang/Boolean;
    :catch_0
    move-exception v1

    .line 526
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "s":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 528
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .restart local v2    # "p":Ljava/lang/Boolean;
    goto :goto_1

    .line 531
    .end local v2    # "p":Ljava/lang/Boolean;
    :cond_2
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .restart local v2    # "p":Ljava/lang/Boolean;
    goto :goto_1
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 1001
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "This will be deprecated December 2012"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    return-object p0
.end method

.method public getDoubleProperty(Ljava/lang/String;D)D
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 593
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 594
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 607
    .end local p2    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p2

    .line 597
    .restart local p2    # "defaultValue":D
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 600
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .local v2, "p":Ljava/lang/Double;
    :goto_1
    if-eqz v2, :cond_0

    .line 607
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p2

    goto :goto_0

    .line 601
    .end local v2    # "p":Ljava/lang/Double;
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .restart local v2    # "p":Ljava/lang/Double;
    goto :goto_1
.end method

.method public getIntegerProperty(Ljava/lang/String;I)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 548
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 549
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 562
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 552
    .restart local p2    # "defaultValue":I
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 555
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .local v2, "p":Ljava/lang/Integer;
    :goto_1
    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 556
    .end local v2    # "p":Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .restart local v2    # "p":Ljava/lang/Integer;
    goto :goto_1
.end method

.method public getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 574
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 582
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 577
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 578
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, "p":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object p2, v1

    .line 582
    goto :goto_0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 328
    new-instance v0, Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v0, p0}, Lorg/apache/cordova/CordovaWebView;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, "webView":Lorg/apache/cordova/CordovaWebView;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 332
    new-instance v1, Lorg/apache/cordova/CordovaWebViewClient;

    invoke-direct {v1, p0, v0}, Lorg/apache/cordova/CordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 338
    .local v1, "webViewClient":Lorg/apache/cordova/CordovaWebViewClient;
    :goto_0
    new-instance v2, Lorg/apache/cordova/CordovaChromeClient;

    invoke-direct {v2, p0, v0}, Lorg/apache/cordova/CordovaChromeClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/cordova/CordovaActivity;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaWebViewClient;Lorg/apache/cordova/CordovaChromeClient;)V

    .line 339
    return-void

    .line 336
    .end local v1    # "webViewClient":Lorg/apache/cordova/CordovaWebViewClient;
    :cond_0
    new-instance v1, Lorg/apache/cordova/IceCreamCordovaWebViewClient;

    invoke-direct {v1, p0, v0}, Lorg/apache/cordova/IceCreamCordovaWebViewClient;-><init>(Lorg/apache/cordova/api/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .restart local v1    # "webViewClient":Lorg/apache/cordova/CordovaWebViewClient;
    goto :goto_0
.end method

.method public init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaWebViewClient;Lorg/apache/cordova/CordovaChromeClient;)V
    .locals 5
    .param p1, "webView"    # Lorg/apache/cordova/CordovaWebView;
    .param p2, "webViewClient"    # Lorg/apache/cordova/CordovaWebViewClient;
    .param p3, "webChromeClient"    # Lorg/apache/cordova/CordovaChromeClient;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 350
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "CordovaActivity.init()"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    .line 354
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setId(I)V

    .line 356
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p2}, Lorg/apache/cordova/CordovaWebView;->setWebViewClient(Lorg/apache/cordova/CordovaWebViewClient;)V

    .line 357
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p3}, Lorg/apache/cordova/CordovaWebView;->setWebChromeClient(Lorg/apache/cordova/CordovaChromeClient;)V

    .line 358
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaWebViewClient;->setWebView(Lorg/apache/cordova/CordovaWebView;)V

    .line 359
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CordovaChromeClient;->setWebView(Lorg/apache/cordova/CordovaWebView;)V

    .line 361
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    const-string v0, "DisallowOverscroll"

    invoke-virtual {p0, v0, v4}, Lorg/apache/cordova/CordovaActivity;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 368
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setOverScrollMode(I)V

    .line 373
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->root:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 375
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaActivity;->setContentView(Landroid/view/View;)V

    .line 378
    iput-boolean v4, p0, Lorg/apache/cordova/CordovaActivity;->cancelLoadUrl:Z

    .line 380
    return-void
.end method

.method public isUrlWhiteListed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 970
    invoke-static {p1}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method loadSpinner()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "loading":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v4}, Lorg/apache/cordova/CordovaWebView;->canGoBack()Z

    move-result v4

    if-nez v4, :cond_3

    .line 415
    :cond_0
    const-string v4, "LoadingDialog"

    invoke-virtual {p0, v4, v5}, Lorg/apache/cordova/CordovaActivity;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    :goto_0
    if-eqz v1, :cond_2

    .line 422
    const-string v3, ""

    .line 423
    .local v3, "title":Ljava/lang/String;
    const-string v2, "Loading Application..."

    .line 425
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 426
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 427
    .local v0, "comma":I
    if-lez v0, :cond_4

    .line 428
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 429
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 436
    .end local v0    # "comma":I
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v2}, Lorg/apache/cordova/CordovaActivity;->spinnerStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    return-void

    .line 418
    :cond_3
    const-string v4, "LoadingPageDialog"

    invoke-virtual {p0, v4, v5}, Lorg/apache/cordova/CordovaActivity;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 432
    .restart local v0    # "comma":I
    .restart local v2    # "message":Ljava/lang/String;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_4
    const-string v3, ""

    .line 433
    move-object v2, v1

    goto :goto_1
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->init()V

    .line 395
    :cond_0
    const-string v0, "BackgroundColor"

    const/high16 v1, -0x1000000

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CordovaActivity;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/CordovaActivity;->backgroundColor:I

    .line 396
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->root:Landroid/widget/LinearLayout;

    iget v1, p0, Lorg/apache/cordova/CordovaActivity;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 399
    const-string v0, "KeepRunning"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CordovaActivity;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    .line 402
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->loadSpinner()V

    .line 404
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public loadUrl(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "time"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->init()V

    .line 454
    :cond_0
    iput p2, p0, Lorg/apache/cordova/CordovaActivity;->splashscreenTime:I

    .line 455
    const-string v0, "SplashScreen"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/CordovaActivity;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/cordova/CordovaActivity;->splashscreen:I

    .line 456
    iget v0, p0, Lorg/apache/cordova/CordovaActivity;->splashscreenTime:I

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaActivity;->showSplashScreen(I)V

    .line 457
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;I)V

    .line 458
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 858
    sget-object v3, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v4, "Incoming Result"

    invoke-static {v3, v4}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 860
    sget-object v3, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v3, :cond_3

    const/16 v3, 0x1435

    if-ne p1, v3, :cond_3

    .line 862
    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaWebView;->getWebChromeClient()Lorg/apache/cordova/CordovaChromeClient;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/cordova/CordovaChromeClient;->getValueCallback()Landroid/webkit/ValueCallback;

    move-result-object v1

    .line 863
    .local v1, "mUploadMessage":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    sget-object v3, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v4, "did we get here?"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    if-nez v1, :cond_1

    .line 884
    .end local v1    # "mUploadMessage":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    return-void

    .line 866
    .restart local v1    # "mUploadMessage":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    :cond_1
    if-eqz p3, :cond_2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_5

    :cond_2
    const/4 v2, 0x0

    .line 867
    .local v2, "result":Landroid/net/Uri;
    :goto_1
    sget-object v3, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 873
    .end local v1    # "mUploadMessage":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    .end local v2    # "result":Landroid/net/Uri;
    :cond_3
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    .line 874
    .local v0, "callback":Lorg/apache/cordova/api/CordovaPlugin;
    if-nez v0, :cond_4

    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity;->initCallbackClass:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 877
    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v3, v3, Lorg/apache/cordova/CordovaWebView;->pluginManager:Lorg/apache/cordova/api/PluginManager;

    iget-object v4, p0, Lorg/apache/cordova/CordovaActivity;->initCallbackClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/apache/cordova/api/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/api/CordovaPlugin;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/cordova/CordovaActivity;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    .line 878
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    .line 880
    :cond_4
    if-eqz v0, :cond_0

    .line 881
    sget-object v3, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v4, "We have a callback to send this result to"

    invoke-static {v3, v4}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/api/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 866
    .end local v0    # "callback":Lorg/apache/cordova/api/CordovaPlugin;
    .restart local v1    # "mUploadMessage":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 507
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x800

    const/16 v8, 0x400

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 275
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;->checkIntents()V

    .line 276
    invoke-static {p0}, Lorg/apache/cordova/Config;->init(Landroid/app/Activity;)V

    .line 277
    sget-object v3, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v4, "CordovaActivity.onCreate()"

    invoke-static {v3, v4}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    if-eqz p1, :cond_0

    .line 282
    const-string v3, "callbackClass"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/cordova/CordovaActivity;->initCallbackClass:Ljava/lang/String;

    .line 285
    :cond_0
    const-string v3, "ShowTitle"

    invoke-virtual {p0, v3, v5}, Lorg/apache/cordova/CordovaActivity;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 287
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 290
    :cond_1
    const-string v3, "SetFullscreen"

    invoke-virtual {p0, v3, v5}, Lorg/apache/cordova/CordovaActivity;->getBooleanProperty(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 301
    :goto_0
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 302
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 303
    .local v2, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 305
    .local v1, "height":I
    new-instance v3, Lorg/apache/cordova/LinearLayoutSoftKeyboardDetect;

    invoke-direct {v3, p0, v2, v1}, Lorg/apache/cordova/LinearLayoutSoftKeyboardDetect;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lorg/apache/cordova/CordovaActivity;->root:Landroid/widget/LinearLayout;

    .line 306
    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 307
    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity;->root:Landroid/widget/LinearLayout;

    iget v4, p0, Lorg/apache/cordova/CordovaActivity;->backgroundColor:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 308
    iget-object v3, p0, Lorg/apache/cordova/CordovaActivity;->root:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/apache/cordova/CordovaActivity;->setVolumeControlStream(I)V

    .line 313
    return-void

    .line 297
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 979
    const-string v0, "onCreateOptionsMenu"

    invoke-virtual {p0, v0, p1}, Lorg/apache/cordova/CordovaActivity;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 980
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 734
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "CordovaActivity.onDestroy()"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 738
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->removeSplashScreen()V

    .line 740
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->handleDestroy()V

    .line 746
    :goto_0
    return-void

    .line 744
    :cond_0
    sget v0, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_EXITING:I

    iput v0, p0, Lorg/apache/cordova/CordovaActivity;->activityState:I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1101
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 1102
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1105
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1082
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->isCustomViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaWebView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 1084
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1086
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1117
    sget-object v2, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessage("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    const-string v2, "splashscreen"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1119
    const-string v2, "hide"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->removeSplashScreen()V

    .line 1147
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 1124
    :cond_1
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1125
    :cond_2
    const-string v2, "SplashScreen"

    invoke-virtual {p0, v2, v5}, Lorg/apache/cordova/CordovaActivity;->getIntegerProperty(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/apache/cordova/CordovaActivity;->splashscreen:I

    .line 1126
    iget v2, p0, Lorg/apache/cordova/CordovaActivity;->splashscreenTime:I

    invoke-virtual {p0, v2}, Lorg/apache/cordova/CordovaActivity;->showSplashScreen(I)V

    goto :goto_0

    .line 1130
    :cond_3
    const-string v2, "spinner"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1131
    const-string v2, "stop"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->spinnerStop()V

    .line 1133
    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v2, v5}, Lorg/apache/cordova/CordovaWebView;->setVisibility(I)V

    goto :goto_0

    .line 1136
    :cond_4
    const-string v2, "onReceivedError"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, p2

    .line 1137
    check-cast v0, Lorg/json/JSONObject;

    .line 1139
    .local v0, "d":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "errorCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "description"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/cordova/CordovaActivity;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1144
    .end local v0    # "d":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_5
    const-string v2, "exit"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1145
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->endActivity()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 685
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 687
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaWebView;->onNewIntent(Landroid/content/Intent;)V

    .line 689
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 991
    const-string v0, "onOptionsItemSelected"

    invoke-virtual {p0, v0, p1}, Lorg/apache/cordova/CordovaActivity;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 992
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 659
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 661
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "Paused the application!"

    invoke-static {v0, v1}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget v0, p0, Lorg/apache/cordova/CordovaActivity;->activityState:I

    sget v1, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_EXITING:I

    if-ne v0, v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->handlePause(Z)V

    .line 677
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->removeSplashScreen()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 985
    const-string v0, "onPrepareOptionsMenu"

    invoke-virtual {p0, v0, p1}, Lorg/apache/cordova/CordovaActivity;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 986
    const/4 v0, 0x1

    return v0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 899
    move-object v3, p0

    .line 902
    .local v3, "me":Lorg/apache/cordova/CordovaActivity;
    const-string v0, "errorUrl"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lorg/apache/cordova/CordovaActivity;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 903
    .local v6, "errorUrl":Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v0, "file://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6}, Lorg/apache/cordova/Config;->isUrlWhiteListed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 906
    new-instance v0, Lorg/apache/cordova/CordovaActivity$2;

    invoke-direct {v0, p0, v3, v6}, Lorg/apache/cordova/CordovaActivity$2;-><init>(Lorg/apache/cordova/CordovaActivity;Lorg/apache/cordova/CordovaActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CordovaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 926
    :goto_0
    return-void

    .line 916
    :cond_1
    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v2, 0x1

    .line 917
    .local v2, "exit":Z
    :goto_1
    new-instance v0, Lorg/apache/cordova/CordovaActivity$3;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/CordovaActivity$3;-><init>(Lorg/apache/cordova/CordovaActivity;ZLorg/apache/cordova/CordovaActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CordovaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 916
    .end local v2    # "exit":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 696
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 698
    invoke-static {p0}, Lorg/apache/cordova/Config;->init(Landroid/app/Activity;)V

    .line 700
    sget-object v1, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v2, "Resuming the App"

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v1, "ErrorUrl"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/cordova/CordovaActivity;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "errorUrl":Ljava/lang/String;
    sget-object v1, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CB-3064: The errorUrl is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/cordova/api/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget v1, p0, Lorg/apache/cordova/CordovaActivity;->activityState:I

    sget v2, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_STARTING:I

    if-ne v1, v2, :cond_1

    .line 708
    sget v1, Lorg/apache/cordova/CordovaActivity;->ACTIVITY_RUNNING:I

    iput v1, p0, Lorg/apache/cordova/CordovaActivity;->activityState:I

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-boolean v2, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    iget-boolean v3, p0, Lorg/apache/cordova/CordovaActivity;->activityResultKeepRunning:Z

    invoke-virtual {v1, v2, v3}, Lorg/apache/cordova/CordovaWebView;->handleResume(ZZ)V

    .line 719
    iget-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->activityResultKeepRunning:Z

    if-eqz v1, :cond_0

    .line 722
    :cond_2
    iget-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->activityResultKeepRunning:Z

    if-eqz v1, :cond_0

    .line 723
    iget-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->activityResultKeepRunning:Z

    iput-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    .line 724
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/cordova/CordovaActivity;->activityResultKeepRunning:Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1156
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1157
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    if-eqz v1, :cond_0

    .line 1159
    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "cClass":Ljava/lang/String;
    const-string v1, "callbackClass"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    .end local v0    # "cClass":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 755
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)V

    .line 758
    :cond_0
    return-void
.end method

.method public removeAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/CordovaWebViewClient;->removeAuthenticationToken(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/cordova/AuthenticationToken;

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSplashScreen()V
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1029
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaActivity;->splashDialog:Landroid/app/Dialog;

    .line 1031
    :cond_0
    return-void
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .param p1, "statement"    # Ljava/lang/String;

    .prologue
    .line 782
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->jsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addJavaScript(Ljava/lang/String;)V

    .line 785
    :cond_0
    return-void
.end method

.method public setActivityResultCallback(Lorg/apache/cordova/api/CordovaPlugin;)V
    .locals 0
    .param p1, "plugin"    # Lorg/apache/cordova/api/CordovaPlugin;

    .prologue
    .line 887
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    .line 888
    return-void
.end method

.method public setAuthenticationToken(Lorg/apache/cordova/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "authenticationToken"    # Lorg/apache/cordova/AuthenticationToken;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "realm"    # Ljava/lang/String;

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    iget-object v0, v0, Lorg/apache/cordova/CordovaWebView;->viewClient:Lorg/apache/cordova/CordovaWebViewClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/cordova/CordovaWebViewClient;->setAuthenticationToken(Lorg/apache/cordova/AuthenticationToken;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setBooleanProperty(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 617
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "Setting boolean properties in CordovaActivity will be deprecated in 3.0 on July 2013, please use config.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 619
    return-void
.end method

.method public setDoubleProperty(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 650
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "Setting double properties in CordovaActivity will be deprecated in 3.0 on July 2013, please use config.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 652
    return-void
.end method

.method public setIntegerProperty(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 628
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "Setting integer properties in CordovaActivity will be deprecated in 3.0 on July 2013, please use config.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    return-void
.end method

.method public setStringProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 639
    sget-object v0, Lorg/apache/cordova/CordovaActivity;->TAG:Ljava/lang/String;

    const-string v1, "Setting string properties in CordovaActivity will be deprecated in 3.0 on July 2013, please use config.xml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    return-void
.end method

.method protected showSplashScreen(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 1038
    move-object v1, p0

    .line 1040
    .local v1, "that":Lorg/apache/cordova/CordovaActivity;
    new-instance v0, Lorg/apache/cordova/CordovaActivity$5;

    invoke-direct {v0, p0, v1, p1}, Lorg/apache/cordova/CordovaActivity$5;-><init>(Lorg/apache/cordova/CordovaActivity;Lorg/apache/cordova/CordovaActivity;I)V

    .line 1076
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1077
    return-void
.end method

.method public showWebPage(Ljava/lang/String;ZZLjava/util/HashMap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "openExternal"    # Z
    .param p3, "clearHistory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->appView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/cordova/CordovaWebView;->showWebPage(Ljava/lang/String;ZZLjava/util/HashMap;)V

    .line 1019
    :cond_0
    return-void
.end method

.method public spinnerStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 794
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 796
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 798
    :cond_0
    move-object v6, p0

    .line 799
    .local v6, "me":Lorg/apache/cordova/CordovaActivity;
    new-instance v5, Lorg/apache/cordova/CordovaActivity$1;

    invoke-direct {v5, p0, v6}, Lorg/apache/cordova/CordovaActivity$1;-><init>(Lorg/apache/cordova/CordovaActivity;Lorg/apache/cordova/CordovaActivity;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 805
    return-void
.end method

.method public spinnerStop()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/CordovaActivity;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 815
    :cond_0
    return-void
.end method

.method public startActivityForResult(Lorg/apache/cordova/api/CordovaPlugin;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "command"    # Lorg/apache/cordova/api/CordovaPlugin;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 835
    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity;->activityResultCallback:Lorg/apache/cordova/api/CordovaPlugin;

    .line 836
    iget-boolean v0, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaActivity;->activityResultKeepRunning:Z

    .line 839
    if-eqz p1, :cond_0

    .line 840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/CordovaActivity;->keepRunning:Z

    .line 844
    :cond_0
    invoke-super {p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 845
    return-void
.end method
