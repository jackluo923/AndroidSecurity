.class Lcom/ali/user/mobile/info/AppInfo$1;
.super Ljava/lang/Object;
.source "AppInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/info/AppInfo;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/info/AppInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/info/AppInfo$1;->this$0:Lcom/ali/user/mobile/info/AppInfo;

    iput-object p2, p0, Lcom/ali/user/mobile/info/AppInfo$1;->a:Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/info/AppInfo$1;)Lcom/ali/user/mobile/info/AppInfo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ali/user/mobile/info/AppInfo$1;->this$0:Lcom/ali/user/mobile/info/AppInfo;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 90
    const-string/jumbo v0, "AppInfo"

    const-string/jumbo v1, "start to initUmidToken"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string/jumbo v0, "utdid"

    invoke-static {}, Lcom/ali/user/mobile/info/DeviceInfo;->getInstance()Lcom/ali/user/mobile/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/DeviceInfo;->getUtDid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v0, "tid"

    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo$1;->this$0:Lcom/ali/user/mobile/info/AppInfo;

    invoke-virtual {v2}, Lcom/ali/user/mobile/info/AppInfo;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "userId"

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->isDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/ali/user/mobile/info/AppInfo$1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v2

    new-instance v3, Lcom/ali/user/mobile/info/AppInfo$1$1;

    iget-object v4, p0, Lcom/ali/user/mobile/info/AppInfo$1;->a:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/ali/user/mobile/info/AppInfo$1$1;-><init>(Lcom/ali/user/mobile/info/AppInfo$1;Landroid/content/Context;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V

    .line 110
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
