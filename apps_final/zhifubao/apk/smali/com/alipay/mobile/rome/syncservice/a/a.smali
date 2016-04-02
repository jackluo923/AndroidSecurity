.class public final Lcom/alipay/mobile/rome/syncservice/a/a;
.super Ljava/lang/Object;
.source "LinkSyncAppInfo.java"


# static fields
.field private static volatile a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/a/a;->a:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "ALIPAY_WALLET"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/a/a;->a:Ljava/lang/String;

    .line 60
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    .line 60
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/a/a;->a:Ljava/lang/String;

    goto :goto_0
.end method
