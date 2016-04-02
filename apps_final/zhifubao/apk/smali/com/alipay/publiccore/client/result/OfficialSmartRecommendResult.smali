.class public Lcom/alipay/publiccore/client/result/OfficialSmartRecommendResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "OfficialSmartRecommendResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasRecommend:Z

.field public publicId:Ljava/lang/String;

.field public publicName:Ljava/lang/String;

.field public thirdPartyNo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method
