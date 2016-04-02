.class public Lcom/alipay/mobileprod/biz/aapay/model/client/BillCreateResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/aapay/model/AAPayOrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public code:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
