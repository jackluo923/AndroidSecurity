.class public Lcom/alipay/mobile/rome/syncsdk/util/MonitorParamsUtils;
.super Ljava/lang/Object;
.source "MonitorParamsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNetAppStatMap()Ljava/util/Map;
    .locals 3

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    const-string/jumbo v1, "appstat"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->getAppStatusValue(Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string/jumbo v1, "netstat"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->getLinkState()Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-object v0
.end method
