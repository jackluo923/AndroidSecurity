.class final Lcom/alipay/pushsdk/b/d;
.super Landroid/os/Handler;
.source "Controller.java"


# instance fields
.field private a:Lcom/alipay/pushsdk/b/c;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/alipay/pushsdk/b/c;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    iput-object p2, p0, Lcom/alipay/pushsdk/b/d;->a:Lcom/alipay/pushsdk/b/c;

    .line 51
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/pushsdk/b/b;

    .line 57
    iget-object v1, p0, Lcom/alipay/pushsdk/b/d;->a:Lcom/alipay/pushsdk/b/c;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/b/c;->a()Lcom/alipay/pushsdk/b/e;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/b/e;->a(Lcom/alipay/pushsdk/b/b;)V

    .line 59
    return-void
.end method
