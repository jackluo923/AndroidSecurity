.class public Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;
.super Lcom/inmobi/commons/db/DatabaseHandler;


# static fields
.field public static final COLUMN_CLICK_ID:Ljava/lang/String; = "clickid"

.field public static final COLUMN_CLICK_URL:Ljava/lang/String; = "clickurl"

.field public static final COLUMN_FOLLOW_REDIRECT:Ljava/lang/String; = "followredirect"

.field public static final COLUMN_PINGWV:Ljava/lang/String; = "pingwv"

.field public static final COLUMN_RETRY_COUNT:Ljava/lang/String; = "retrycount"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final TABLE_CLICK:Ljava/lang/String; = "clickevent"

.field private static a:Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;


# instance fields
.field private b:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/commons/db/TableData;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/db/DatabaseHandler;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->b:I

    return-void
.end method

.method private static a()Lcom/inmobi/commons/db/TableData;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/inmobi/commons/db/TableData;

    invoke-direct {v0}, Lcom/inmobi/commons/db/TableData;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setPrimaryKey(Z)V

    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    const-string v3, "clickid"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->VARCHAR:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    const-string v3, "clickurl"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    const-string v3, "pingwv"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    const-string v3, "followredirect"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    const-string v3, "retrycount"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/inmobi/commons/db/ColumnData;

    invoke-direct {v2}, Lcom/inmobi/commons/db/ColumnData;-><init>()V

    sget-object v3, Lcom/inmobi/commons/db/ColumnData$ColumnType;->INTEGER:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/db/ColumnData;->setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V

    invoke-virtual {v2, v4}, Lcom/inmobi/commons/db/ColumnData;->setMandatory(Z)V

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/db/TableData;->setmColumns(Ljava/util/LinkedHashMap;)V

    const-string v1, "clickevent"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/db/TableData;->setmTableName(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;
    .locals 4

    const-class v1, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->a:Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->a()Lcom/inmobi/commons/db/TableData;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    sput-object v2, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->a:Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    :cond_0
    sget-object v0, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->a:Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "[InMobi]-[Network]-4.4.1"

    const-string v3, "Exception getting DB Manager Instance"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized deleteClickEvents(Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->open()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "clickevent"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clickid = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "[InMobi]-[Network]-4.4.1"

    const-string v3, "Exception deleting click events"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getClickEvents(I)Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;
    .locals 6

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->open()V

    const-string v0, "clickevent"

    const-string v2, "timestamp"

    invoke-virtual {p0, v0, v2, p1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getNRows(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    new-instance v2, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    invoke-direct {v2}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setClickId(J)V

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setClickUrl(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v5, v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setPingWv(Z)V

    :goto_0
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v5, v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setFollowRedirect(Z)V

    :goto_1
    const/4 v3, 0x4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setRetryCount(I)V

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setTimestamp(J)V

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/impl/imai/IMAIClickEventList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setPingWv(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "[InMobi]-4.4.1"

    const-string v3, "Failed to get clicks from db"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v2, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->setFollowRedirect(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public getNoOfEvents()I
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->open()V

    invoke-static {}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getInstance()Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;

    move-result-object v0

    const-string v1, "clickevent"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getNoOfRows(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v2, "Exception getting no of click events"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized insertClick(Lcom/inmobi/androidsdk/impl/imai/db/ClickData;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->open()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "timestamp"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "clickurl"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getClickUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pingwv"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->isPingWv()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "retrycount"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getRetryCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "followredirect"

    invoke-virtual {p1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->isFollowRedirects()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "clickevent"

    invoke-virtual {p0, v1}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->getTableSize(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->b:I

    if-lt v1, v2, :cond_0

    const-string v1, "SELECT clickid FROM clickevent WHERE timestamp= (SELECT MIN(timestamp) FROM clickevent Limit 1);"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->executeQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v1, "clickevent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clickid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    const-string v1, "clickevent"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "[InMobi]-4.4.1"

    const-string v2, "Failed to insert click event to db"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDBLimit(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->b:I

    :cond_0
    return-void
.end method

.method public declared-synchronized updateRetryCount(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inmobi/androidsdk/impl/imai/db/ClickData;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->open()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "clickid"

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getClickId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "clickurl"

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getClickUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "followredirect"

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->isFollowRedirects()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "pingwv"

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->isPingWv()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "retrycount"

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getRetryCount()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "timestamp"

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "clickevent"

    const-string v6, "clickid= ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickData;->getClickId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-virtual {p0, v5, v4, v6, v7}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "[InMobi]-[Network]-4.4.1"

    const-string v3, "Exception updating retry count"

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    :goto_1
    monitor-exit p0

    return v0

    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/impl/imai/db/ClickDatabaseManager;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
