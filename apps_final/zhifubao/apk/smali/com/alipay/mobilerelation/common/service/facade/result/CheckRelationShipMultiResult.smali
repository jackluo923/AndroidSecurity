.class public Lcom/alipay/mobilerelation/common/service/facade/result/CheckRelationShipMultiResult;
.super Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public blockMeFriendIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public singleSideFriendIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tureFriendIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;-><init>()V

    return-void
.end method
