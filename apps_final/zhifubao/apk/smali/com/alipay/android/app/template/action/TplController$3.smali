.class Lcom/alipay/android/app/template/action/TplController$3;
.super Ljava/lang/Object;
.source "TplController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/action/TplController;

.field private final synthetic val$finalTplLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

.field private final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/action/TplController;Ljava/util/Map;Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/action/TplController$3;->this$0:Lcom/alipay/android/app/template/action/TplController;

    iput-object p2, p0, Lcom/alipay/android/app/template/action/TplController$3;->val$map:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/android/app/template/action/TplController$3;->val$finalTplLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/app/template/action/TplController$3;)Lcom/alipay/android/app/template/action/TplController;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$3;->this$0:Lcom/alipay/android/app/template/action/TplController;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$3;->this$0:Lcom/alipay/android/app/template/action/TplController;

    # getter for: Lcom/alipay/android/app/template/action/TplController;->mDynTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;
    invoke-static {v0}, Lcom/alipay/android/app/template/action/TplController;->access$3(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$3;->val$map:Ljava/util/Map;

    .line 389
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 388
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->preLoadTemplate(Ljava/util/Map;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    move-result-object v0

    .line 390
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->OK:Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/app/template/action/TplController$3$1;

    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$3;->val$finalTplLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/app/template/action/TplController$3$1;-><init>(Lcom/alipay/android/app/template/action/TplController$3;Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 405
    :cond_0
    return-void
.end method
