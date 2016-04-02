.class final Lcom/alipay/android/phone/home/ui/f;
.super Ljava/lang/Object;
.source "AbstractHomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->c:Ljava/lang/String;

    const-string/jumbo v2, "refreshHomeAppsData()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFragment;->e:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeUrgentAppsFromRemote()V

    .line 200
    :cond_0
    return-void
.end method
