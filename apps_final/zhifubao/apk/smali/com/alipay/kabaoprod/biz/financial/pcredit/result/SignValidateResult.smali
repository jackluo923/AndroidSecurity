.class public Lcom/alipay/kabaoprod/biz/financial/pcredit/result/SignValidateResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public remindType:I

.field public signSmsViewText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemindType()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/SignValidateResult;->remindType:I

    return v0
.end method

.method public getSignSmsViewText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/SignValidateResult;->signSmsViewText:Ljava/lang/String;

    return-object v0
.end method

.method public setRemindType(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/SignValidateResult;->remindType:I

    return-void
.end method

.method public setSignSmsViewText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/financial/pcredit/result/SignValidateResult;->signSmsViewText:Ljava/lang/String;

    return-void
.end method
