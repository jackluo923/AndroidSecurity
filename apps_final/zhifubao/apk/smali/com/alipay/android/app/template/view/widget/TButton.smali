.class public Lcom/alipay/android/app/template/view/widget/TButton;
.super Lcom/alipay/android/app/template/view/widget/TLabel;
.source "TButton.java"


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TLabel;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TButton;->r:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
.end method

.method a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TButton;->r:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TButton;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TButton;->r:Landroid/widget/TextView;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 20
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x11

    return v0
.end method
