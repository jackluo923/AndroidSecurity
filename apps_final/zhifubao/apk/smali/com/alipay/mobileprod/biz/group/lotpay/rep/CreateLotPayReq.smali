.class public Lcom/alipay/mobileprod/biz/group/lotpay/rep/CreateLotPayReq;
.super Lcom/alipay/mobileprod/biz/group/lotpay/rep/BaseReq;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public userIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/group/lotpay/rep/BaseReq;-><init>()V

    return-void
.end method
