.class Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;
.super Landroid/os/AsyncTask;
.source "DynamicTemplateServiceImpl.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

.field private final synthetic b:Ljava/util/Map;

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;Ljava/util/Map;Landroid/content/Context;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->d:Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;

    .line 1007
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->a:Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;

    iget-object v1, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->d:Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$3;->d:Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;->callback(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
