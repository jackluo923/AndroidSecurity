.class public Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;
.super Ljava/lang/Object;
.source "MonitorSPCache.java"


# static fields
.field private static a:Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "MonitorCache"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b:Landroid/content/SharedPreferences;

    .line 35
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    .line 41
    :cond_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a:Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method public final b(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
