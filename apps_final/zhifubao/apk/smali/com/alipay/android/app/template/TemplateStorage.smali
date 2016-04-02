.class Lcom/alipay/android/app/template/TemplateStorage;
.super Ljava/lang/Object;
.source "TemplateStorage.java"


# instance fields
.field private final a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

.field private final b:Ljava/lang/Object;

.field private final c:I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateStorage;->b:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/app/template/TemplateStorage;->c:I

    .line 36
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 37
    const-class v1, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 36
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateStorage;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/template/TemplateStorage;->d:Z

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 165
    invoke-static {}, Lcom/alipay/android/app/template/TemplateStorage;->a()Ljava/lang/String;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateStorage;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateStorage;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3, p2}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 190
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/io/Serializable;)Z
    .locals 6

    .prologue
    .line 151
    invoke-static {}, Lcom/alipay/android/app/template/TemplateStorage;->a()Ljava/lang/String;

    move-result-object v1

    .line 152
    const/4 v0, 0x0

    .line 153
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateStorage;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/app/template/TemplateStorage;->a:Lcom/alipay/mobile/framework/service/common/SecurityCacheService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, p2}, Lcom/alipay/mobile/framework/service/common/SecurityCacheService;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    const/4 v0, 0x1

    .line 153
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    return v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cache://dynamic_template/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 2

    .prologue
    .line 96
    invoke-static {p1}, Lcom/alipay/android/app/template/TemplateStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/template/TemplateStorage;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    .line 97
    return-object v0
.end method

.method public final a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    .line 118
    if-eqz p1, :cond_1

    .line 119
    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    :cond_1
    const-string/jumbo v0, "TemplateStorage.saveTemplate"

    .line 123
    const-string/jumbo v1, "not save"

    const-string/jumbo v2, "template is invalid"

    .line 122
    invoke-static {v0, v1, v2, v4}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/template/TemplateStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->a(Ljava/lang/String;Ljava/io/Serializable;)Z

    move-result v1

    .line 127
    const-string/jumbo v2, "TemplateStorage.saveTemplate"

    .line 128
    if-eqz v1, :cond_3

    const-string/jumbo v0, "save success"

    :goto_1
    iget-object v3, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 127
    invoke-static {v2, v0, v3, v4}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v1

    .line 129
    goto :goto_0

    .line 128
    :cond_3
    const-string/jumbo v0, "save fail"

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 147
    invoke-static {p1}, Lcom/alipay/android/app/template/TemplateStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/app/template/TemplateStorage;->a(Ljava/lang/String;Ljava/io/Serializable;)Z

    .line 148
    return-void
.end method
