.class public interface abstract Lcom/alipay/mobile/map/widget/APShareMapView;
.super Ljava/lang/Object;


# virtual methods
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

.method public abstract setMyAvatar(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setMyAvatar(Ljava/lang/String;)V
.end method

.method public abstract setOnCameraChangeListener(Lcom/alipay/mobile/framework/service/OnCameraChangeListener;)V
.end method

.method public abstract setOnLocateListener(Lcom/alipay/mobile/framework/service/OnLocateListener;)V
.end method

.method public abstract setOnMapClickListener(Lcom/alipay/mobile/map/widget/APShareMapView$OnMapClickListener;)V
.end method

.method public abstract showPoints(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/map/model/LatLonPointAvatar;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startLocate()V
.end method

.method public abstract stopLocate()V
.end method
