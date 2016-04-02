.class Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;
.super Ljava/lang/Object;
.source "InitStatusCheck.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2;

.field private final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;->this$1:Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2;

    iput-object p2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;->val$userId:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start checkInitCmdReceived pp_init_cmd_received_flag"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_init_cmd_received_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 79
    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Init Cmd never exe . start  initLoad ,pp_init_cmd_received_flag"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pp_init_cmd_received_flag"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->getInstance()Lcom/alipay/mobile/publicplatform/relation/RelationRecv;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck$2$1;->val$userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/publicplatform/relation/RelationRecv;->initLoad(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/chatsdk/apiimpl/InitStatusCheck;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "checkInitCmdReceived"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
