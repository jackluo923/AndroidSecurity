.class public Lcom/alipay/mobile/commonui/widget/APToDoListItemView;
.super Lcom/alipay/mobile/commonui/widget/APLinearLayout;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private c:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private d:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_todo_list_item:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->contact_photo_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_name_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->valid_date_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->item_third_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDateView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public getThirdView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method

.method public requestLayout()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APToDoListItemView;->forceLayout()V

    return-void
.end method
