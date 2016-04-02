.class final Lcom/alipay/mobile/security/gesture/ui/an;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/an;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGestureResult(Z)V
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GesturePasswordSetActivity"

    const-string/jumbo v2, "settingGesture error"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/an;->a:Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/GesturePasswordSetActivity;->e()V

    :cond_0
    return-void
.end method
