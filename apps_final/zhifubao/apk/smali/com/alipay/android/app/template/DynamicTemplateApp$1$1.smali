.class Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;
.super Landroid/os/AsyncTask;
.source "DynamicTemplateApp.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateApp$1;

.field private final synthetic b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateApp$1;Lcom/alipay/android/app/template/service/DynamicTemplateService;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->a:Lcom/alipay/android/app/template/DynamicTemplateApp$1;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object p3, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->c:Landroid/app/Activity;

    .line 115
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    const-string/jumbo v1, "WALLET-O2O@o2o_merchant_detail_view"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->preLoadTemplate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1
    check-cast p1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    sget-object v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->c:Landroid/app/Activity;

    check-cast v1, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    const-string/jumbo v2, "WALLET-O2O@o2o_merchant_detail_view"

    const/4 v3, 0x0

    const-string/jumbo v4, "{\"text\":\"hahahahaha\"}"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->launchPage(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$1;->c:Landroid/app/Activity;

    const-string/jumbo v1, "preload fail"

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
