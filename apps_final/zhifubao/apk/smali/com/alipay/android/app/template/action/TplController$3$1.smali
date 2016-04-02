.class Lcom/alipay/android/app/template/action/TplController$3$1;
.super Ljava/lang/Object;
.source "TplController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/app/template/action/TplController$3;

.field private final synthetic val$finalTplLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/action/TplController$3;Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/action/TplController$3$1;->this$1:Lcom/alipay/android/app/template/action/TplController$3;

    iput-object p2, p0, Lcom/alipay/android/app/template/action/TplController$3$1;->val$finalTplLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 395
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/template/ui/TplListViewActivity;->DEVELOPMENT_MODE:Z

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 397
    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$3$1;->this$1:Lcom/alipay/android/app/template/action/TplController$3;

    # getter for: Lcom/alipay/android/app/template/action/TplController$3;->this$0:Lcom/alipay/android/app/template/action/TplController;
    invoke-static {v1}, Lcom/alipay/android/app/template/action/TplController$3;->access$0(Lcom/alipay/android/app/template/action/TplController$3;)Lcom/alipay/android/app/template/action/TplController;

    move-result-object v1

    # getter for: Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;
    invoke-static {v1}, Lcom/alipay/android/app/template/action/TplController;->access$4(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 398
    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 399
    const-class v3, Lcom/alipay/android/app/template/ui/TplListViewActivity;

    .line 398
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 400
    const-string/jumbo v2, "templateLayout"

    iget-object v3, p0, Lcom/alipay/android/app/template/action/TplController$3$1;->val$finalTplLayout:Lcom/alipay/mobiletms/common/service/facade/result/TemplateLayout;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$3$1;->this$1:Lcom/alipay/android/app/template/action/TplController$3;

    # getter for: Lcom/alipay/android/app/template/action/TplController$3;->this$0:Lcom/alipay/android/app/template/action/TplController;
    invoke-static {v2}, Lcom/alipay/android/app/template/action/TplController$3;->access$0(Lcom/alipay/android/app/template/action/TplController$3;)Lcom/alipay/android/app/template/action/TplController;

    move-result-object v2

    # getter for: Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;
    invoke-static {v2}, Lcom/alipay/android/app/template/action/TplController;->access$4(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 402
    return-void
.end method
