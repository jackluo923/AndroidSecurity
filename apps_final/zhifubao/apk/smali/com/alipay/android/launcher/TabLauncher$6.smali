.class Lcom/alipay/android/launcher/TabLauncher$6;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Lcom/alipay/mobile/mpass/badge/ui/BadgeView$OnBadgeChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$6;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBadgeChange(Lcom/alipay/mobile/mpass/badge/ui/BadgeView;Lcom/alipay/mobile/mpass/badge/model/BadgeStyle;I)V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$6;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    # invokes: Lcom/alipay/android/launcher/TabLauncher;->isBackgroundRunning()Z
    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->access$11(Lcom/alipay/android/launcher/TabLauncher;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TabLauncher"

    const-string/jumbo v2, "setupBadge when BadgeChange"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$6;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    # invokes: Lcom/alipay/android/launcher/TabLauncher;->setupBadge()V
    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->access$12(Lcom/alipay/android/launcher/TabLauncher;)V

    .line 451
    :cond_0
    return-void
.end method
