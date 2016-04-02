.class public Lcom/alipay/kabaoprod/biz/mwallet/card/result/CardPreviewResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cardPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardPreviewModel;",
            ">;"
        }
    .end annotation
.end field

.field public isShowFollow:Z

.field public officialAccountId:Ljava/lang/String;

.field public officialAccountName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    return-void
.end method
