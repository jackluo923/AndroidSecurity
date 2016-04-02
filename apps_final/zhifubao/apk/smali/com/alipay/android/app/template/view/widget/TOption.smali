.class public Lcom/alipay/android/app/template/view/widget/TOption;
.super Lcom/alipay/android/app/template/view/widget/TElement;
.source "TOption.java"


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 16
    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TOption;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-object v0, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 22
    return-void
.end method

.method protected final a_()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TElement;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setSelected"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "selected"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 30
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TOption;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-boolean p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->selected:Z

    .line 34
    return-void
.end method
