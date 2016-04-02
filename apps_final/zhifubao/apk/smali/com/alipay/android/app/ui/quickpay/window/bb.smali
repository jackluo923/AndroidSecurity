.class final Lcom/alipay/android/app/ui/quickpay/window/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->b:Z

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->b:Z

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;)Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;)Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v0

    const-string/jumbo v3, "paysetting"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    iget-object v3, v3, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    iget-boolean v2, v2, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->d:Z

    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;)Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a(Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;)Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    iget-object v1, v1, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->i:Landroid/app/Activity;

    const-string/jumbo v2, "paysetting"

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    iget-object v3, v3, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-virtual {v3}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b()Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/window/GuideWindow;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/bb;->a:Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;

    iget-object v0, v0, Lcom/alipay/android/app/ui/quickpay/window/UIFormWindow;->a:Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b()Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e()V

    goto :goto_1
.end method
