.class public Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;
.super Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;


# instance fields
.field public certified:Z

.field public openSimplePwd:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;-><init>()V

    return-void
.end method


# virtual methods
.method public isCertified()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;->certified:Z

    return v0
.end method

.method public isOpenSimplePwd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;->openSimplePwd:Z

    return v0
.end method

.method public setCertified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;->certified:Z

    return-void
.end method

.method public setOpenSimplePwd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobilesecurity/core/model/mainpage/quickhelp/QuickHelpResp;->openSimplePwd:Z

    return-void
.end method
