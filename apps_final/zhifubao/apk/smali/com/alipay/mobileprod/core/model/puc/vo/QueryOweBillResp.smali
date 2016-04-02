.class public Lcom/alipay/mobileprod/core/model/puc/vo/QueryOweBillResp;
.super Lcom/alipay/mobileprod/core/model/puc/BaseRespVO;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public billAmount:Ljava/lang/String;

.field public billContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/core/model/puc/vo/BillContentVO;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/core/model/puc/BaseRespVO;-><init>()V

    return-void
.end method
