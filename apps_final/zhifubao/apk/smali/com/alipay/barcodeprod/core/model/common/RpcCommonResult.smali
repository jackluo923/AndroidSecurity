.class public Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;
.super Lcom/alipay/barcodeprod/common/domain/result/ToString;


# instance fields
.field public message:Ljava/lang/String;

.field public resultCode:I

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/barcodeprod/common/domain/result/ToString;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;->resultCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;->success:Z

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;->message:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;->resultCode:I

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/barcodeprod/core/model/common/RpcCommonResult;->success:Z

    return-void
.end method
