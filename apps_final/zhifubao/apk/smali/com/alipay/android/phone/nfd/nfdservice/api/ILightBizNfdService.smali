.class public interface abstract Lcom/alipay/android/phone/nfd/nfdservice/api/ILightBizNfdService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract connectTargetAP(Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiRequest;)I
.end method

.method public abstract disconnect()V
.end method

.method public abstract getReachableNfdWifiList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyCertStatusChanged(ILjava/lang/String;)I
.end method

.method public abstract registerNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z
.end method

.method public abstract unregisterNfdEventListener(Lcom/alipay/android/phone/nfd/nfdservice/api/INfdEventListener;)Z
.end method
