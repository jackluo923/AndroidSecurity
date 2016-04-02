.class public Lcom/alipay/publiccore/client/model/OfficialRecommendInfo;
.super Lcom/alipay/publiccore/client/model/OfficialBaseInfo;
.source "OfficialRecommendInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public followCount:Ljava/lang/String;

.field public isFollow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/publiccore/client/model/OfficialBaseInfo;-><init>()V

    .line 19
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alipay/publiccore/client/model/OfficialRecommendInfo;->isFollow:Ljava/lang/String;

    .line 10
    return-void
.end method
