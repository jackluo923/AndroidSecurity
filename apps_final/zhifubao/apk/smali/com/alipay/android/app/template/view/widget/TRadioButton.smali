.class public Lcom/alipay/android/app/template/view/widget/TRadioButton;
.super Lcom/alipay/android/app/template/view/widget/TElement;
.source "TRadioButton.java"


# instance fields
.field a:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 65
    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->a:Landroid/widget/RadioButton;

    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->a:Landroid/widget/RadioButton;

    new-instance v1, Lcom/alipay/android/app/template/view/widget/TRadioButton$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/view/widget/TRadioButton$1;-><init>(Lcom/alipay/android/app/template/view/widget/TRadioButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->getInstance()Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/template/view/widget/TRadioButton$GlobalRadioBtnMgr;->registerBtn(Lcom/alipay/android/app/template/view/widget/TRadioButton;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->a:Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 93
    return-void
.end method

.method final a(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->a(Landroid/app/Activity;Z)V

    .line 98
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->a:Landroid/widget/RadioButton;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 100
    return-void
.end method

.method public getNameProp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValueProp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TRadioButton;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 69
    return-void
.end method
