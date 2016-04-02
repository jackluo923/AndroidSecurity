.class public Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;
.super Lcom/alipay/mobileapp/biz/rpc/RpcCommonRes;


# instance fields
.field public mobileUser:Z

.field public userStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileapp/biz/rpc/RpcCommonRes;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isMobileUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->mobileUser:Z

    return v0
.end method

.method public setMobileUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->mobileUser:Z

    return-void
.end method

.method public setUserStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;->userStatus:Ljava/lang/String;

    return-void
.end method
