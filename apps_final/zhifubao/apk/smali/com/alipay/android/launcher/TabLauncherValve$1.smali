.class Lcom/alipay/android/launcher/TabLauncherValve$1;
.super Ljava/lang/Object;
.source "TabLauncherValve.java"

# interfaces
.implements Lcom/alipay/mobile/common/share/ShareFilter;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncherValve;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncherValve;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherValve$1;->this$0:Lcom/alipay/android/launcher/TabLauncherValve;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 72
    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
