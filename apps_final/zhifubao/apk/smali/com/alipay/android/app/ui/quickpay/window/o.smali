.class final Lcom/alipay/android/app/ui/quickpay/window/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->d:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    iput-object p6, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->c()V

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    const-string/jumbo v2, "mini_error_title_default"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->b:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    if-eqz v1, :cond_2

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/window/p;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/ui/quickpay/window/p;-><init>(Lcom/alipay/android/app/ui/quickpay/window/o;)V

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->d:[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    if-eqz v1, :cond_1

    new-instance v5, Lcom/alipay/android/app/ui/quickpay/window/q;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/ui/quickpay/window/q;-><init>(Lcom/alipay/android/app/ui/quickpay/window/o;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/MiniActivityAdapter;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/o;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/ui/quickpay/widget/SystemDefaultDialog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    return-void

    :cond_1
    move-object v5, v0

    goto :goto_1

    :cond_2
    move-object v3, v0

    goto :goto_0
.end method
