.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

.field private final synthetic b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/w;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/w;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onInvalidNetworkEvent mac: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/w;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/w;->b:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;

    invoke-virtual {v0, p0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/h;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/j;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onEffectiveNetworkEvent mac: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/w;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
