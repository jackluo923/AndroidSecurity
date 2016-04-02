.class final Lcom/alipay/android/app/display/uielement/t;
.super Lcom/alipay/android/app/widget/BaseTarget;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/android/app/display/uielement/ElementStyle;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/display/uielement/ElementStyle;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/display/uielement/t;->b:Lcom/alipay/android/app/display/uielement/ElementStyle;

    iput-object p2, p0, Lcom/alipay/android/app/display/uielement/t;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/alipay/android/app/widget/BaseTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/t;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/t;->a:Landroid/view/View;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/util/UIUtils;->b()F

    move-result v2

    invoke-static {v1, v2}, Lcom/alipay/android/app/util/UIUtils;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method
