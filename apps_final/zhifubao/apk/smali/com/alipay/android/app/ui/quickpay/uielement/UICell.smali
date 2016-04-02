.class public Lcom/alipay/android/app/ui/quickpay/uielement/UICell;
.super Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;-><init>()V

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/l;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UICell;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UICell;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/UICell;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->e:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Landroid/view/ViewGroup;Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->a:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->d:Landroid/view/View;

    check-cast v1, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->j()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UICell;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
