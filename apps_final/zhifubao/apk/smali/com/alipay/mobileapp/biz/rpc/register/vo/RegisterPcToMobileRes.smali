.class public Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;
.super Lcom/alipay/mobileapp/biz/rpc/RpcCommonRes;


# instance fields
.field public logonId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileapp/biz/rpc/RpcCommonRes;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogonId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;->logonId:Ljava/lang/String;

    return-object v0
.end method

.method public setLogonId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;->logonId:Ljava/lang/String;

    return-void
.end method
