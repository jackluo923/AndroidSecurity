.class public Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;
.super Lcom/alipay/mobilepromo/common/service/facade/common/util/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public adList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdObjectInfo;",
            ">;"
        }
    .end annotation
.end field

.field public cacheTime:I

.field public isShow:Ljava/lang/String;

.field public spaceCode:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobilepromo/common/service/facade/common/util/ToString;-><init>()V

    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/alipay/mobilepromo/common/service/facade/ad/info/AdSpaceInfo;->isShow:Ljava/lang/String;

    return-void
.end method
