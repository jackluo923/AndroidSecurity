.class public Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;
.super Landroid/app/Dialog;


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/alipay/mobile/ui/R$style;->bottom_popup_dialog:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-boolean v3, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->e:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->a:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->bottom_popup_action_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/ui/R$id;->action_container:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->b:Landroid/widget/LinearLayout;

    sget v0, Lcom/alipay/mobile/ui/R$id;->title_txt:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->c:Landroid/widget/TextView;

    sget v0, Lcom/alipay/mobile/ui/R$id;->above_bg:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->setCanceledOnTouchOutside(Z)V

    sget v0, Lcom/alipay/mobile/ui/R$id;->btn_cancel:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$1;-><init>(Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$2;-><init>(Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->e:Z

    return v0
.end method


# virtual methods
.method public addAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->bottom_popup_action_dialog_subbtn:I

    iget-object v2, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->b:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->a(Landroid/view/ViewGroup;)V

    sget v1, Lcom/alipay/mobile/ui/R$id;->btn_sub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->a:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->bottom_popup_action_dialog_subbtn:I

    iget-object v2, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->b:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->a(Landroid/view/ViewGroup;)V

    sget v1, Lcom/alipay/mobile/ui/R$id;->btn_sub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$anim;->slide_out_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog$3;-><init>(Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public isCanceledOnTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->e:Z

    return v0
.end method

.method protected realDismiss()V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public setCanceledOnTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->e:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$anim;->slide_in_bottom:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
