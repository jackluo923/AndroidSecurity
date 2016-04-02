.class public Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;
.super Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;


# instance fields
.field public action:Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/ActionInfo;

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

.field public email:Ljava/lang/String;

.field public emailaccid:Ljava/lang/String;

.field public num:Ljava/lang/String;

.field public ratio:Ljava/lang/String;

.field public step:Ljava/lang/String;

.field public taskID:Ljava/lang/String;

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/aggrbillinfo/common/service/facade/model/ToString;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/aggrbillinfo/biz/mgnt/task/info/TaskInfo;->banks:Ljava/util/List;

    return-void
.end method
