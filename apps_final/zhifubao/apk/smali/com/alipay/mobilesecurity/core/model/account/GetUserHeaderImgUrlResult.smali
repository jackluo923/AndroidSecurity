.class public Lcom/alipay/mobilesecurity/core/model/account/GetUserHeaderImgUrlResult;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public headImgUrl:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/GetUserHeaderImgUrlResult;->headImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/core/model/account/GetUserHeaderImgUrlResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setHeadImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/GetUserHeaderImgUrlResult;->headImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/core/model/account/GetUserHeaderImgUrlResult;->userId:Ljava/lang/String;

    return-void
.end method
