.class public Lcom/alipay/mobile/common/logging/util/LoggingSPCache;
.super Ljava/lang/Object;
.source "LoggingSPCache.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x2e

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "LoggingCache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/SharedPreferences;

    .line 34
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/common/logging/util/LoggingSPCache;
    .locals 3

    .prologue
    .line 43
    const-class v1, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "need createInstance befor use"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 46
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a:Lcom/alipay/mobile/common/logging/util/LoggingSPCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit v1

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    return-void
.end method

.method public final b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->b:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method
