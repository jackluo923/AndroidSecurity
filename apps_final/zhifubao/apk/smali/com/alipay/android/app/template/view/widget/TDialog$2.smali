.class Lcom/alipay/android/app/template/view/widget/TDialog$2;
.super Ljava/lang/Object;
.source "TDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TDialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    const/4 v2, 0x4

    if-ne p2, v2, :cond_2

    .line 177
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    invoke-virtual {v3}, Lcom/alipay/android/app/template/view/widget/TDialog;->getCurrentRootLayout()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/app/template/TemplateWindow;->hiddenKeyboardService(Landroid/view/View;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    :goto_0
    return v0

    .line 182
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v2, v2, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyDownScript:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TDialog;->h:Lcom/alipay/android/app/template/util/TemplateLayoutParams;

    iget-object v1, v1, Lcom/alipay/android/app/template/util/TemplateLayoutParams;->onKeyDownScript:Ljava/lang/String;

    .line 184
    sget-object v2, Lcom/alipay/android/app/template/ScriptPropertyType;->onkeydown:Lcom/alipay/android/app/template/ScriptPropertyType;

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/TemplateWindow;->executePropertyScript(Ljava/lang/String;Lcom/alipay/android/app/template/ScriptPropertyType;)Z

    move-result v0

    goto :goto_0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TDialog;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TDialog;->k:Lcom/alipay/android/app/template/TemplateWindow;

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    iget-object v3, v3, Lcom/alipay/android/app/template/view/widget/TDialog;->m:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TDialog$2;->a:Lcom/alipay/android/app/template/view/widget/TDialog;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/view/widget/TDialog;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v4

    .line 187
    invoke-virtual {v4}, Lcom/alipay/android/app/template/TemplateWindow;->getEvent()Lcom/alipay/android/app/template/TemplateWindowEvent;

    move-result-object v4

    aput-object v4, v0, v1

    .line 186
    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/template/TemplateWindow;->callJsMethod(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 190
    goto :goto_0
.end method
