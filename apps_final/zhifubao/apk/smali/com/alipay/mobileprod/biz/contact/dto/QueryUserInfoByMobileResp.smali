.class public Lcom/alipay/mobileprod/biz/contact/dto/QueryUserInfoByMobileResp;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public userInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/vo/UserInfoVO;",
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
