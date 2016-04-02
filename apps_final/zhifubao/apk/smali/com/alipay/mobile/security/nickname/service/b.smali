.class final Lcom/alipay/mobile/security/nickname/service/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/nickname/service/b;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/b;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # getter for: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->c:Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;
    invoke-static {v0}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$4(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobilesecurity/biz/gw/service/nickname/NicknameManagerFacade;->queryNickname()Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/nickname/service/b;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$5(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;Lcom/alipay/mobilesecurity/core/model/nickname/NicknameQueryRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/nickname/service/b;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # getter for: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$1(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u83b7\u53d6\u6635\u79f0\u5931\u8d25\uff0c\u51fa\u73b0\u7f51\u7edc\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setIsOpen(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setNickname(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setResultCode(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/nickname/service/b;->a:Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;

    # invokes: Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;->access$6(Lcom/alipay/mobile/security/nickname/service/NicknameServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/bean/NicknameResultBean;)V

    goto :goto_0
.end method
