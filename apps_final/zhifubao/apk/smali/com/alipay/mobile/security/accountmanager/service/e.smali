.class final Lcom/alipay/mobile/security/accountmanager/service/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u66f4\u6539\u7528\u6237\u72b6\u6001\u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->b:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u8bf7\u6c42\u670d\u52a1\u5668\u5b89\u5168\u9000\u51fa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->access$0(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/e;->b:Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->access$1(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LogoutServiceImpl"

    const-string/jumbo v2, "\u5b89\u5168\u9000\u51fa\u7ed3\u675f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
