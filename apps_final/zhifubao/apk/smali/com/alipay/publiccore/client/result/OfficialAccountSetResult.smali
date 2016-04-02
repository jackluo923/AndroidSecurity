.class public Lcom/alipay/publiccore/client/result/OfficialAccountSetResult;
.super Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;
.source "OfficialAccountSetResult.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buttonName:Ljava/lang/String;

.field public buttonUrl:Ljava/lang/String;

.field public officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

.field public officialAccountShareInfo:Lcom/alipay/publiccore/client/result/OfficialAccountShareInfo;

.field public thirdPartyAccountInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/client/model/ThirdPartyAccountInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/alipay/publiccore/common/service/facade/model/result/PublicResult;-><init>()V

    return-void
.end method
