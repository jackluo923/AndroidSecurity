.class Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;
.super Ljava/lang/Object;
.source "O2oHomeServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

.field private final synthetic val$requestData:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->val$requestData:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 331
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 333
    const-class v1, Lcom/alipay/mobilepromo/biz/service/offlinetaobao/NearManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilepromo/biz/service/offlinetaobao/NearManageService;

    .line 334
    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$7()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RPC\uff1a\u9644\u8fd1\u670d\u52a1\u4e0d\u53ef\u7528"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    invoke-static {v0, v5}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    .line 361
    :goto_0
    return-void

    .line 341
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->val$requestData:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;

    invoke-interface {v0, v1}, Lcom/alipay/mobilepromo/biz/service/offlinetaobao/NearManageService;->queryNearActivity(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/result/NearActivityResult;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/result/NearActivityResult;->success:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/result/NearActivityResult;->nearActivityInfo:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    if-nez v1, :cond_2

    .line 343
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$7()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "RPC\uff1a\u9644\u8fd1\u670d\u52a1\u5931\u8d25\u6216\u662f\u7ed3\u679c\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$7()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RPC \u9644\u8fd1\u670d\u52a1\u8bf7\u6c42\u5f02\u5e38\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    invoke-static {v0, v5}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V

    goto :goto_0

    .line 348
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/result/NearActivityResult;->nearActivityInfo:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->logoUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/result/NearActivityResult;->nearActivityInfo:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;->redirectUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->sendError(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/req/NearActivityReq;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 359
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$7()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RPC success: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl$6;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;

    iget-object v0, v0, Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/result/NearActivityResult;->nearActivityInfo:Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->update(Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;->access$12(Lcom/alipay/android/phone/discovery/o2ohome/O2oHomeServiceImpl;Lcom/alipay/mobilepromo/common/service/facade/offlinetaobao/model/NearActivityInfo;)V

    goto/16 :goto_0
.end method
