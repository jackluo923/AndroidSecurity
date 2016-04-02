.class public Lcom/alipay/android/app/template/view/widget/TPassword;
.super Lcom/alipay/android/app/template/view/widget/TEditText;
.source "TPassword.java"


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TEditText;-><init>(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Lcom/alipay/android/app/template/TemplateWindow;)V

    .line 13
    return-void
.end method


# virtual methods
.method public fillElementView(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/widget/TEditText;->fillElementView(Landroid/app/Activity;)V

    .line 24
    return-void
.end method

.method public putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/template/view/widget/TEditText;->putJsConfig(Lcom/alipay/android/app/template/TScriptConfigHelper;Ljava/lang/String;)V

    .line 19
    return-void
.end method
