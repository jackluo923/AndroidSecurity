.class public Lcom/alipay/mobileprod/biz/group/lotpay/res/LotPayResultResp;
.super Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public lotPayRes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/group/lotpay/res/LotPayRes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;-><init>()V

    return-void
.end method
