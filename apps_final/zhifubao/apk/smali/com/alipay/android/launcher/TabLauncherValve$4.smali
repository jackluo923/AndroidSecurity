.class Lcom/alipay/android/launcher/TabLauncherValve$4;
.super Ljava/lang/Object;
.source "TabLauncherValve.java"

# interfaces
.implements Lcom/alipay/mobile/common/share/TencentFilterListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncherValve;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncherValve;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherValve$4;->this$0:Lcom/alipay/android/launcher/TabLauncherValve;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isFilter(ILcom/alipay/mobile/common/share/ShareContent;)Z
    .locals 3

    .prologue
    const/16 v2, 0x200

    const/16 v1, 0x100

    .line 121
    if-eq p1, v2, :cond_0

    .line 122
    if-eq p1, v1, :cond_0

    .line 123
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 124
    const/16 v0, 0x10

    if-ne p1, v0, :cond_4

    .line 126
    :cond_0
    :try_start_0
    const-string/jumbo v0, "https://ds.alipay.com/help/wxshare.htm"

    .line 127
    if-eq p1, v2, :cond_1

    .line 128
    if-ne p1, v1, :cond_2

    .line 129
    :cond_1
    const-string/jumbo v0, "https://ds.alipay.com/help/qqshare.htm"

    .line 131
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipays://platformapi/startapp?appId=20000095&url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 137
    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 138
    if-eqz v0, :cond_3

    .line 139
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 146
    :goto_1
    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "shareFilter"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
