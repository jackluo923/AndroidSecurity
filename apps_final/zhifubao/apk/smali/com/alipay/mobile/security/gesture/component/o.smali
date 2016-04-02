.class final Lcom/alipay/mobile/security/gesture/component/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/o;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/o;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$0(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/o;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$0(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->getIsCheckError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/o;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$0(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AlipaySetPattern"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
