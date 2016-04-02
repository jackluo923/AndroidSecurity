.class final Lcom/alipay/mobile/security/gesture/component/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/component/q;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/q;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/t;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AlipaySetPattern"

    const-string/jumbo v2, "click skip btn, on pattern change"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/component/q;->a:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern;->mPatternChangeListener:Lcom/alipay/mobile/security/gesture/component/t;

    sget-object v1, Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;->SKIPCLICK:Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/component/t;->a(Lcom/alipay/mobile/security/gesture/component/AlipaySetPattern$SetViewEvent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
