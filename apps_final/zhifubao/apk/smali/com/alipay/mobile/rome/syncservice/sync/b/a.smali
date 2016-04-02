.class public Lcom/alipay/mobile/rome/syncservice/sync/b/a;
.super Ljava/lang/Object;
.source "SyncTableCrud.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;

.field private static volatile b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

.field private static volatile c:Landroid/content/Context;

.field private static volatile d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->e:Z

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;
    .locals 3

    .prologue
    .line 42
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    if-nez v0, :cond_1

    .line 43
    const-class v2, Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    if-nez v0, :cond_0

    .line 45
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/d/a;->a()Landroid/content/Context;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    .line 47
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    .line 43
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :cond_1
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)Lcom/alipay/mobile/rome/syncservice/sync/d/a;
    .locals 4

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;

    invoke-direct {v1}, Lcom/alipay/mobile/rome/syncservice/sync/d/a;-><init>()V

    .line 208
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->e:Z

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "userId"

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "biz"

    const-string/jumbo v3, "biz"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sKey"

    const-string/jumbo v3, "sKey"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "pf"

    const-string/jumbo v3, "pf"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "hm"

    const-string/jumbo v3, "hm"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "md"

    const-string/jumbo v3, "md"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sendNum"

    const-string/jumbo v3, "sendNum"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "localTime"

    const-string/jumbo v3, "localTime"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "reserv1"

    const-string/jumbo v3, "reserv1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "reserv2"

    const-string/jumbo v3, "reserv2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->e:Z

    .line 225
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a:Ljava/lang/String;

    .line 226
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "biz"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/lang/String;

    .line 227
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sKey"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    .line 228
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "pf"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    .line 229
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "hm"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->e:Ljava/lang/String;

    .line 230
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "md"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->f:Ljava/lang/String;

    .line 231
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sendNum"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->g:I

    .line 232
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "localTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->h:J

    .line 233
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->i:I

    .line 234
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "reserv1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->j:Ljava/lang/String;

    .line 235
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "reserv2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-object v1

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/alipay/mobile/rome/syncservice/sync/d/a;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    const-string/jumbo v1, "userId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "biz"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v1, "sKey"

    iget-wide v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 190
    const-string/jumbo v1, "pf"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "hm"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "md"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "sendNum"

    iget v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string/jumbo v1, "localTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string/jumbo v1, "reserv1"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v1, "reserv2"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/d/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    const-string/jumbo v1, "userId = ? AND biz = ? AND id = ? "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 65
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 64
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/rome/syncservice/sync/d/a;)J
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "sync_service_SyncTableCrud"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "insertMsg:[ msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b(Lcom/alipay/mobile/rome/syncservice/sync/d/a;)Landroid/content/ContentValues;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;->a(Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/rome/syncservice/sync/d/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 125
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string/jumbo v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string/jumbo v2, " WHERE id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v2, "( SELECT MIN(id) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string/jumbo v2, " WHERE userId = ? AND biz = ? )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    :try_start_1
    sget-object v3, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 140
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/rome/syncservice/sync/d/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 149
    if-eqz v1, :cond_0

    .line 150
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 145
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 146
    :goto_1
    :try_start_4
    const-string/jumbo v2, "sync_service_SyncTableCrud"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryMsgByBiz: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    :goto_2
    if-eqz v1, :cond_1

    .line 150
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 149
    :cond_2
    if-eqz v1, :cond_0

    .line 150
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 148
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 145
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    const-string/jumbo v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string/jumbo v1, " SET sendNum = sendNum + 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v1, " WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    :try_start_2
    const-string/jumbo v1, "sync_service_SyncTableCrud"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addMsgSendNum: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
