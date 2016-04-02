.class final Lcom/alipay/mobile/security/authcenter/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/service/c;->a:Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AuthServiceImpl"

    const-string/jumbo v2, "\u8bbe\u7f6e\u624b\u52bf\u56de\u8c03\uff0c\u662f\u5426\u9501\uff01"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/c;->a:Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/AuthServiceImpl;->notifyUnlockGestureApp()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
