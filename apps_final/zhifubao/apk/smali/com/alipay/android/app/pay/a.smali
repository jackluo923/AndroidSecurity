.class final Lcom/alipay/android/app/pay/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/HyperlinkActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/HyperlinkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/a;->a:Lcom/alipay/android/app/pay/HyperlinkActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/pay/a;->a:Lcom/alipay/android/app/pay/HyperlinkActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/app/pay/HyperlinkActivity;->a(Lcom/alipay/android/app/pay/HyperlinkActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
