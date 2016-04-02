.class public Lcom/alipay/mobileprod/biz/valuecard/dto/QueryPhoneCardRes;
.super Lcom/alipay/mobileprod/core/model/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public closeCheckSwitch:I

.field public encryptPasswordSwitch:I

.field public phoneCardVOs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/valuecard/vo/PhoneCardVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/BaseRespVO;-><init>()V

    iput v0, p0, Lcom/alipay/mobileprod/biz/valuecard/dto/QueryPhoneCardRes;->closeCheckSwitch:I

    iput v0, p0, Lcom/alipay/mobileprod/biz/valuecard/dto/QueryPhoneCardRes;->encryptPasswordSwitch:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobileprod/biz/valuecard/dto/QueryPhoneCardRes;->phoneCardVOs:Ljava/util/List;

    return-void
.end method
