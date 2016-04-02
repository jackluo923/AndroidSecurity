.class public Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;


# instance fields
.field public resultCode:Ljava/lang/String;

.field public resultDesc:Ljava/lang/String;

.field public resultView:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->success:Z

    return-void
.end method


# virtual methods
.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getResultView()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultView:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->success:Z

    return v0
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setResultDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultDesc:Ljava/lang/String;

    return-void
.end method

.method public setResultView(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->resultView:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/shared/result/SecurityKabaoCommonResult;->success:Z

    return-void
.end method
