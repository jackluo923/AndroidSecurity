.class public Lcom/alipay/mobile/mpass/badge/shortcut/impl/AdwHomeBadger;
.super Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;
.source "AdwHomeBadger.java"


# static fields
.field public static final COUNT:Ljava/lang/String; = "COUNT"

.field public static final INTENT_UPDATE_COUNTER:Ljava/lang/String; = "org.adw.launcher.counter.SEND"

.field public static final PACKAGENAME:Ljava/lang/String; = "PNAME"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/shortcut/ShortcutBadger;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected executeBadge(I)V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.adw.launcher.counter.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "PNAME"

    invoke-virtual {p0}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/AdwHomeBadger;->getContextPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string/jumbo v1, "COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 28
    iget-object v1, p0, Lcom/alipay/mobile/mpass/badge/shortcut/impl/AdwHomeBadger;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    return-void
.end method
