.class public Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$OnDismissListener;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Landroid/view/WindowManager;

.field private n:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->FADE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    const/16 v0, 0x51

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->c:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->d:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->g:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->h:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SuperToast - You cannot use a null context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->toast_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->h:I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->supertoast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->m:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/ui/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/ui/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/commonui/widget/toast/Style;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->FADE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    const/16 v0, 0x51

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->c:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->d:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->g:I

    iput v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->h:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SuperToast - You cannot use a null context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$dimen;->toast_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->h:I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/ui/R$layout;->supertoast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->m:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/ui/R$id;->root_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/ui/R$id;->message_textview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a(Lcom/alipay/mobile/commonui/widget/toast/Style;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/commonui/widget/toast/Style;)V
    .locals 1

    iget-object v0, p1, Lcom/alipay/mobile/commonui/widget/toast/Style;->animations:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setAnimations(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;)V

    iget v0, p1, Lcom/alipay/mobile/commonui/widget/toast/Style;->typefaceStyle:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setTypefaceStyle(I)V

    iget v0, p1, Lcom/alipay/mobile/commonui/widget/toast/Style;->textColor:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setTextColor(I)V

    iget v0, p1, Lcom/alipay/mobile/commonui/widget/toast/Style;->background:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setBackground(I)V

    return-void
.end method

.method public static cancelAllSuperToasts()V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->getInstance()Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->cancelAllSuperToasts()V

    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setDuration(I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setDuration(I)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setAnimations(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/alipay/mobile/commonui/widget/toast/Style;)Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->setDuration(I)V

    invoke-direct {v0, p3}, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a(Lcom/alipay/mobile/commonui/widget/toast/Style;)V

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->getInstance()Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->removeSuperToast(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;)V

    return-void
.end method

.method public getAnimations()Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    return-object v0
.end method

.method public getBackground()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->f:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->d:I

    return v0
.end method

.method public getOnDismissListener()Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$OnDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->j:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$OnDismissListener;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->e:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->m:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAnimations(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    return-void
.end method

.method public setBackground(I)V
    .locals 1

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->f:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setDuration(I)V
    .locals 1

    const/16 v0, 0x1194

    if-le p1, v0, :cond_0

    iput v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->d:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->d:I

    goto :goto_0
.end method

.method public setGravity(III)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->c:I

    iput p2, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->g:I

    iput p3, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->h:I

    return-void
.end method

.method public setIcon(ILcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->BOTTOM:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->LEFT:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->RIGHT:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;->TOP:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$IconPosition;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOnDismissListener(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->j:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$OnDismissListener;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setTypefaceStyle(I)V
    .locals 2

    iput p1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->e:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public show()V
    .locals 3

    const/4 v1, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    sget-object v2, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->FLYIN:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    if-ne v0, v2, :cond_0

    const v0, 0x1030003

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->c:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->g:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->n:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->h:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->getInstance()Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/toast/ManagerSuperToast;->add(Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    sget-object v2, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->SCALE:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    if-ne v0, v2, :cond_1

    const v0, 0x1030002

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast;->a:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    sget-object v2, Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;->POPUP:Lcom/alipay/mobile/commonui/widget/toast/APSuperToast$Animations;

    if-ne v0, v2, :cond_2

    const v0, 0x1030056

    goto :goto_0

    :cond_2
    const v0, 0x1030004

    goto :goto_0
.end method
