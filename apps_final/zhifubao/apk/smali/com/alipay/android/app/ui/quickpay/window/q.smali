.class final Lcom/alipay/android/app/ui/quickpay/window/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/o;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/o;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/q;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/q;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;)Landroid/content/DialogInterface;

    move-result-object v0

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/q;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    invoke-static {v0, p1}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/q;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/o;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/q;->a:Lcom/alipay/android/app/ui/quickpay/window/o;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/o;->d:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->a(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_0
.end method
