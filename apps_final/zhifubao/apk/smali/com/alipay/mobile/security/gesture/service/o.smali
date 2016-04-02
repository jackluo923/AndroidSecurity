.class final Lcom/alipay/mobile/security/gesture/service/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/service/n;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/service/n;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/service/o;->a:Lcom/alipay/mobile/security/gesture/service/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/o;->a:Lcom/alipay/mobile/security/gesture/service/n;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/service/n;->a(Lcom/alipay/mobile/security/gesture/service/n;)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "20000184"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
