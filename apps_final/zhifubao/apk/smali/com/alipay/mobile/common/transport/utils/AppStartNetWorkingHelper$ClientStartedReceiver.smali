.class Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStartNetWorkingHelper.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;->b:Ljava/lang/Runnable;

    .line 51
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 68
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    :try_start_2
    const-string/jumbo v1, "AlipayHttpDnsInitHelper"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 68
    :catch_1
    move-exception v0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 66
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper$ClientStartedReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 67
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    .line 68
    :catch_3
    move-exception v0

    goto :goto_0
.end method
