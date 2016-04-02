.class Lcom/alipay/android/app/template/action/TplController$1;
.super Ljava/lang/Object;
.source "TplController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/template/action/TplController;

.field private final synthetic val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

.field private final synthetic val$json:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/action/TplController;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/action/TplController$1;->this$0:Lcom/alipay/android/app/template/action/TplController;

    iput-object p2, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$json:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$json:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "tplId"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$json:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "tplTime"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$json:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "pageData"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$json:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "operationType"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$json:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "operationParams"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$json:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v6, "cacheStrategy"

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/template/action/TplController$1;->this$0:Lcom/alipay/android/app/template/action/TplController;

    .line 163
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    .line 162
    # invokes: Lcom/alipay/android/app/template/action/TplController;->loadTemplateInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    invoke-static/range {v0 .. v7}, Lcom/alipay/android/app/template/action/TplController;->access$0(Lcom/alipay/android/app/template/action/TplController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    iget-object v1, p0, Lcom/alipay/android/app/template/action/TplController$1;->this$0:Lcom/alipay/android/app/template/action/TplController;

    iget-object v2, p0, Lcom/alipay/android/app/template/action/TplController$1;->val$actRes:Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;

    # invokes: Lcom/alipay/android/app/template/action/TplController;->handleError(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/Exception;)V
    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/template/action/TplController;->access$1(Lcom/alipay/android/app/template/action/TplController;Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/Exception;)V

    goto :goto_0
.end method
