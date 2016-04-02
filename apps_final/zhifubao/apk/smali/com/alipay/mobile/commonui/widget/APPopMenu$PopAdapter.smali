.class final Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;Lcom/alipay/mobile/commonui/widget/APPopMenu$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;-><init>(Lcom/alipay/mobile/commonui/widget/APPopMenu;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$300(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$300(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->f:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$600(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->pomenu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;

    invoke-direct {v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->name:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    :goto_0
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-static {v0, p2}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$700(Lcom/alipay/mobile/commonui/widget/APPopMenu;Landroid/view/View;)V

    :cond_0
    iget-object v2, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$300(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$300(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->getResId()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APPopMenu$PopAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APPopMenu;

    # getter for: Lcom/alipay/mobile/commonui/widget/APPopMenu;->g:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->access$300(Lcom/alipay/mobile/commonui/widget/APPopMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/item/PopMenuItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v0, v1, Lcom/alipay/mobile/commonui/widget/APPopMenu$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
