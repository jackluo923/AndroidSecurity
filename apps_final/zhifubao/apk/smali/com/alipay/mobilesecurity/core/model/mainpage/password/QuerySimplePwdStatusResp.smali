.class public Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public open:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;->open:Z

    return v0
.end method

.method public setOpen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;->open:Z

    return-void
.end method
