.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;


# instance fields
.field public certified:Z

.field public isSmsSwitch:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSmsResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsSmsSwitch()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->isSmsSwitch:I

    return v0
.end method

.method public isCertified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->certified:Z

    return v0
.end method

.method public setCertified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->certified:Z

    return-void
.end method

.method public setIsSmsSwitch(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/FoundPasswordResult;->isSmsSwitch:I

    return-void
.end method
