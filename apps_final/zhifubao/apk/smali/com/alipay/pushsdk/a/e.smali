.class public final Lcom/alipay/pushsdk/a/e;
.super Landroid/os/Handler;
.source "HttpReqHelper.java"


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/a/d;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/a/d;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alipay/pushsdk/a/e;->a:Lcom/alipay/pushsdk/a/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/pushsdk/b/b;

    .line 51
    invoke-virtual {v0}, Lcom/alipay/pushsdk/b/b;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 60
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/a/e;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 62
    return-void

    .line 53
    :pswitch_0
    iget-object v1, p0, Lcom/alipay/pushsdk/a/e;->a:Lcom/alipay/pushsdk/a/d;

    invoke-static {v1}, Lcom/alipay/pushsdk/a/d;->a(Lcom/alipay/pushsdk/a/d;)Lcom/alipay/pushsdk/a/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/pushsdk/a/f;->a(Lcom/alipay/pushsdk/b/b;)V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/pushsdk/a/e;->a:Lcom/alipay/pushsdk/a/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/a/d;->a(Lcom/alipay/pushsdk/a/d;)Lcom/alipay/pushsdk/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/pushsdk/a/f;->a()V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
