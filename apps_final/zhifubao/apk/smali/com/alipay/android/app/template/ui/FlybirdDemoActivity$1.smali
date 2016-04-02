.class Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;
.super Ljava/lang/Object;
.source "FlybirdDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;)Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string/jumbo v1, "/sdcard/pfq.html"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;

    invoke-static {v1}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->a(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v1

    .line 71
    iget-object v2, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;

    .line 70
    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->preLoadTemplate(Ljava/util/Map;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;->a:Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;

    new-instance v1, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1$1;-><init>(Lcom/alipay/android/app/template/ui/FlybirdDemoActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/ui/FlybirdDemoActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    return-void
.end method
