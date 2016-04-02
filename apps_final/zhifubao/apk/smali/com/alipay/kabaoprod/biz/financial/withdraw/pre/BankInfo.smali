.class public Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public arriveDateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/ArriveDateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public bankAccountNo:Ljava/lang/String;

.field public bankIcon:Ljava/lang/String;

.field public bankMark:Ljava/lang/String;

.field public bankName:Ljava/lang/String;

.field public bankNotice:Ljava/lang/String;

.field public cardNoLast4:Ljava/lang/String;

.field public cardWithdrawAmount:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    const-string/jumbo v0, "common"

    iput-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->type:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/kabaoprod/biz/financial/withdraw/pre/BankInfo;->arriveDateList:Ljava/util/List;

    return-void
.end method
