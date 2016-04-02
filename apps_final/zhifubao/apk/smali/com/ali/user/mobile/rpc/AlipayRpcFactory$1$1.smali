.class Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1$1;
.super Ljava/lang/Object;
.source "AlipayRpcFactory.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/Transport;


# instance fields
.field final synthetic this$1:Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1$1;->this$1:Lcom/ali/user/mobile/rpc/AlipayRpcFactory$1;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    const-string/jumbo v0, "com.ali.user.mobile.info.AppInfo"

    const-string/jumbo v1, "getInstance"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/util/ReflectUtils;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    const-string/jumbo v1, "getApdid"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/util/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    check-cast p1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 49
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "apdid"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 53
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v1, "aliusergw"

    const-string/jumbo v2, "1"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 56
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;

    .line 57
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/HttpTransportSevice;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
