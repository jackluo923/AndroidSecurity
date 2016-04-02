.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/r;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/j;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/j;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/k;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/j;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onShopIconDBChangedEvent"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/k;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/j;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/j;->a(Ljava/util/Map;)V

    return-void
.end method
