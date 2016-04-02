.class final Lcom/alipay/android/app/source/http/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/source/http/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/source/http/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/source/http/b;->a:Lcom/alipay/android/app/source/http/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    const/4 v0, 0x2

    const-wide/16 v1, 0x4e20

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/source/http/b;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    iget-object v0, p0, Lcom/alipay/android/app/source/http/b;->a:Lcom/alipay/android/app/source/http/a;

    invoke-static {v0}, Lcom/alipay/android/app/source/http/a;->a(Lcom/alipay/android/app/source/http/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/source/http/b;->a:Lcom/alipay/android/app/source/http/a;

    invoke-static {v0}, Lcom/alipay/android/app/source/http/a;->a(Lcom/alipay/android/app/source/http/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/source/http/b;->a:Lcom/alipay/android/app/source/http/a;

    invoke-static {v0}, Lcom/alipay/android/app/source/http/a;->a(Lcom/alipay/android/app/source/http/a;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
