.class public final Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;


# instance fields
.field private a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

.field private b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "eventid"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "sid"

    aput-object v1, v0, v6

    const-string v1, "ts"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ssts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "am"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->d:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "levelid"

    aput-object v1, v0, v4

    const-string v1, "levelname"

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->e:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "levelid"

    aput-object v1, v0, v4

    const-string v1, "levelname"

    aput-object v1, v0, v5

    const-string v1, "levelstatus"

    aput-object v1, v0, v6

    const-string v1, "timetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "attemptcount"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "attempttime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->f:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "eventname"

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->g:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "levelid"

    aput-object v1, v0, v4

    const-string v1, "begintime"

    aput-object v1, v0, v5

    const-string v1, "totalcount"

    aput-object v1, v0, v6

    const-string v1, "totaltime"

    aput-object v1, v0, v7

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->h:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "itemName"

    aput-object v1, v0, v4

    const-string v1, "itemType"

    aput-object v1, v0, v5

    const-string v1, "itemCount"

    aput-object v1, v0, v6

    const-string v1, "itemDescription"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "itemPrice"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "currencyCode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "productId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "transactionId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "transactionStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->i:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v5, 0x0

    new-instance v8, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionId(Ljava/lang/String;)V

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventId(J)V

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeStamp(J)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventSessionTimeStamp(J)V

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttributeMap(Ljava/lang/String;)V

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v2, "[InMobi]-[Analytics]-4.4.1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IMAppDatabaseManager->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "levelbegin"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->e:[Ljava/lang/String;

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelId(Ljava/lang/String;)V

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8

    :cond_2
    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "le"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "levelend"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->f:[Ljava/lang/String;

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelId(Ljava/lang/String;)V

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelName(Ljava/lang/String;)V

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventLevelStatus(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTimeTaken(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttemptCount(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventAttemptTime(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ce"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "customevent"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->g:[Ljava/lang/String;

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventCustomName(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactiondetail"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->i:[Ljava/lang/String;

    const-string v3, "_id = ?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemName(Ljava/lang/String;)V

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemType(I)V

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemCount(I)V

    const/4 v0, 0x4

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemDescription(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionItemPrice(D)V

    const/4 v0, 0x6

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionCurrencyCode(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionProductId(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionId(Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setTransactionStatus(I)V

    goto/16 :goto_0
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private a(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;J)V
    .locals 15

    const-string v0, "[InMobi]-[Analytics]-4.4.1"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMAppDatabaseManager->insertEvents-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxdbcount()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_9

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v0, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventTimeStamp()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "begintime"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attemptdata"

    const-string v3, "levelid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "levelid"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "totalcount"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "totaltime"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "attemptdata"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    const-string v0, "levelid"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "levelname"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "levelbegin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    :cond_1
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "eventid"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sid"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ts"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventTimeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "ssts"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventSessionTimeStamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "am"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventAttributeMap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlist"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_1
    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getStartHandle()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->setStartHandle(Z)V

    invoke-static {}, Lcom/inmobi/commons/analytics/net/AnalyticsNetworkManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getTimeinterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "le"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v11, "0"

    const-string v10, "0"

    const-string v9, "0"

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "attemptdata"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->h:[Ljava/lang/String;

    const-string v3, "levelid = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x2

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long v0, v13, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "totalcount"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "totaltime"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "attemptdata"

    const-string v7, "levelid = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v3, "levelid"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "levelstatus"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "levelname"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventLevelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timetaken"

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "attemptcount"

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "attempttime"

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "levelend"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "itemName"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemType()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_5

    const-string v1, "itemType"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemCount()I

    move-result v0

    if-lez v0, :cond_6

    const-string v1, "itemCount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    const-string v0, "itemDescription"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "itemPrice"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionItemPrice()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "currencyCode"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionProductId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transactionId"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getTransactionStatus()I

    move-result v0

    sget-object v1, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_7

    const-string v1, "transactionStatus"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transactiondetail"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ce"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "eventname"

    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->getEventCustomName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "customevent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_0

    :cond_9
    const-string v0, "[InMobi]-[Analytics]-4.4.1"

    const-string v1, "Database full"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    goto/16 :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "[InMobi]-[Analytics]-4.4.1"

    const-string v1, "IMAppDatabaseManager->deleteEvents"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlist"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->d:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    const-string v1, "lb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "levelbegin"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlist"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "le"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "levelend"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v1, "ce"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "customevent"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v1, "pi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "transactiondetail"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->close()V

    return-void
.end method

.method private c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/analytics/db/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "[InMobi]-[Analytics]-4.4.1"

    const-string v1, "IMAppDatabaseManager->getEvents"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[InMobi]-[Analytics]-4.4.1"

    const-string v1, "IMAppDatabaseManager->getEvents()-database is not open"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "eventlist"

    sget-object v2, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->d:[Ljava/lang/String;

    invoke-static {}, Lcom/inmobi/commons/analytics/util/AnalyticsUtils;->getMaxevents()Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a(Landroid/database/Cursor;)Lcom/inmobi/commons/analytics/db/AnalyticsEvent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->setEventTableId(J)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
    .locals 4

    const-class v1, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;-><init>()V

    sput-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "appengage.db"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ltvp.db"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/analytics/util/SessionInfo;->updatedFromOldSDK(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;

    new-instance v2, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c:Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized deleteEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a()V

    invoke-direct {p0, p1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "[InMobi]-[Analytics]-4.4.1"

    const-string v1, "Error deleting from DB."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/analytics/db/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a()V

    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "[InMobi]-[Analytics]-4.4.1"

    const-string v1, "Error reading events from DB."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized insertEvents(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a()V

    const-string v0, "SELECT COUNT(*) FROM eventlist"

    iget-object v1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a(Lcom/inmobi/commons/analytics/db/AnalyticsEvent;J)V

    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsDatabaseManager;->a:Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsSQLiteHelper;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "[InMobi]-[Analytics]-4.4.1"

    const-string v2, "Error in inserting into DB."

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
