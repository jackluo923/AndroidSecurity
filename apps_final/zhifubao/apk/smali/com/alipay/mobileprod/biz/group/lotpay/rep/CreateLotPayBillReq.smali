.class public Lcom/alipay/mobileprod/biz/group/lotpay/rep/CreateLotPayBillReq;
.super Lcom/alipay/mobileprod/biz/group/lotpay/rep/BaseReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isFeeContinue:I

.field public payChannel:Ljava/lang/String;

.field public payees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/group/lotpay/rep/Payee;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/group/lotpay/rep/BaseReq;-><init>()V

    return-void
.end method
