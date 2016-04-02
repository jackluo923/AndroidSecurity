.class public Lcom/alipay/mobile/commonui/widget/APInputDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;

.field private m:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;

.field private n:Landroid/widget/RelativeLayout;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->q:Z

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->o:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    sget v0, Lcom/alipay/mobile/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->q:Z

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->k:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->o:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->p:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->q:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->m:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->l:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/commonui/widget/APInputDialog;)Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->f:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method


# virtual methods
.method public getCancelBtn()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public getEnsureBtn()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public getInputContent()Lcom/alipay/mobile/commonui/widget/APEditText;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->f:Lcom/alipay/mobile/commonui/widget/APEditText;

    return-object v0
.end method

.method public getMsg()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->ap_input_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->c:Landroid/view/View;

    sget v0, Lcom/alipay/mobile/ui/R$id;->ensure:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->e:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->d:Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/ui/R$id;->titleTip:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->h:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->message:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->i:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->inputContent:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->f:Lcom/alipay/mobile/commonui/widget/APEditText;

    sget v0, Lcom/alipay/mobile/ui/R$id;->bottom_ll:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->g:Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->dialog_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->n:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->input_dialog_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->f:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1, v3, v0, v3, v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->setPadding(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->input_dialog_no_msg_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->n:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->input_dialog_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->q:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->d:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APInputDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APInputDialog$1;-><init>(Lcom/alipay/mobile/commonui/widget/APInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/commonui/widget/APInputDialog$2;-><init>(Lcom/alipay/mobile/commonui/widget/APInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$dimen;->input_dialog_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setNegativeListener(Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->m:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;

    return-void
.end method

.method public setPositiveListener(Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->l:Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;

    return-void
.end method

.method public show()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->a:Landroid/content/Context;

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

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APInputDialog;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/ui/R$color;->transparent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method
