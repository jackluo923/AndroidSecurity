.class public Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;
.super Lcom/alipay/livetradeprod/core/model/base/SoundWaveBaseRes;


# instance fields
.field public attachAction:Ljava/lang/String;

.field public bizSubType:Ljava/lang/String;

.field public dynamicId:Ljava/lang/String;

.field public isBasedOtp:Z

.field public isOtpVerifySuccess:Z

.field public originAmount:Ljava/lang/String;

.field public payChannelList:Ljava/lang/String;

.field public payType:Ljava/lang/String;

.field public promoUrl:Ljava/lang/String;

.field public realAmount:Ljava/lang/String;

.field public shareContent:Ljava/lang/String;

.field public shareImage:Ljava/lang/String;

.field public shareInfoModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/livetradeprod/core/model/base/ShareInfoModel;",
            ">;"
        }
    .end annotation
.end field

.field public shareSwitch:Z

.field public shareTitle:Ljava/lang/String;

.field public tradeNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/livetradeprod/core/model/base/SoundWaveBaseRes;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->isBasedOtp:Z

    iput-boolean v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->isOtpVerifySuccess:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;->shareInfoModels:Ljava/util/List;

    return-void
.end method
