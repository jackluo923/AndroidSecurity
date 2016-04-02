.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/f;
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
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    check-cast p2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;

    iget-object v0, p1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    iget-object v1, p2, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiDetailInfo;->nfdWifiInfo:Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, -0x7fffffff

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    iget v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->rssi:I

    iget v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/api/model/NfdWifiInfo;->rssi:I

    sub-int v0, v1, v0

    goto :goto_0
.end method
