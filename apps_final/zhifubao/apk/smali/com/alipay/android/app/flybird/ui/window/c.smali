.class final Lcom/alipay/android/app/flybird/ui/window/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "ProgressDialog"

    invoke-static {v3}, Lcom/alipay/android/app/util/ResUtils;->h(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->a(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/widget/MiniProgressDialog;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->j(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->i(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/c;->a:Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;->j(Lcom/alipay/android/app/flybird/ui/window/FlyBirdWindowActivityAdapter;)Landroid/widget/ImageView;

    move-result-object v0

    const-string/jumbo v1, "flybird_mask_dialog_bg"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0
.end method
