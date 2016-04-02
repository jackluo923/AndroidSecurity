.class final Lcom/alipay/android/phone/nfd/abeacon/biz/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/abeacon/api/BeaconOperationListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

.field private final synthetic b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/c;->a:Lcom/alipay/android/phone/nfd/abeacon/biz/BeaconServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/c;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 0

    return-void
.end method

.method public final onFailed(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/c;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/c;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;->onFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final onSuccess([B)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/c;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/abeacon/biz/c;->b:Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/nfd/abeacon/api/BeaconBeepListener;->onSuccess([B)V

    :cond_0
    return-void
.end method
