.class final Lcom/alipay/mobile/security/gesture/component/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/gesture/component/v;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->b:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$5(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/alipay/mobile/security/gesture/component/LockView;->MINSELECTED:I

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$6(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->f:Lcom/alipay/mobile/security/gesture/component/LockView;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$0(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/security/gesture/component/LockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/component/LockView;->clear()V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->d:Lcom/alipay/mobile/security/gesture/component/LockIndicator;
    invoke-static {v1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$4(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Lcom/alipay/mobile/security/gesture/component/LockIndicator;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$7(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;Lcom/alipay/mobile/security/gesture/component/LockIndicator;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    # getter for: Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->b:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$5(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/t;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipaySetPattern"

    const-string/jumbo v2, "setting gesture password success, on pattern change"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/t;

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->SETSUCCESS:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/security/gesture/component/t;->a(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/s;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->access$8(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V

    goto :goto_1
.end method
