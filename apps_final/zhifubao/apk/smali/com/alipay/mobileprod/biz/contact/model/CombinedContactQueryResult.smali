.class public Lcom/alipay/mobileprod/biz/contact/model/CombinedContactQueryResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public mobileContactNumber:I

.field public recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/contact/model/CombinedContactRecord;",
            ">;"
        }
    .end annotation
.end field

.field public suggestRetry:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/alipay/mobileprod/biz/contact/model/CombinedContactQueryResult;->mobileContactNumber:I

    iput-boolean v0, p0, Lcom/alipay/mobileprod/biz/contact/model/CombinedContactQueryResult;->suggestRetry:Z

    return-void
.end method
