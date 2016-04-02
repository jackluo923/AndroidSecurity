.class Lcom/alipay/android/app/template/view/widget/TEditText$4;
.super Ljava/lang/Object;
.source "TEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TEditText;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$4;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$4;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-nez v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$4;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$4;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplateKeyboardService;->hideKeyboard(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    goto :goto_0
.end method
