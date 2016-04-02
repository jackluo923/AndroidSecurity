.class public Lcom/alipay/mobile/mpass/badge/shortcut/impl/Android2HomeBadger;
.super Lcom/alipay/mobile/mpass/badge/shortcut/impl/AndroidHomeBadger;
.source "Android2HomeBadger.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/alipay/mobile/mpass/badge/shortcut/impl/AndroidHomeBadger;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getContentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "content://com.android.launcher2.settings/favorites?notify=true"

    return-object v0
.end method
