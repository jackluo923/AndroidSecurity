.class public interface abstract Lcom/alipay/mobile/map/widget/APMapView;
.super Ljava/lang/Object;


# static fields
.field public static final SEARCH_MODE_BUS:I = 0x3e9

.field public static final SEARCH_MODE_DRIVE:I = 0x3ea

.field public static final SEARCH_MODE_WALK:I = 0x3eb


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getInfoWindowClickEnabled()Z
.end method

.method public abstract locate()V
.end method

.method public abstract moveToLatLng(Lcom/alipay/mobile/map/model/LatLonPoint;I)V
.end method

.method public abstract onCreateView(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroyView()V
.end method

.method public abstract onPauseView()V
.end method

.method public abstract onResumeView()V
.end method

.method public abstract onSaveInstance(Landroid/os/Bundle;)V
.end method

.method public abstract search(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract searchRoute(Lcom/alipay/mobile/map/model/LatLonPoint;Lcom/alipay/mobile/map/model/LatLonPoint;Ljava/lang/String;I)V
.end method

.method public abstract searchRoute(Lcom/alipay/mobile/map/model/LatLonPointEx;Lcom/alipay/mobile/map/model/LatLonPointEx;Ljava/lang/String;I)V
.end method

.method public abstract searchViaCloud(Ljava/lang/String;Ljava/lang/String;DD)V
.end method

.method public abstract searchViaCloud(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/map/model/LatLonPoint;)V
.end method

.method public abstract setInfoWindowClickEnabled(Z)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setMyLocationIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setOnCloudSearchListener(Lcom/alipay/mobile/map/widget/APMapView$OnCloudSearchListener;)V
.end method

.method public abstract setOnLocateListener(Lcom/alipay/mobile/framework/service/OnLocateListener;)V
.end method

.method public abstract setOnMapClickListener(Lcom/alipay/mobile/map/widget/APMapView$OnMapClickListener;)V
.end method

.method public abstract setOnPoiActionListener(Lcom/alipay/mobile/map/widget/APMapView$OnPoiActionListener;)V
.end method

.method public abstract setOnSearchListener(Lcom/alipay/mobile/map/widget/APMapView$OnSearchListener;)V
.end method

.method public abstract setSearchRouteMode(I)V
.end method

.method public abstract setShowMarkerInfoWindowEnable(Z)V
.end method

.method public abstract setZoomControlsEnabled(Z)V
.end method

.method public abstract showPoint(DD)V
.end method

.method public abstract showPoint(DDI)V
.end method

.method public abstract showPoint(Lcom/alipay/mobile/map/model/LatLonPoint;)V
.end method

.method public abstract showPoint(Lcom/alipay/mobile/map/model/LatLonPoint;I)V
.end method

.method public abstract showPointEx(Lcom/alipay/mobile/map/model/LatLonPointEx;)V
.end method

.method public abstract showPointEx(Lcom/alipay/mobile/map/model/LatLonPointEx;I)V
.end method

.method public abstract showPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/LatLonPoint;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showPointsEx(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/LatLonPointEx;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startNavigate(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)V
.end method
