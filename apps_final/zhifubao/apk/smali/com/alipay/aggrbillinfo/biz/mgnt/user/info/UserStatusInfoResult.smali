.class public Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;
.super Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public allBanksOfUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public allEmailAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public allEmailsOfUser:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public bankCardBills:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankCardAndlatestBillResult;",
            ">;"
        }
    .end annotation
.end field

.field public billResult:Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;

.field public emailAccount:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public passwordErrorEmailAccount:Ljava/lang/String;

.field public routeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/biz/mgnt/result/Result;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->allEmailsOfUser:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->allBanksOfUser:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/user/info/UserStatusInfoResult;->bankCardBills:Ljava/util/List;

    return-void
.end method
