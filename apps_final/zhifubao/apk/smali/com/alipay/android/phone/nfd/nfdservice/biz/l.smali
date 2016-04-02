.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/j;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/l;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    check-cast p2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v0, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->rssi:I

    iget-object v1, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->rssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    return v0
.end method
