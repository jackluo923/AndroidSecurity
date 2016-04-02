.class final Lcom/alipay/android/app/widget/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/widget/ResizeLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/widget/ResizeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/widget/m;->a:Lcom/alipay/android/app/widget/ResizeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/widget/m;->a:Lcom/alipay/android/app/widget/ResizeLayout;

    # getter for: Lcom/alipay/android/app/widget/ResizeLayout;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/widget/ResizeLayout;->access$000(Lcom/alipay/android/app/widget/ResizeLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/widget/m;->a:Lcom/alipay/android/app/widget/ResizeLayout;

    # getter for: Lcom/alipay/android/app/widget/ResizeLayout;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/widget/ResizeLayout;->access$000(Lcom/alipay/android/app/widget/ResizeLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/widget/m;->a:Lcom/alipay/android/app/widget/ResizeLayout;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/ResizeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/widget/m;->a:Lcom/alipay/android/app/widget/ResizeLayout;

    iget-object v0, p0, Lcom/alipay/android/app/widget/m;->a:Lcom/alipay/android/app/widget/ResizeLayout;

    # getter for: Lcom/alipay/android/app/widget/ResizeLayout;->a:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/android/app/widget/ResizeLayout;->access$000(Lcom/alipay/android/app/widget/ResizeLayout;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    check-cast v1, Landroid/widget/EditText;

    invoke-static {v2, v0, v1}, Lcom/alipay/android/app/widget/ResizeLayout;->access$100(Lcom/alipay/android/app/widget/ResizeLayout;Landroid/widget/ScrollView;Landroid/widget/EditText;)V

    goto :goto_0
.end method
