.class final Lcom/alipay/android/app/display/uielement/bt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/display/uielement/UISwitcher;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/UISwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/bt;->a:Lcom/alipay/android/app/display/uielement/UISwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bt;->a:Lcom/alipay/android/app/display/uielement/UISwitcher;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/UISwitcher;->a(Lcom/alipay/android/app/display/uielement/UISwitcher;)Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->toggle()V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/bt;->a:Lcom/alipay/android/app/display/uielement/UISwitcher;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/UISwitcher;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/bt;->a:Lcom/alipay/android/app/display/uielement/UISwitcher;

    const-string/jumbo v4, "checked"

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/alipay/android/app/display/uielement/UISwitcher;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
