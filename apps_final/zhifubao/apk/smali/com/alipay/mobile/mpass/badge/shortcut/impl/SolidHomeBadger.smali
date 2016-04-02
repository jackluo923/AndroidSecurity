.class public Lcom/alipay/mobile/mpass/badge/shortcut/impl/SolidHomeBadger;
.super Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;
.source "SolidHomeBadger.java"


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
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.majeur.launcher.intent.action.UPDATE_BADGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "com.majeur.launcher.intent.extra.BADGE_PACKAGE"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/SolidHomeBadger;->getContextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string/jumbo v1, "com.majeur.launcher.intent.extra.BADGE_COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    const-string/jumbo v1, "com.majeur.launcher.intent.extra.BADGE_CLASS"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/SolidHomeBadger;->getEntryActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/SolidHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 30
    return-void
.end method
