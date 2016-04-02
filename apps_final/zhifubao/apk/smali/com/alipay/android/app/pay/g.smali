.class final Lcom/alipay/android/app/pay/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/windows/UIWindow;

.field final synthetic b:Lcom/alipay/android/app/pay/MainActivity;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/MainActivity;Lcom/alipay/android/app/display/windows/UIWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    iput-object p2, p0, Lcom/alipay/android/app/pay/g;->a:Lcom/alipay/android/app/display/windows/UIWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/g;->c:Z

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/android/app/pay/g;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    invoke-static {v0}, Lcom/alipay/android/app/pay/MainActivity;->b(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    invoke-static {v0}, Lcom/alipay/android/app/pay/MainActivity;->b(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->c()V

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    invoke-static {v0}, Lcom/alipay/android/app/pay/MainActivity;->b(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/pay/ActivityWindowScriptable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ActivityWindowScriptable;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/g;->c:Z

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    iget-object v1, p0, Lcom/alipay/android/app/pay/g;->a:Lcom/alipay/android/app/display/windows/UIWindow;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/windows/UIWindow;->d()Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/pay/MainActivity;->a(Lcom/alipay/android/app/pay/MainActivity;Lcom/alipay/android/app/display/uielement/UILayoutPopup;)Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    invoke-static {v0}, Lcom/alipay/android/app/pay/MainActivity;->c(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    invoke-static {v0}, Lcom/alipay/android/app/pay/MainActivity;->c(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/display/uielement/UILayoutPopup;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    iget-object v2, p0, Lcom/alipay/android/app/pay/g;->b:Lcom/alipay/android/app/pay/MainActivity;

    invoke-static {v2}, Lcom/alipay/android/app/pay/MainActivity;->d(Lcom/alipay/android/app/pay/MainActivity;)Lcom/alipay/android/app/widget/ResizeLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/display/uielement/UILayoutPopup;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method
