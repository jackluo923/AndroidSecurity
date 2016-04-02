.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PreLoadPassListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public couponList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public couponUpdateFlag:Ljava/lang/String;

.field public passListPreLoaderInterval:Ljava/lang/Long;

.field public travelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassTimelineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public travelUpdateFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
