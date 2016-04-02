.class public Lcom/alipay/android/app/template/view/widget/TCheckBox;
.super Lcom/alipay/android/app/template/view/widget/TButton;
.source "TCheckBox.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TButton;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    .line 20
    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    .line 27
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->r:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->view:Landroid/view/View;

    .line 29
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/alipay/android/app/template/view/widget/TButton;->destroy()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    .line 80
    return-void
.end method

.method public fillElementView(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TButton;->fillElementView(Landroid/app/Activity;)V

    .line 34
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 35
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    :cond_0
    return-void
.end method

.method public getCheckStatus()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-boolean v0, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultChecked:Z

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onInputScript:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/app/template/ScriptPropertyType;->oninput:Lcom/alipay/android/app/template/ScriptPropertyType;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 43
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TButton;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getCheckStatus"

    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "setCheck"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "checked"

    invoke-virtual {p1, p2, v2, v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putFieldConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 47
    return-void
.end method

.method public setCheck(Z)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->isExecutedOnload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TCheckBox;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iput-boolean p1, v0, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->defaultChecked:Z

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/template/view/widget/TCheckBox;->setCheck(Z)V

    .line 69
    return-void
.end method
