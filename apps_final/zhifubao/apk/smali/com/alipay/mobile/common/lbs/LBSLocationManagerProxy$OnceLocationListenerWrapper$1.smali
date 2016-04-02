.class Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper$1;
.super Ljava/lang/Object;
.source "LBSLocationManagerProxy.java"

# interfaces
.implements Lcom/alipay/mobile/common/lbs/amapservice/AlipayAuthenticator$InitCallback;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper$1;->this$1:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 392
    if-nez p1, :cond_0

    .line 393
    # setter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->e:Z
    invoke-static {v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->access$1002(Z)Z

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper$1;->this$1:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;

    iget-object v1, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper$1;->this$1:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;

    # getter for: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->d:Lcom/amap/api/location/AMapLocation;
    invoke-static {v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->access$1100(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    # invokes: Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->a(Lcom/amap/api/location/AMapLocation;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->access$1200(Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;Lcom/amap/api/location/AMapLocation;)V

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper$1;->this$1:Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy$OnceLocationListenerWrapper;->setHasRemoved(Z)V

    .line 397
    return-void
.end method
