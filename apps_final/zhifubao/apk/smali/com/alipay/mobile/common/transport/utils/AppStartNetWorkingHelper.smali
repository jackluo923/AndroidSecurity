.class public Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper;
.super Ljava/lang/Object;
.source "AppStartNetWorkingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static final runOnAppStart(Ljava/lang/Runnable;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 28
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isShowUserTip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    :try_start_0
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    .line 31
    new-instance v1, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;

    invoke-direct {v1, p1, p0}, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.alipay.mobile.client.STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v1, "AppStartNetWorkingHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
