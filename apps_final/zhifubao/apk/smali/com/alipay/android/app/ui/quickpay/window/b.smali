.class final Lcom/alipay/android/app/ui/quickpay/window/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->c:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;Lcom/alipay/android/app/ui/quickpay/window/UISubForm;)Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->b(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->b(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b()Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->a(Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->d:Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->b(Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;)Lcom/alipay/android/app/ui/quickpay/window/UISubForm;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/b;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/UISubForm;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
