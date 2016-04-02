.class final Lcom/alipay/mobile/security/gesture/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/k;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "GestureActivity"

    const-string/jumbo v2, "\u7528\u6237\u8df3\u8fc7\u4e86\u624b\u52bf\uff0c\u66f4\u65b0\u6570\u636e\u5e93\uff0c\u624b\u52bf\u5bc6\u7801\u8bbe\u7f6e\u4e3a\u7a7a\uff0c\u8bbe\u7f6e\u5df2\u8df3\u8fc7"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/k;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->h(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/k;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    const-string/jumbo v1, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    const-string/jumbo v2, "state=skipGestureAction"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/k;->a:Lcom/alipay/mobile/security/gesture/ui/GestureActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/GestureActivity;->a(Lcom/alipay/mobile/security/gesture/ui/GestureActivity;)V

    return-void
.end method
