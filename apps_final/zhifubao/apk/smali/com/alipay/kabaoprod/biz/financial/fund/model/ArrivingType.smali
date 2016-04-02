.class public Lcom/alipay/kabaoprod/biz/financial/fund/model/ArrivingType;
.super Lcom/alipay/kabaoprod/service/facade/model/ToString;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public arrivingTypeQuota:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public avaliableMoney:Ljava/lang/String;

.field public typeName:Ljava/lang/String;

.field public typeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/kabaoprod/service/facade/model/ToString;-><init>()V

    return-void
.end method
