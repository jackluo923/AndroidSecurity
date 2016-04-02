.class final Lcom/alipay/android/phone/nfd/abeacon/biz/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    check-cast p2, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getDistance()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/alipay/android/phone/nfd/abeacon/api/beans/BeaconInfo;->getDistance()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
