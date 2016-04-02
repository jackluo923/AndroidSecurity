.class public Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceQueryResult;
.super Lcom/alipay/mobile/cdp/common/service/facade/common/Result;
.source "SpaceQueryResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public spaceInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/cdp/common/service/facade/space/domain/SpaceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/cdp/common/service/facade/common/Result;-><init>()V

    return-void
.end method
