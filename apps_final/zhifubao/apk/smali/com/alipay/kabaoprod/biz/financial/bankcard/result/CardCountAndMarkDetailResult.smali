.class public Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;


# instance fields
.field public cardCount:I

.field public isMark:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardCount()I
    .locals 1

    iget v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;->cardCount:I

    return v0
.end method

.method public isMark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;->isMark:Z

    return v0
.end method

.method public setCardCount(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;->cardCount:I

    return-void
.end method

.method public setMark(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/kabaoprod/biz/financial/bankcard/result/CardCountAndMarkDetailResult;->isMark:Z

    return-void
.end method
