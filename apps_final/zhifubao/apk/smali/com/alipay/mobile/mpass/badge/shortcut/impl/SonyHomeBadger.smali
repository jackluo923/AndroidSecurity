.class public Lcom/alipay/mobile/mpass/badge/shortcut/impl/SonyHomeBadger;
.super Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;
.source "SonyHomeBadger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected executeBadge(I)V
    .locals 3

    .prologue
    .line 26
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/SonyHomeBadger;->getContextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string/jumbo v0, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/SonyHomeBadger;->getEntryActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string/jumbo v0, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v2, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/SonyHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    return-void

    .line 30
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
