.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/d/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/d/b;)V

    return-void
.end method
