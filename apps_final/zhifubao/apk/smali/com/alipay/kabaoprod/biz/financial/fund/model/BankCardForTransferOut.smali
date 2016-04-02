.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/BankCardForTransferOut;
.super Lcom/alipay/kabaoprod/core/model/model/BaseBankCard;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public arrivingTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/fund/model/ArrivingType;",
            ">;"
        }
    .end annotation
.end field

.field public perTimeAmountString:Ljava/lang/String;

.field public quotaAmount:Ljava/lang/String;

.field public quotaContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/core/model/model/BaseBankCard;-><init>()V

    return-void
.end method
