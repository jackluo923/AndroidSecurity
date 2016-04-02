.class public Lcom/alipay/mobile/mpass/badge/shortcut/broadcast/AddBadgeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AddBadgeBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "badgeCount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    :try_start_0
    invoke-static {p1, v0}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadgeManager;->addBadge(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/mpass/badge/util/CommonUtil;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
