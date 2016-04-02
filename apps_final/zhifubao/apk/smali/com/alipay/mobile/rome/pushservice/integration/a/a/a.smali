.class public Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PushDbManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;
    .locals 4

    .prologue
    .line 37
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->a:Ljava/lang/String;

    const-string/jumbo v3, "getInstance: "

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    const-string/jumbo v2, "push_msg.db"

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    .line 42
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 88
    return-object v0
.end method

.method public static b()Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/a;

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/a;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 94
    return-object v0
.end method

.method public static c()Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/c;

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/c;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 99
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "onCreate: "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    invoke-static {p1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 62
    invoke-static {p1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 63
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->a:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 73
    invoke-static {p1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    invoke-static {p1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    :cond_0
    return-void
.end method
