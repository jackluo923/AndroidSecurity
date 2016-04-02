.class public Lcom/alipay/mobilesecurity/common/service/model/GetUserHeaderImgUrlResult;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private headImgUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeadImgUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/GetUserHeaderImgUrlResult;->headImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobilesecurity/common/service/model/GetUserHeaderImgUrlResult;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setHeadImgUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/GetUserHeaderImgUrlResult;->headImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobilesecurity/common/service/model/GetUserHeaderImgUrlResult;->userId:Ljava/lang/String;

    return-void
.end method
