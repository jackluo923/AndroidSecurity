.class public Lcom/alipay/mobilecsa/common/service/rpc/response/MerchantHomeResponse;
.super Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
.source "MerchantHomeResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public buryPointJsonString:Ljava/lang/String;

.field public currentDate:Ljava/util/Date;

.field public itemDetail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public nearbyPromoInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/NearbyPromoInfo;

.field public otherItemDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public promoNoticeUrl:Ljava/lang/String;

.field public publicMenuJson:Ljava/lang/String;

.field public shareChannelInfo:Lcom/alipay/mobilecsa/common/service/rpc/model/ShareChannelInfo;

.field public shopCommentBrief:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public shopDetail:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public templateId:Ljava/lang/String;

.field public templateJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/response/MerchantHomeResponse;->itemDetail:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/response/MerchantHomeResponse;->shopDetail:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/response/MerchantHomeResponse;->shopCommentBrief:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/response/MerchantHomeResponse;->otherItemDetails:Ljava/util/List;

    .line 85
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobilecsa/common/service/rpc/response/MerchantHomeResponse;->currentDate:Ljava/util/Date;

    .line 36
    return-void
.end method
