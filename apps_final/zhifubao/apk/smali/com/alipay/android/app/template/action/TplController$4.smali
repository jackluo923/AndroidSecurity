.class Lcom/alipay/android/app/template/action/TplController$4;
.super Ljava/lang/Object;
.source "TplController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/action/TplController;

.field private final synthetic val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field private final synthetic val$pageDataInJSON:Lcom/alibaba/fastjson/JSONObject;

.field private final synthetic val$template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

.field private final synthetic val$templateId:Ljava/lang/String;

.field private final synthetic val$tplJsonStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/action/TplController;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/action/TplController$4;->this$0:Lcom/alipay/android/app/template/action/TplController;

    iput-object p2, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    iput-object p3, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$templateId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$tplJsonStr:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$pageDataInJSON:Lcom/alibaba/fastjson/JSONObject;

    iput-object p6, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    iput-object p7, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 468
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    move-object v8, v0

    check-cast v8, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;

    .line 469
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$4;->this$0:Lcom/alipay/android/app/template/action/TplController;

    # getter for: Lcom/alipay/android/app/template/action/TplController;->mDynTplService:Lcom/alipay/android/app/template/service/DynamicTemplateService;
    invoke-static {v0}, Lcom/alipay/android/app/template/action/TplController;->access$3(Lcom/alipay/android/app/template/action/TplController;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$templateId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$tplJsonStr:Ljava/lang/String;

    .line 470
    iget-object v3, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$pageDataInJSON:Lcom/alibaba/fastjson/JSONObject;

    iget-object v4, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$handler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$activity:Landroid/app/Activity;

    const/4 v7, 0x0

    .line 469
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$templateId:Ljava/lang/String;

    iput-object v1, v8, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->templateId:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$4;->val$template:Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    iget-object v1, v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    iput-object v1, v8, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->publishVersion:Ljava/lang/String;

    .line 473
    invoke-virtual {v8}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 474
    invoke-virtual {v8}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->getPageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/Tracker;->enterPage(Landroid/view/View;Ljava/lang/String;)V

    .line 476
    :cond_0
    invoke-virtual {v8, v0}, Lcom/alipay/android/app/template/ui/DynamicTemplateActivity;->showTemplate(Landroid/view/View;)V

    .line 477
    return-void
.end method
