.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/a/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->c()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->d(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->d()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/b;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->e(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)V

    goto :goto_0
.end method
