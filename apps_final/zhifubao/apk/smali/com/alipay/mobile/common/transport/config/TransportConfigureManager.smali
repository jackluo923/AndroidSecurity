.class public abstract Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
.super Ljava/lang/Object;
.source "TransportConfigureManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;->newInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManagerImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract equalsInt(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;I)Z
.end method

.method public abstract equalsLong(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;J)Z
.end method

.method public abstract equalsString(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Z
.end method

.method public abstract getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)I
.end method

.method public abstract getIntValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;I)I
.end method

.method public abstract getLongValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)J
.end method

.method public abstract getLongValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;J)J
.end method

.method public abstract getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;)Ljava/lang/String;
.end method

.method public abstract getStringValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStringValueList(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStringValueList(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isLoadedConfig()Z
.end method

.method public abstract setValue(Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;Ljava/lang/String;)V
.end method

.method public abstract update(Landroid/content/Context;)Z
.end method

.method public abstract updateForRc()V
.end method
