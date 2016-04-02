.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;
.super Ljava/lang/Object;
.source "ChannelConfigUtils.java"


# static fields
.field private static hideAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mChannelConfig:Lcom/alipay/mobile/base/config/ChannelConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 15
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 17
    const-class v1, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 15
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->mChannelConfig:Lcom/alipay/mobile/base/config/ChannelConfig;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->hideAppList:Ljava/util/List;

    .line 19
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->mChannelConfig:Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v1, "hideApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 9
    :cond_0
    return-void

    .line 21
    :cond_1
    aget-object v3, v1, v0

    .line 22
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 23
    sget-object v4, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->hideAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBannedAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->hideAppList:Ljava/util/List;

    return-object v0
.end method

.method public static final isBannedApp(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->hideAppList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
