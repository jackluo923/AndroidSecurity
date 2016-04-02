.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
.super Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public redMark:Z

.field public tabRedMarkTip:Ljava/lang/String;

.field public widgetDetails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->redMark:Z

    return-void
.end method
