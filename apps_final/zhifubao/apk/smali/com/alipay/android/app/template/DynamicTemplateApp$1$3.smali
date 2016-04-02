.class Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;
.super Landroid/os/AsyncTask;
.source "DynamicTemplateApp.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateApp$1;

.field private final synthetic b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateApp$1;Lcom/alipay/android/app/template/service/DynamicTemplateService;Landroid/app/Activity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->a:Lcom/alipay/android/app/template/DynamicTemplateApp$1;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object p3, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->d:Landroid/app/Dialog;

    .line 180
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 186
    const-string/jumbo v1, "WALLET-FACEBOOK@flashsale-test-jingyuan"

    .line 187
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->c:Landroid/app/Activity;

    const/4 v6, 0x0

    .line 185
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 189
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v7

    .line 192
    goto :goto_0
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 1
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$3;->c:Landroid/app/Activity;

    const-string/jumbo v1, "error"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
