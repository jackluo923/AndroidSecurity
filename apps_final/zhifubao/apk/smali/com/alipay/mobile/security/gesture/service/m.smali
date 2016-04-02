.class final Lcom/alipay/mobile/security/gesture/service/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/service/l;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/service/l;Lcom/alipay/mobile/framework/service/ext/security/AuthService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/m;->a:Lcom/alipay/mobile/security/gesture/service/l;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/service/m;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "\u9632\u6b62\u7ea2\u5305\u9875\u9762\u9000\u51fa\u540e\uff0c\u51fa\u73b0\u672a\u767b\u5f55\u9996\u9875"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/m;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/m;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/m;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureServiceImpl"

    const-string/jumbo v2, "2\u79d2\u540e\u4e3a\u672a\u767b\u5f55\u6001\uff0c\u8c03\u767b\u5f55\uff0c\u5e76\u767b\u5f55\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
