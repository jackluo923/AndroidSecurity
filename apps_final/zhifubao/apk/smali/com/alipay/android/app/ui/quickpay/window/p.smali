.class final Lcom/alipay/android/app/ui/quickpay/window/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/o;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/o;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/p;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/p;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/p;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->c:Ljava/lang/String;

    const-string/jumbo v1, "\u786e\u5b9a\u9000\u51fa\u652f\u4ed8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/p;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->c:Ljava/lang/String;

    const-string/jumbo v1, "\u662f\u5426\u653e\u5f03\u4ed8\u6b3e"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/p;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/p;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/o;->b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/p;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/p;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->c:Ljava/lang/String;

    const-string/jumbo v1, "\u4e0d\u80fd\u8fde\u63a5\u5230\u7f51\u7edc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/pay/GlobalConstant;->APPID:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/LogAgent;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
