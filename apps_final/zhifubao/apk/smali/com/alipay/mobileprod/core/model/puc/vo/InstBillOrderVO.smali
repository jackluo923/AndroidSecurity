.class public Lcom/alipay/mobileprod/core/model/puc/vo/InstBillOrderVO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public available:Z

.field public balance:Ljava/lang/String;

.field public billAmount:Ljava/lang/String;

.field public billDate:Ljava/lang/String;

.field public billId:Ljava/lang/String;

.field public extendField:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/vo/InstBillOrderExtendField;",
            ">;"
        }
    .end annotation
.end field

.field public fineAmount:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
