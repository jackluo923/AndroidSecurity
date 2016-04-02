.class final Lcom/alipay/android/app/display/uielement/bc;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UILabel;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UILabel;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Lcom/alipay/android/app/display/uielement/UILabel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/display/uielement/UILabel;I)I

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UILabel;->d(Lcom/alipay/android/app/display/uielement/UILabel;)I

    new-instance v0, Lcom/alipay/android/app/display/uielement/be;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->CountdownFinished:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/be;-><init>(Lcom/alipay/android/app/display/uielement/bc;Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Lcom/alipay/android/app/display/uielement/UILabel;

    long-to-int v1, p1

    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-static {v2}, Lcom/alipay/android/app/display/uielement/UILabel;->b(Lcom/alipay/android/app/display/uielement/UILabel;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/display/uielement/UILabel;I)I

    new-instance v0, Lcom/alipay/android/app/display/uielement/bd;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->CountdownTick:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/display/uielement/bd;-><init>(Lcom/alipay/android/app/display/uielement/bc;Lcom/alipay/android/app/display/event/EventType;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/bc;->a:Lcom/alipay/android/app/display/uielement/UILabel;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/UILabel;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    return-void
.end method
