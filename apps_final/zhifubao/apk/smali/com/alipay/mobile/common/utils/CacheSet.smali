.class public Lcom/alipay/mobile/common/utils/CacheSet;
.super Ljava/lang/Object;
.source "CacheSet.java"


# static fields
.field public static final FILE_NAME:Ljava/lang/String; = "AppHall.cache"

.field static final TAG:Ljava/lang/String; = "AlixSet"

.field private static b:Lcom/alipay/mobile/common/utils/CacheSet;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;
    .locals 3

    .prologue
    .line 15
    const-class v1, Lcom/alipay/mobile/common/utils/CacheSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/alipay/mobile/common/utils/CacheSet;

    invoke-direct {v0}, Lcom/alipay/mobile/common/utils/CacheSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;

    .line 18
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    .line 19
    sget-object v0, Lcom/alipay/mobile/common/utils/CacheSet;->b:Lcom/alipay/mobile/common/utils/CacheSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 15
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    if-nez v0, :cond_0

    :goto_0
    return-wide p2

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 33
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/CacheSet;->a:Landroid/content/Context;

    const-string/jumbo v1, "AppHall.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method
