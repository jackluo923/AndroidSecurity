.class public Lcom/alipay/mobile/rome/pushservice/integration/a/a;
.super Ljava/lang/Object;
.source "PushBizTableCrud.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/pushservice/integration/a/a;

.field private static volatile c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

.field private static d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 34
    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->d:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    .line 45
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;

    .line 46
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a;->b()Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    .line 49
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b:Lcom/alipay/mobile/rome/pushservice/integration/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)Lcom/alipay/mobile/rome/pushservice/integration/b/a;
    .locals 3

    .prologue
    .line 222
    monitor-enter p0

    if-nez p1, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 242
    :goto_0
    monitor-exit p0

    return-object v0

    .line 225
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/b/a;-><init>()V

    .line 227
    const-string/jumbo v1, "noticeId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 226
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    .line 229
    const-string/jumbo v1, "msgId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 228
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->b:Ljava/lang/String;

    .line 231
    const-string/jumbo v1, "bBId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 230
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    .line 233
    const-string/jumbo v1, "bSBId"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 232
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    .line 235
    const-string/jumbo v1, "bMsgCount"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 234
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I

    .line 237
    const-string/jumbo v1, "localTime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 236
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->h:J

    .line 239
    const-string/jumbo v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 238
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->i:I

    .line 241
    const-string/jumbo v1, "presKey1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 240
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/alipay/mobile/rome/pushservice/integration/b/a;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 210
    const-string/jumbo v1, "noticeId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v1, "msgId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v1, "bBId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v1, "bSBId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v1, "bMsgCount"

    iget v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string/jumbo v1, "localTime"

    iget-wide v2, p1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    const-string/jumbo v1, "presKey1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p0

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 123
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteByBizIdSubBizId:[ bizId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " subBizId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, -0x1

    .line 130
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    const-string/jumbo v1, "bBId = ? AND bSBId = ? AND presKey1 = ? "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/rome/pushservice/integration/b/a;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 107
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "insertMsg:[ msg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-wide/16 v0, -0x1

    .line 116
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 114
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b(Lcom/alipay/mobile/rome/pushservice/integration/b/a;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;->a(Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getSubBizIdsByBizId:[ bizId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 61
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string/jumbo v1, "SELECT DISTINCT bSBId FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, " WHERE bBId = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string/jumbo v1, " AND presKey1 = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    const/4 v1, 0x0

    .line 72
    :try_start_2
    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getSubBizIdsByBizId: [ getCount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 77
    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    .line 89
    if-eqz v1, :cond_1

    .line 97
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 80
    :cond_4
    :try_start_4
    const-string/jumbo v2, "bSBId"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getSubBizIdsByBizId: [ bSBId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 84
    const-string/jumbo v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryMsgByBizId: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 92
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    :catchall_1
    move-exception v0

    .line 96
    if-eqz v1, :cond_6

    .line 97
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 137
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteByBizId:[ bizId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    const/4 v0, -0x1

    .line 144
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    const-string/jumbo v1, "bBId = ? AND presKey1 = ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/pushservice/integration/b/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "queryMsgByBizId:[ bBId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 160
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const-string/jumbo v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v1, " WHERE bBId = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string/jumbo v1, " AND bSBId = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string/jumbo v1, " AND presKey1 = ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v2, v1

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const/4 v1, 0x2

    aput-object p3, v2, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    const/4 v1, 0x0

    .line 172
    :try_start_2
    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->c:Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a/b;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryMsgByMergeId: [ getCount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 176
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_3
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_4

    .line 190
    if-eqz v1, :cond_1

    .line 198
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_4
    :try_start_4
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    move-result-object v2

    .line 183
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 184
    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "queryMsgByBizId: [ msg="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 185
    const-string/jumbo v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a:Ljava/lang/String;

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryMsgByBizId: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 194
    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 196
    :catchall_1
    move-exception v0

    .line 197
    if-eqz v1, :cond_6

    .line 198
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
