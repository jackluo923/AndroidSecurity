.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public info:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()Lcom/alipay/kabaoprod/core/model/model/RemindInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;->info:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    return-object v0
.end method

.method public setInfo(Lcom/alipay/kabaoprod/core/model/model/RemindInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/RemindDateResult;->info:Lcom/alipay/kabaoprod/core/model/model/RemindInfo;

    return-void
.end method
