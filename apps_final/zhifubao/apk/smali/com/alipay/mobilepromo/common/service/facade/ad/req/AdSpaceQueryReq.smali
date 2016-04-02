.class public Lcom/alipay/mobilepromo/common/service/facade/ad/req/AdSpaceQueryReq;
.super Lcom/alipay/mobilepromo/common/service/facade/common/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public packageName:Ljava/lang/String;

.field public spaceBehaviorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilepromo/common/service/facade/ad/req/AdSpaceBehaviorReq;",
            ">;"
        }
    .end annotation
.end field

.field public spaceCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tid:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/common/util/ToString;-><init>()V

    return-void
.end method
