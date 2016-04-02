.class public Lcom/alipay/mobile/rome/pushservice/integration/a/c;
.super Ljava/lang/Object;
.source "PushMsgIdMapTableCrud.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/pushservice/integration/a/c;

.field private static volatile c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

.field private static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->d:Landroid/content/Context;

    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/rome/pushservice/integration/a/c;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    .line 41
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->c()Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    move-result-object v0

    .line 41
    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    .line 45
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized b(Lcom/alipay/mobile/rome/pushservice/integration/b/c;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 148
    const-string/jumbo v1, "noticeId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "msgId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "tMsgId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-object v0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alipay/mobile/rome/pushservice/integration/b/c;)J
    .locals 4

    .prologue
    .line 101
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "insertBizIdMap:[ bizIdMap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->b(Lcom/alipay/mobile/rome/pushservice/integration/b/c;)Landroid/content/ContentValues;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;->a(Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/b/c;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 49
    monitor-enter p0

    const/4 v1, 0x4

    :try_start_0
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMsgIdMapByTMsgId:[ tMsgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    const-string/jumbo v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v2, " WHERE tMsgId = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 66
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/b/c;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/b/c;-><init>()V

    .line 70
    const-string/jumbo v2, "noticeId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 69
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->a:Ljava/lang/String;

    .line 72
    const-string/jumbo v2, "msgId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 71
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->b:Ljava/lang/String;

    .line 74
    const-string/jumbo v2, "tMsgId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 73
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->c:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 75
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->f:I

    .line 78
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getMsgIdMapByTMsgId: [ msg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :cond_1
    if-eqz v1, :cond_2

    .line 90
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 84
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 85
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a:Ljava/lang/String;

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getMsgIdMapByTMsgId: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    :goto_2
    if-eqz v1, :cond_3

    .line 90
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 91
    :cond_3
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 49
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 89
    :cond_4
    if-eqz v1, :cond_2

    .line 90
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 88
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 84
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 135
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteByTMsgId:[ tMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    const-string/jumbo v1, "tMsgId = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
