.class public Lcom/alipay/mobile/mpass/badge/shortcut/impl/ApexHomeBadger;
.super Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;
.source "ApexHomeBadger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected executeBadge(I)V
    .locals 3

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.anddoes.launcher.COUNTER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v1, "package"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/ApexHomeBadger;->getContextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string/jumbo v1, "class"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/ApexHomeBadger;->getEntryActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/ApexHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
