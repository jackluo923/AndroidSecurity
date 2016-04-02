.class public abstract Lcom/alipay/mobile/framework/service/MapService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract calculateDistance(Lcom/alipay/mobile/map/model/LatLonPoint;Lcom/alipay/mobile/map/model/LatLonPoint;)F
.end method

.method public abstract getMapView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getMapView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public abstract getSendMapView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getShareMapView(Landroid/content/Context;)Landroid/view/View;
.end method
