.class Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;
.super Ljava/lang/Object;
.source "SchemeServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;

.field final synthetic this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;->a:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 245
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "atuh\u6210\u529f\uff0c\u5904\u7406scheme"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;->a:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$SchemeProcesser;->process()V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl$4;->this$0:Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;

    # getter for: Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->d:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;->access$7(Lcom/alipay/mobile/framework/service/common/impl/SchemeServiceImpl;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auth\u5931\u8d25\uff0c\u4e0d\u5904\u7406scheme"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
