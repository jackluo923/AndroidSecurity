.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassBaseInfoListResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public passBaseInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
