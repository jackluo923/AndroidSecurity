.class public Lcom/alipay/mobile/quinox/splash/SplashSqlDbHelper;
.super Ljava/lang/Object;
.source "SplashSqlDbHelper.java"


# static fields
.field public static final WELCOME_DATABASE_NAME:Ljava/lang/String; = "AdSpace.db"

.field public static final WELCOME_TABLE_NAME:Ljava/lang/String; = "spaceinfo_db"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findSpaceObjectInfoBySql(Landroid/content/Context;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v12, -0x1

    .line 17
    .line 18
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 20
    if-nez p1, :cond_0

    move-object v0, v8

    .line 131
    :goto_0
    return-object v0

    .line 25
    :cond_0
    :try_start_0
    const-string/jumbo v0, "AdSpace.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 26
    :try_start_1
    const-string/jumbo v1, "spaceinfo_db"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 26
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 28
    if-eqz v8, :cond_17

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 30
    :cond_1
    new-instance v2, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;

    invoke-direct {v2}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;-><init>()V

    .line 33
    const-string/jumbo v1, "objectId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 32
    if-eq v1, v12, :cond_2

    .line 34
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setObjectId(Ljava/lang/String;)V

    .line 37
    :cond_2
    const-string/jumbo v1, "contentType"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 36
    if-eq v1, v12, :cond_3

    .line 38
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setContentType(Ljava/lang/String;)V

    .line 41
    :cond_3
    const-string/jumbo v1, "hoverTime"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 40
    if-eq v1, v12, :cond_4

    .line 42
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setHoverTime(I)V

    .line 45
    :cond_4
    const-string/jumbo v1, "showTimesEveryday"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 44
    if-eq v1, v12, :cond_5

    .line 46
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setShowTimesEveryday(I)V

    .line 49
    :cond_5
    const-string/jumbo v1, "showTimesAfter"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 48
    if-eq v1, v12, :cond_6

    .line 50
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setShowTimesAfter(I)V

    .line 53
    :cond_6
    const-string/jumbo v1, "widgetId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 52
    if-eq v1, v12, :cond_7

    .line 54
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setWidgetId(Ljava/lang/String;)V

    .line 57
    :cond_7
    const-string/jumbo v1, "resVersion"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 56
    if-eq v1, v12, :cond_8

    .line 58
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setResVersion(Ljava/lang/String;)V

    .line 61
    :cond_8
    const-string/jumbo v1, "preload"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 60
    if-eq v1, v12, :cond_9

    .line 62
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1a

    move v1, v10

    :goto_1
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setPreload(Z)V

    .line 65
    :cond_9
    const-string/jumbo v1, "content"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 64
    if-eq v1, v12, :cond_a

    .line 66
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setContent(Ljava/lang/String;)V

    .line 69
    :cond_a
    const-string/jumbo v1, "hrefUrl"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 68
    if-eq v1, v12, :cond_b

    .line 70
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setHrefUrl(Ljava/lang/String;)V

    .line 73
    :cond_b
    const-string/jumbo v1, "actionUrl"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 72
    if-eq v1, v12, :cond_c

    .line 74
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setActionUrl(Ljava/lang/String;)V

    .line 77
    :cond_c
    const-string/jumbo v1, "gmtStart"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 76
    if-eq v1, v12, :cond_d

    .line 78
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setGmtStart(J)V

    .line 81
    :cond_d
    const-string/jumbo v1, "gmtEnd"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 80
    if-eq v1, v12, :cond_e

    .line 82
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setGmtEnd(J)V

    .line 85
    :cond_e
    const-string/jumbo v1, "fgColor"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 84
    if-eq v1, v12, :cond_f

    .line 86
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setFgColor(Ljava/lang/String;)V

    .line 89
    :cond_f
    const-string/jumbo v1, "bgColor"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 88
    if-eq v1, v12, :cond_10

    .line 90
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setBgColor(Ljava/lang/String;)V

    .line 93
    :cond_10
    const-string/jumbo v1, "textColor"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 92
    if-eq v1, v12, :cond_11

    .line 94
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setTextColor(Ljava/lang/String;)V

    .line 97
    :cond_11
    const-string/jumbo v1, "widgetColor"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 96
    if-eq v1, v12, :cond_12

    .line 98
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setWidgetColor(Ljava/lang/String;)V

    .line 101
    :cond_12
    const-string/jumbo v1, "priority"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 100
    if-eq v1, v12, :cond_13

    .line 102
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setPriority(I)V

    .line 105
    :cond_13
    const-string/jumbo v1, "realTimeReport"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 104
    if-eq v1, v12, :cond_14

    .line 106
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1b

    move v1, v10

    :goto_2
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setRealTimeReport(Z)V

    .line 109
    :cond_14
    const-string/jumbo v1, "md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 108
    if-eq v1, v12, :cond_15

    .line 110
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setMd5(Ljava/lang/String;)V

    .line 113
    :cond_15
    const-string/jumbo v1, "userId"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 112
    if-eq v1, v12, :cond_16

    .line 114
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/quinox/splash/SpaceObjectInfo;->setUserId(Ljava/lang/String;)V

    .line 117
    :cond_16
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 126
    :cond_17
    if-eqz v8, :cond_18

    .line 127
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_18
    if-eqz v0, :cond_19

    .line 129
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_19
    :goto_3
    move-object v0, v9

    .line 131
    goto/16 :goto_0

    :cond_1a
    move v1, v11

    .line 62
    goto/16 :goto_1

    :cond_1b
    move v1, v11

    .line 106
    goto :goto_2

    .line 122
    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 126
    if-eqz v1, :cond_1c

    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1c
    if-eqz v8, :cond_19

    .line 129
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    .line 125
    :catchall_0
    move-exception v0

    move-object v1, v8

    .line 126
    :goto_5
    if-eqz v1, :cond_1d

    .line 127
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1d
    if-eqz v8, :cond_1e

    .line 129
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 130
    :cond_1e
    throw v0

    .line 125
    :catchall_1
    move-exception v1

    move-object v13, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v13

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v13, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v13

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 122
    :catch_1
    move-exception v1

    move-object v13, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v13

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v13, v1

    move-object v1, v8

    move-object v8, v0

    move-object v0, v13

    goto :goto_4
.end method
