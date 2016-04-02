.class public interface abstract Lcom/alipay/android/phone/nfd/abeacon/api/BeaconScanListener;
.super Ljava/lang/Object;


# virtual methods
.method public abstract didFoundBeacons(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract foundBeaconsFail(Ljava/lang/Exception;)Z
.end method
