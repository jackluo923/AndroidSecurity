.class final Lcom/alipay/android/app/display/uielement/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/app/display/uielement/r;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/r;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/s;->b:Lcom/alipay/android/app/display/uielement/r;

    iput p2, p0, Lcom/alipay/android/app/display/uielement/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/s;->b:Lcom/alipay/android/app/display/uielement/r;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/display/uielement/r;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/s;->b:Lcom/alipay/android/app/display/uielement/r;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/r;->a(Lcom/alipay/android/app/display/uielement/r;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/display/uielement/s;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
