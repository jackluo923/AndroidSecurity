.class Lcom/alipay/android/app/template/action/TplController$2;
.super Ljava/lang/Object;
.source "TplController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/action/TplController;

.field private final synthetic val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

.field private final synthetic val$bundle:Landroid/os/Bundle;

.field private final synthetic val$evtHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/action/TplController;Landroid/os/Bundle;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/action/TplController$2;->this$0:Lcom/alipay/android/app/template/action/TplController;

    iput-object p2, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$evtHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    iput-object p4, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "templateId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "template_time"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 240
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v3, "operationType"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 241
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v4, "operationParams"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v5, "pageData"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$2;->this$0:Lcom/alipay/android/app/template/action/TplController;

    .line 245
    iget-object v6, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$evtHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;

    iget-object v7, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 244
    # invokes: Lcom/alipay/android/app/template/action/TplController;->loadTemplateInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    invoke-static/range {v0 .. v7}, Lcom/alipay/android/app/template/action/TplController;->access$0(Lcom/alipay/android/app/template/action/TplController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V

    .line 246
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;->dismissProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$2;->this$0:Lcom/alipay/android/app/template/action/TplController;

    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$2;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    # invokes: Lcom/alipay/android/app/template/action/TplController;->handleError(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/template/action/TplController;->access$1(Lcom/alipay/android/app/template/action/TplController;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/Exception;)V

    goto :goto_0
.end method
