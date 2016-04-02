.class public Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;

.field private m:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->j:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->k:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->m:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->l:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;

    return-object v0
.end method


# virtual methods
.method public getCancelBtn()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public getEnsureBtn()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public getMsg()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->dialog_normal_pop:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->c:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->ensure:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->e:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->d:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->titleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->f:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->subTitleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->g:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$1;-><init>(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$2;-><init>(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setNegativeListener(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->m:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickNegativeListener;

    return-void
.end method

.method public setPositiveListener(Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->l:Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;

    return-void
.end method

.method public show()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->a:Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APNormalPopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method
