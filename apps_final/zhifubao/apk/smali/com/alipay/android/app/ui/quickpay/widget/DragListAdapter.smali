.class public Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field protected a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->b:Z

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    check-cast p1, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<+",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->b:Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->c:Landroid/app/Activity;

    const-string/jumbo v2, "mini_list_item_handle_right"

    invoke-static {v2}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;

    const-string/jumbo v2, "channels"

    invoke-static {v0, v2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a(Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    move-result-object v2

    const-string/jumbo v0, "drag_text"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->k()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v0, "drag_handle"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->b:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v0, "mini_block_item_normal_bg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v0, "mini_block_item_normal_bg"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
