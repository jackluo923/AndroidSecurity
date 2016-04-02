.class Lcom/alipay/android/launcher/TabLauncher$10$1;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/launcher/TabLauncher$10;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher$10;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$10$1;->this$1:Lcom/alipay/android/launcher/TabLauncher$10;

    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1092
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "\u907f\u514d\u7b2c\u4e09\u65b9\u8df3\u8f6c\u51fa\u73b0\u672a\u767b\u5f55\u9996\u9875\uff0c\u5ef6\u8fdf2\u79d2\u540e\uff0c\u6839\u636e\u767b\u5f55\u72b6\u6001\u5224\u65ad\u662f\u5426\u8981\u8c03\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$10$1;->this$1:Lcom/alipay/android/launcher/TabLauncher$10;

    # getter for: Lcom/alipay/android/launcher/TabLauncher$10;->this$0:Lcom/alipay/android/launcher/TabLauncher;
    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher$10;->access$0(Lcom/alipay/android/launcher/TabLauncher$10;)Lcom/alipay/android/launcher/TabLauncher;

    move-result-object v0

    # getter for: Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->access$15(Lcom/alipay/android/launcher/TabLauncher;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1094
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 1095
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1096
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1097
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "2\u79d2\u540e\u4e3a\u672a\u767b\u5f55\u6001\uff0c\u8c03\u767b\u5f55\uff0c\u5e76\u767b\u5f55\u6210\u529f..."

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    :cond_1
    return-void
.end method
