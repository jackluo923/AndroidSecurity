.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/e;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const/4 v2, 0x3

    check-cast p1, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    check-cast p2, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;

    invoke-virtual {p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getMatchType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/dao/ssid/WifiSsid;->getMatchType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v2, :cond_0

    const v0, -0x7fffffff

    :goto_0
    return v0

    :cond_0
    if-eq v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    sub-int v0, v1, v0

    goto :goto_0
.end method
