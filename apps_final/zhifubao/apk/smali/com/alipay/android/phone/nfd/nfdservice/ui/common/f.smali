.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/biz/i;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onShopIconChangedEvent"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/g;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
