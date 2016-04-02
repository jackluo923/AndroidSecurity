.class Lcom/alipay/android/app/template/action/TplController$5;
.super Ljava/lang/Object;
.source "TplController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/action/TplController;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field private final synthetic val$pageDataInJSON:Lcom/alibaba/fastjson/JSONObject;

.field private final synthetic val$template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

.field private final synthetic val$templateId:Ljava/lang/String;

.field private final synthetic val$tplJsonStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/action/TplController;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/action/TplController$5;->this$0:Lcom/alipay/android/app/template/action/TplController;

    iput-object p2, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$templateId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$tplJsonStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$pageDataInJSON:Lcom/alibaba/fastjson/JSONObject;

    iput-object p5, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    iput-object p6, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$5;->this$0:Lcom/alipay/android/app/template/action/TplController;

    # getter for: Lcom/alipay/android/app/template/action/TplController;->mDynTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;
    invoke-static {v0}, Lcom/alipay/android/app/template/action/TplController;->access$3(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$templateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$tplJsonStr:Ljava/lang/String;

    .line 484
    iget-object v3, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$pageDataInJSON:Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$activity:Landroid/app/Activity;

    const/4 v7, 0x0

    .line 483
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 486
    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$5;->this$0:Lcom/alipay/android/app/template/action/TplController;

    # getter for: Lcom/alipay/android/app/template/action/TplController;->mTemporaryCacheView:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/android/app/template/action/TplController;->access$5(Lcom/alipay/android/app/template/action/TplController;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity_;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 488
    const-string/jumbo v2, "markUpData"

    iget-object v3, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$tplJsonStr:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string/jumbo v2, "templateId"

    iget-object v3, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$templateId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string/jumbo v2, "publishVersion"

    iget-object v3, p0, Lcom/alipay/android/app/template/action/TplController$5;->val$template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    iget-object v3, v3, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string/jumbo v2, "temporaryCacheKey"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$5;->this$0:Lcom/alipay/android/app/template/action/TplController;

    # getter for: Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;
    invoke-static {v1}, Lcom/alipay/android/app/template/action/TplController;->access$4(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 494
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 493
    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$5;->this$0:Lcom/alipay/android/app/template/action/TplController;

    # getter for: Lcom/alipay/android/app/template/action/TplController;->mDynamicApp:Lcom/alipay/mobile/framework/app/ActivityApplication;
    invoke-static {v2}, Lcom/alipay/android/app/template/action/TplController;->access$4(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 498
    :cond_0
    return-void
.end method
