.class public Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SyncDbManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 44
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;
    .locals 3

    .prologue
    .line 34
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "getInstance: "

    invoke-static {v0, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    const-string/jumbo v2, "sync_dispatch.db"

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;

    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDowngrade: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "onUpgrade: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
