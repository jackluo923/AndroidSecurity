.class public Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginBiz;
.super Ljava/lang/Object;
.source "TaobaoSsoLoginBiz.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkTaobaoSsoLogin(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 11
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "FirstLoginFlag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static disableTaobaoSsoLogin(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 15
    invoke-static {p0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "FirstLoginFlag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    return-void
.end method
