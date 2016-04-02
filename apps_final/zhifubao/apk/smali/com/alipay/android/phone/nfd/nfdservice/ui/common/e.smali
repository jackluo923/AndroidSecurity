.class final Lcom/alipay/android/phone/nfd/nfdservice/ui/common/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/e;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/e;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->b(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)Lcom/alipay/android/phone/nfd/nfdservice/biz/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/g;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/e;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->c(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;)Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/p;->a(Ljava/util/List;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/e;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;->a(Lcom/alipay/android/phone/nfd/nfdservice/ui/common/c;Ljava/util/List;)V

    return-void
.end method
