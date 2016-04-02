.class public Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public cityCode:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public widgetIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method
