.class public Lcom/alipay/mobileprod/biz/contact/dto/ContactMatchResponse;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;


# instance fields
.field public latestMatchTime:J

.field public mobileBindingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/MobileBindingInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    return-void
.end method
