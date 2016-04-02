.class public Lcom/alipay/mobile/commonui/widget/APListItemView;
.super Lcom/alipay/mobile/commonui/widget/APAbsTableView;


# static fields
.field public static NEW_FLAG_TYPE_IMAGE:I

.field public static NEW_FLAG_TYPE_TEXT:I


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/lang/ref/WeakReference;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/commonui/widget/APListItemView;->NEW_FLAG_TYPE_TEXT:I

    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/commonui/widget/APListItemView;->NEW_FLAG_TYPE_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public attachNewFlagView(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->a:Landroid/view/View;

    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListItemView;->addView(Landroid/view/View;)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->table_iconView:I

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->c:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APListItemView;->intNewFlagViewLayout()V

    return-void
.end method

.method public getNewFlagView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->a:Landroid/view/View;

    return-object v0
.end method

.method intNewFlagViewLayout()V
    .locals 5

    const/4 v2, -0x2

    const/4 v4, 0x0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    neg-int v1, v0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->a:Landroid/view/View;

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v4, v4, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->onFinishInflate()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListItemView;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APListItemView;->intNewFlagViewLayout()V

    :cond_0
    return-void
.end method
