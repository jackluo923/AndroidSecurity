.class Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;
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
    iput-object p1, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;->a:Lcom/alipay/android/app/template/DynamicTemplateApp$1;

    iput-object p2, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object p3, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;->c:Landroid/app/Activity;

    .line 166
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;->b:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    const-string/jumbo v1, "COMMON@pagelist"

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/alipay/android/app/template/DynamicTemplateApp$1$2;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->preLoadTemplate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    const/4 v0, 0x0

    return-object v0
.end method
