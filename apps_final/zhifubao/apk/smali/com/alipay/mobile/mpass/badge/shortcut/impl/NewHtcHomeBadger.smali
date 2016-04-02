.class public Lcom/alipay/mobile/mpass/badge/shortcut/impl/NewHtcHomeBadger;
.super Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;
.source "NewHtcHomeBadger.java"


# static fields
.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final EXTRA_COMPONENT:Ljava/lang/String; = "com.htc.launcher.extra.COMPONENT"

.field public static final EXTRA_COUNT:Ljava/lang/String; = "com.htc.launcher.extra.COUNT"

.field public static final INTENT_SET_NOTIFICATION:Ljava/lang/String; = "com.htc.launcher.action.SET_NOTIFICATION"

.field public static final INTENT_UPDATE_SHORTCUT:Ljava/lang/String; = "com.htc.launcher.action.UPDATE_SHORTCUT"

.field public static final PACKAGENAME:Ljava/lang/String; = "packagename"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected executeBadge(I)V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.htc.launcher.action.SET_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/NewHtcHomeBadger;->getContextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/NewHtcHomeBadger;->getEntryActivityName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v2, "com.htc.launcher.extra.COMPONENT"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "com.htc.launcher.extra.COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 33
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/NewHtcHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.htc.launcher.action.UPDATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "packagename"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/NewHtcHomeBadger;->getContextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/NewHtcHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 39
    return-void
.end method
