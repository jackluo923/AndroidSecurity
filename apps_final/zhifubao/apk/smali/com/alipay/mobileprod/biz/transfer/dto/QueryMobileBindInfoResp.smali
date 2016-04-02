.class public Lcom/alipay/mobileprod/biz/transfer/dto/QueryMobileBindInfoResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public mobileBindInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/transfer/vo/MobileBindInfoVO;",
            ">;"
        }
    .end annotation
.end field

.field public mobileNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/transfer/dto/QueryMobileBindInfoResp;->mobileBindInfoList:Ljava/util/List;

    return-void
.end method
