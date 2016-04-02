.class final Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/commonui/widget/APListPopDialog;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/commonui/widget/APListPopDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APListPopDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/commonui/widget/APListPopDialog;Lcom/alipay/mobile/commonui/widget/APListPopDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;-><init>(Lcom/alipay/mobile/commonui/widget/APListPopDialog;)V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APListPopDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APListPopDialog;->d:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->access$100(Lcom/alipay/mobile/commonui/widget/APListPopDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APListPopDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APListPopDialog;->d:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->access$100(Lcom/alipay/mobile/commonui/widget/APListPopDialog;)Ljava/util/ArrayList;

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

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APListPopDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APListPopDialog;->f:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->access$200(Lcom/alipay/mobile/commonui/widget/APListPopDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->list_item_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;

    invoke-direct {v1}, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;->name:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    :goto_0
    iget-object v2, v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;->this$0:Lcom/alipay/mobile/commonui/widget/APListPopDialog;

    # getter for: Lcom/alipay/mobile/commonui/widget/APListPopDialog;->d:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->access$100(Lcom/alipay/mobile/commonui/widget/APListPopDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    iget-object v0, v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->list_dialog_item_top_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->list_dialog_item_single_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    iget-object v0, v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->list_dialog_item_bottom_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ViewHolder;->itemBg:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/ui/R$drawable;->list_dialog_item_mid_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method
