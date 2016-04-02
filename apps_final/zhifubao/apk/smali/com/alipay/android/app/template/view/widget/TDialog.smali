.class public Lcom/alipay/android/app/template/view/widget/TDialog;
.super Lcom/alipay/android/app/template/view/widget/TBaseComponent;
.source "TDialog.java"


# instance fields
.field protected d:Landroid/app/AlertDialog;

.field private p:Z

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 43
    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->q:Landroid/widget/FrameLayout;

    .line 45
    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TDialog;)V
    .locals 7

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "dialog_linear_layout"

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {}, Lcom/alipay/android/app/template/util/UiUtil;->isOppoDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030074

    invoke-direct {v1, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TDialog;->getCurrentRootLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TDialog$2;-><init>(Lcom/alipay/android/app/template/view/widget/TDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20008

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->widthStr:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput v0, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->width:I

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    sget v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->DEFAULT_UNITSPEC:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->heightStr:I

    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput v0, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->height:I

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput v6, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->gravity:I

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getBodyElement()Lcom/alipay/android/app/template/view/widget/TBaseComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->getElementView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a(Landroid/app/Activity;)V

    .line 74
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->q:Landroid/widget/FrameLayout;

    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->q:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method final a(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->a(Landroid/app/Activity;Z)V

    .line 57
    return-void
.end method

.method protected final a_()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TDialog;->getCurrentRootLayout()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->hiddenKeyboardService(Landroid/view/View;Z)Z

    .line 227
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isDefaultKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->destroyKeyboard(Landroid/view/View;)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 232
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 233
    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 235
    iput-object v3, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    .line 236
    iput-object v3, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    .line 238
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 249
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 253
    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    .line 255
    :cond_1
    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->q:Landroid/widget/FrameLayout;

    .line 256
    iput-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    .line 257
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->destroy()V

    .line 258
    return-void
.end method

.method public extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->extendParentProperty(Lcom/alipay/android/app/template/util/TemplateLayoutParams;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textDecoration:Lcom/alipay/android/app/template/view/DecorationType;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->textOverflow:Lcom/alipay/android/app/template/view/OverflowType;

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->whiteSpace:Ljava/lang/String;

    .line 90
    :cond_2
    return-void
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->fillElementView(Landroid/app/Activity;)V

    .line 99
    return-void
.end method

.method public getCurrentRootLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->r:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string/jumbo v0, "dialog"

    return-object v0
.end method

.method public getText()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/template/view/widget/TDialog;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/tag/html/Html;->fromHtml(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 104
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TBaseComponent;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setInnerHtml"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "innerText"

    invoke-virtual {p1, p2, v1, v6, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setOpen"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Boolean;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 109
    const-string/jumbo v1, "open"

    invoke-virtual {p1, p2, v1, v6, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "show"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    const-string/jumbo v1, "show"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "showModal"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    const-string/jumbo v1, "showModal"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "close"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 118
    const-string/jumbo v1, "close"

    invoke-virtual {p1, p2, v1, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 119
    return-void
.end method

.method public setInnerHtml(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->text:Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->d:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TDialog;->getText()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public setOpen(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->p:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TDialog;->show()V

    .line 128
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->p:Z

    .line 130
    :cond_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TDialog;->close()V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TDialog$1;-><init>(Lcom/alipay/android/app/template/view/widget/TDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public showModal()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TDialog$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TDialog$3;-><init>(Lcom/alipay/android/app/template/view/widget/TDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method
