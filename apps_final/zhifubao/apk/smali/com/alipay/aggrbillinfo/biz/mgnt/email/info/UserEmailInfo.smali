.class public Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public banks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/EmailAssociateBankInfo;",
            ">;"
        }
    .end annotation
.end field

.field public crateDate:Ljava/lang/String;

.field public emailAccId:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public mailAccount:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/email/info/UserEmailInfo;->banks:Ljava/util/List;

    return-void
.end method
