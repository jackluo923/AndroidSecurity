.class public Lcom/alipay/android/app/template/view/widget/TSelector$Options;
.super Ljava/lang/Object;
.source "TSelector.java"

# interfaces
.implements Lcom/alipay/android/app/template/TScriptable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TSelector;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/TSelector;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TSelector$Options;->a:Lcom/alipay/android/app/template/view/widget/TSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/alipay/android/app/template/view/widget/TOption;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector$Options;->a:Lcom/alipay/android/app/template/view/widget/TSelector;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TSelector;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public getJsObjName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string/jumbo v0, "options"

    return-object v0
.end method

.method public getScriptConfigJson()Ljava/lang/String;
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TSelector;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getInstance()Lcom/alipay/android/app/template/TScriptConfigHelper;

    move-result-object v0

    .line 139
    const-class v1, Lcom/alipay/android/app/template/view/widget/TSelector$Options;

    const-string/jumbo v2, "add"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/alipay/android/app/template/view/widget/TOption;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TSelector$Options;->getJsObjName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "add"

    invoke-virtual {v0, v2, v3, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->putMethodConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 141
    invoke-virtual {p0}, Lcom/alipay/android/app/template/view/widget/TSelector$Options;->getJsObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TScriptConfigHelper;->getScriptJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TSelector;->c(Ljava/lang/String;)V

    .line 143
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/template/view/widget/TSelector;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowHashCode()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TSelector$Options;->a:Lcom/alipay/android/app/template/view/widget/TSelector;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TSelector;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
