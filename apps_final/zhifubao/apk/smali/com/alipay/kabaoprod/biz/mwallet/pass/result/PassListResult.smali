.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public hasCurrent:I

.field public hasMore:I

.field public hasPast:I

.field public hasReceive:Ljava/lang/String;

.field public passListPreLoaderInterval:Ljava/lang/Long;

.field public passTimelineList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public updateFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasCurrent:I

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasPast:I

    iput v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;->hasMore:I

    return-void
.end method
