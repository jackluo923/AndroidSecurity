.class public Lcom/alipay/mobileprod/biz/group/lotpay/res/LotPayRankResp;
.super Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public rankList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileprod/biz/group/lotpay/res/LotPayRank;",
            ">;"
        }
    .end annotation
.end field

.field public sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobileprod/biz/group/lotpay/res/BaseResp;-><init>()V

    return-void
.end method
