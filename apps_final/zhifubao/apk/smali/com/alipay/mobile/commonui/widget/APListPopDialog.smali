.class public Lcom/alipay/mobile/commonui/widget/APListPopDialog;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/alipay/mobile/commonui/widget/APListPopDialog$OnItemClickListener;

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/view/View;

.field private f:Landroid/view/LayoutInflater;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->g:Z

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->f:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APListPopDialog;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APListPopDialog;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->list_dialog_pop:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->e:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/ui/R$id;->dialog_listView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/commonui/widget/APListPopDialog$ListAdapter;-><init>(Lcom/alipay/mobile/commonui/widget/APListPopDialog;Lcom/alipay/mobile/commonui/widget/APListPopDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->b:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->c:Lcom/alipay/mobile/commonui/widget/APListPopDialog$OnItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->c:Lcom/alipay/mobile/commonui/widget/APListPopDialog$OnItemClickListener;

    invoke-interface {v0, p3}, Lcom/alipay/mobile/commonui/widget/APListPopDialog$OnItemClickListener;->onItemClick(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->dismiss()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APListPopDialog$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->c:Lcom/alipay/mobile/commonui/widget/APListPopDialog$OnItemClickListener;

    return-void
.end method

.method public show()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->e:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APListPopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method
