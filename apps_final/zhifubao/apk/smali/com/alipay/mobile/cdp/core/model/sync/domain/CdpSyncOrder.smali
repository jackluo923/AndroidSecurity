.class public Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpSyncOrder;
.super Lcom/alipay/mobile/cdp/core/model/util/tostring/ToString;
.source "CdpSyncOrder.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cdpRpcInfo:Lcom/alipay/mobile/cdp/core/model/sync/domain/CdpRpcInfo;

.field public cmd:Ljava/lang/String;

.field public spaceInfo:Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/cdp/core/model/util/tostring/ToString;-><init>()V

    return-void
.end method
