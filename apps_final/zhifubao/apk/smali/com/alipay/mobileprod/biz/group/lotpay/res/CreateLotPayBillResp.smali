.class public Lcom/alipay/mobileprod/biz/group/lotpay/res/CreateLotPayBillResp;
.super Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public batchNo:Ljava/lang/String;

.field public bizSubType:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public lotPayeeValList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/group/lotpay/model/LotPayeeVal;",
            ">;"
        }
    .end annotation
.end field

.field public mergeTransferNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;-><init>()V

    return-void
.end method
