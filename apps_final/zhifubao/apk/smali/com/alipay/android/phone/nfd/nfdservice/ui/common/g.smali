.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/g;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/g;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onShopIconChangedEvent run empty return"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/g;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/f;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;Ljava/util/List;)V

    goto :goto_0
.end method
