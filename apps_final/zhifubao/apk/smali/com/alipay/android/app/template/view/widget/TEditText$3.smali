.class Lcom/alipay/android/app/template/view/widget/TEditText$3;
.super Ljava/lang/Object;
.source "TEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TEditText;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Z

.field private final synthetic d:Landroid/view/View;

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TEditText;Landroid/view/View;ZLandroid/view/View;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iput-object p2, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->b:Landroid/view/View;

    iput-boolean p3, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->c:Z

    iput-object p4, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->d:Landroid/view/View;

    iput-boolean p5, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->e:Z

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->b:Landroid/view/View;

    .line 260
    iget-boolean v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->c:Z

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->d:Landroid/view/View;

    invoke-static {v0, v4, v1}, Lcom/alipay/android/app/template/view/widget/TEditText;->a(Lcom/alipay/android/app/template/view/widget/TEditText;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v0, v0, Lcom/alipay/android/app/template/view/widget/TEditText;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getTemplateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    iget-object v1, v1, Lcom/alipay/android/app/template/view/widget/TEditText;->a:Landroid/widget/EditText;

    .line 264
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->a:Lcom/alipay/android/app/template/view/widget/TEditText;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/view/widget/TEditText;->getElementType()Lcom/alipay/android/app/template/view/ViewType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/template/util/UiUtil;->getKeyboardType(Lcom/alipay/android/app/template/view/ViewType;)Lcom/alipay/android/app/template/KeyboardType;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->d:Landroid/view/View;

    iget-boolean v5, p0, Lcom/alipay/android/app/template/view/widget/TEditText$3;->e:Z

    const/4 v6, 0x0

    .line 263
    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/template/TemplateKeyboardService;->showKeyboard(Landroid/widget/EditText;Lcom/alipay/android/app/template/KeyboardType;Landroid/view/View;Landroid/view/View;ZI)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    goto :goto_0
.end method
