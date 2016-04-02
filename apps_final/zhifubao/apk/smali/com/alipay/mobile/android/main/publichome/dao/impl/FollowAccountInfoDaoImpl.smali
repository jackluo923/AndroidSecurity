.class public Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;
.super Ljava/lang/Object;
.source "FollowAccountInfoDaoImpl.java"

# interfaces
.implements Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "public_follow_db"

.field private static c:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, "SELECT  FollowAccountBaseInfo.userId, FollowAccountBaseInfo.followObjectId, FollowAccountBaseInfo.name, FollowAccountBaseInfo.avatar, FollowAccountBaseInfo.disturb, FollowAccountBaseInfo.gmtFollowTime, FollowAccountBaseInfo.gotoAppUri, FollowAccountBaseInfo.msgNoteType, FollowAccountBaseInfo.followType, FollowAccountBaseInfo.topType, FollowAccountBaseInfo.vip, FollowAccountShowInfo.lastOperateTime, FollowAccountShowInfo.latestMsg, FollowAccountShowInfo.latestMsgTime, FollowAccountShowInfo.latestMsgThridAccount, ( case when (FollowAccountShowInfo.unReadMsgCount > 0 ) then FollowAccountShowInfo.unReadMsgCount else FollowAccountShowInfo.markUnReadMsgCount  end ) as unReadMsgCount, FollowAccountShowInfo.top, FollowAccountShowInfo.topOperateTime, FollowAccountBaseInfo.pluginType, FollowAccountBaseInfo.isFollow  FROM FollowAccountShowInfo,  FollowAccountBaseInfo "

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .prologue
    const-wide/16 v1, 0x0

    const/4 v6, 0x0

    .line 674
    const-string/jumbo v0, "SELECT count(*)  from FollowAccountBaseInfo where userId=? and isFollow=? "

    .line 675
    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " and "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 679
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    aput-object p1, v5, v6

    const/4 v3, 0x1

    const-string/jumbo v6, "1"

    aput-object v6, v5, v3

    .line 680
    const/4 v3, 0x0

    .line 683
    :try_start_0
    invoke-virtual {v4, v0, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 684
    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_4

    .line 692
    :cond_1
    if-eqz v3, :cond_2

    .line 693
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide v0, v1

    .line 696
    :cond_3
    :goto_0
    return-wide v0

    .line 687
    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 688
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6

    .line 689
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    int-to-long v0, v0

    .line 692
    if-eqz v3, :cond_3

    .line 693
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    move-object v1, v3

    .line 692
    :goto_1
    if-eqz v1, :cond_5

    .line 693
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 695
    :cond_5
    throw v0

    .line 692
    :cond_6
    if-eqz v3, :cond_7

    .line 693
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_7
    move-wide v0, v1

    .line 696
    goto :goto_0

    .line 691
    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_1
.end method

.method private static a(Landroid/database/Cursor;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 312
    new-instance v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    invoke-direct {v3}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;-><init>()V

    .line 313
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->userId:Ljava/lang/String;

    .line 314
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    .line 315
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->name:Ljava/lang/String;

    .line 316
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->avatar:Ljava/lang/String;

    .line 317
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->disturb:Z

    .line 318
    const/4 v0, 0x5

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gmtFollowTime:J

    .line 319
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    .line 320
    const/4 v0, 0x7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->msgNoteType:Ljava/lang/String;

    .line 321
    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followType:Ljava/lang/String;

    .line 322
    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->topType:Ljava/lang/String;

    .line 323
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->vip:Ljava/lang/String;

    .line 324
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->lastOperateTime:J

    .line 325
    const/16 v0, 0xc

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    .line 326
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgTime:J

    .line 327
    const/16 v0, 0xe

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    .line 328
    const/16 v0, 0xf

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->unReadMsgCount:I

    .line 329
    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_1
    iput-boolean v1, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->top:Z

    .line 330
    const/16 v0, 0x11

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->topOperateTime:J

    .line 331
    const/16 v0, 0x12

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->pluginType:Ljava/lang/String;

    .line 332
    const/16 v0, 0x13

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->isFollow:Ljava/lang/String;

    .line 334
    :try_start_0
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsg:Ljava/lang/String;

    .line 337
    :cond_0
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->latestMsgThridAccount:Ljava/lang/String;

    .line 340
    :cond_1
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->gotoAppUri:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_2
    :goto_2
    return-object v3

    :cond_3
    move v0, v2

    .line 317
    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 329
    goto :goto_1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "public_follow_db"

    const-string/jumbo v4, "decrypt exception "

    invoke-interface {v1, v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public calcelTop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 557
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 559
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 560
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 561
    const-string/jumbo v1, "top"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 562
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 563
    return-void
.end method

.method public calculateUnreadMsgCount(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->calculateUnreadMsgCount(Ljava/lang/String;ILjava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    move-result-object v0

    return-object v0
.end method

.method public calculateUnreadMsgCount(Ljava/lang/String;ILjava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 613
    const-string/jumbo v0, "SELECT SUM(case when (FollowAccountBaseInfo.msgNoteType = \'number\' or FollowAccountBaseInfo.msgNoteType = \'wgt_number\') then  ( case when (FollowAccountShowInfo.unReadMsgCount > 0 ) then FollowAccountShowInfo.unReadMsgCount else FollowAccountShowInfo.markUnReadMsgCount  end )  else 0  end) as num_unread_count ,SUM(case when (FollowAccountBaseInfo.msgNoteType = \'dot\' or FollowAccountBaseInfo.msgNoteType = \'wgt_dot\') then ( case when (FollowAccountShowInfo.unReadMsgCount > 0 ) then FollowAccountShowInfo.unReadMsgCount else FollowAccountShowInfo.markUnReadMsgCount  end )  else 0  end ) as dot_unread_count FROM   FollowAccountShowInfo,FollowAccountBaseInfo "

    .line 617
    if-ne p2, v3, :cond_3

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountBaseInfo.id= FollowAccountShowInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'1\'  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    :goto_0
    if-eqz p3, :cond_0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " and  (FollowAccountBaseInfo.pluginType IS NULL   OR FollowAccountBaseInfo.pluginType <> \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 630
    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    .line 631
    const/4 v1, 0x0

    .line 633
    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 634
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 635
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "public_follow_db"

    const-string/jumbo v3, "sum of unread count is 0"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    invoke-direct {v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    if-eqz v1, :cond_2

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_2
    :goto_1
    return-object v0

    .line 619
    :cond_3
    if-nez p2, :cond_4

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountBaseInfo.id= FollowAccountShowInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'0\'  "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountBaseInfo.id= FollowAccountShowInfo.id and FollowAccountShowInfo.userId=?   "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_5
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 639
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 640
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    invoke-direct {v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;-><init>()V

    .line 641
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->numberCount:I

    .line 642
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;->dotCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    if-eqz v1, :cond_2

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 645
    :catchall_0
    move-exception v0

    .line 646
    if-eqz v1, :cond_6

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 649
    :cond_6
    throw v0

    .line 646
    :cond_7
    if-eqz v1, :cond_8

    .line 647
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 650
    :cond_8
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;

    invoke-direct {v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/UnreadCount;-><init>()V

    goto :goto_1
.end method

.method public deleteFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 518
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 520
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 521
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 522
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    return v0
.end method

.method public deleteFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 656
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 659
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 660
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    return v0
.end method

.method public getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-nez v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    return-object v0
.end method

.method public getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 354
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 358
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 361
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 362
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 365
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    .line 366
    :cond_2
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 367
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFollowAccountBaseInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "isFollow"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "followType"

    const-string/jumbo v3, "PUBLIC"

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 158
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->followAccountInfoDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 376
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-object v0

    .line 379
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 380
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 383
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 384
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 386
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    .line 388
    :cond_2
    if-eqz v0, :cond_0

    .line 390
    :try_start_0
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 391
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 393
    :cond_3
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    .line 397
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "public_follow_db"

    const-string/jumbo v4, "decrypt exception "

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFollowAccountShowModel(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v2, "WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.followObjectId=?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 198
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 203
    :try_start_0
    invoke-virtual {v2, v1, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 204
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-gtz v2, :cond_2

    .line 213
    :cond_0
    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 217
    :cond_1
    :goto_0
    return-object v0

    .line 207
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 208
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_4

    .line 209
    invoke-static {v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 213
    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 213
    :goto_1
    if-eqz v1, :cond_3

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 216
    :cond_3
    throw v0

    .line 213
    :cond_4
    if-eqz v1, :cond_1

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 212
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getFollowAccountShowModelCount(Ljava/lang/String;I)J
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "public_follow_db"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "start query getFollowAccountShowModelCount  by userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-ne p2, v5, :cond_3

    .line 278
    const-string/jumbo v0, "SELECT count(*) FROM FollowAccountShowInfo,  FollowAccountBaseInfo  WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'1\' "

    .line 284
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 285
    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    .line 286
    const/4 v1, 0x0

    .line 288
    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 289
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "public_follow_db"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "can find any chat info by userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    if-eqz v2, :cond_1

    .line 298
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_1
    const-wide/16 v0, 0x0

    .line 295
    :cond_2
    :goto_1
    return-wide v0

    .line 279
    :cond_3
    if-nez p2, :cond_4

    .line 280
    const-string/jumbo v0, "SELECT count(*) FROM FollowAccountShowInfo,  FollowAccountBaseInfo WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'0\' "

    goto :goto_0

    .line 282
    :cond_4
    const-string/jumbo v0, "SELECT count(*) FROM FollowAccountShowInfo,  FollowAccountBaseInfo WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and (FollowAccountBaseInfo.pluginType is null  or FollowAccountBaseInfo.pluginType=\'\') "

    goto :goto_0

    .line 293
    :cond_5
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 295
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 297
    if-eqz v2, :cond_2

    .line 298
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    :goto_2
    if-eqz v1, :cond_6

    .line 298
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 300
    :cond_6
    throw v0

    .line 296
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public getFollowAccountShowModels(Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 228
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "public_follow_db"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start query followAccountShowInfos by userId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-ne p2, v5, :cond_3

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'1\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 239
    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 242
    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 243
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 244
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "public_follow_db"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "can find any chat info by userId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    if-eqz v2, :cond_1

    .line 258
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v1

    .line 255
    :cond_2
    :goto_1
    return-object v0

    .line 232
    :cond_3
    if-nez p2, :cond_4

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? and FollowAccountBaseInfo.vip=\'0\' "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and FollowAccountShowInfo.userId=? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_5
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-eqz v1, :cond_6

    .line 255
    if-eqz v2, :cond_2

    .line 258
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 249
    :cond_6
    :try_start_3
    invoke-static {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;

    move-result-object v1

    .line 250
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "public_follow_db"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "find chat  item :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;->followObjectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 256
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 257
    :goto_3
    if-eqz v1, :cond_7

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_7
    throw v0

    .line 256
    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method public getFollowCount(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 670
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFollowCountExcludeSinaNews(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 665
    const-string/jumbo v0, " (pluginType IS  NULL OR pluginType <> \'sina_news\' )"

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLatestFollowAccountShowModel(Ljava/lang/String;I)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 704
    sget-object v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->c:Ljava/lang/String;

    .line 705
    if-ne p2, v6, :cond_3

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and  FollowAccountBaseInfo.userId=? AND FollowAccountBaseInfo.vip=\'1\'   ORDER BY FollowAccountShowInfo.latestMsgTime DESC , FollowAccountBaseInfo.gmtFollowTime  DESC LIMIT 1 OFFSET 0 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "public_follow_db"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "sql:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " showLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getDataHelper()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 718
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 722
    :try_start_0
    invoke-virtual {v2, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 723
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-gtz v0, :cond_5

    .line 732
    :cond_0
    if-eqz v2, :cond_1

    .line 733
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v1

    .line 736
    :cond_2
    :goto_1
    return-object v0

    .line 707
    :cond_3
    if-nez p2, :cond_4

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and  FollowAccountBaseInfo.userId=? AND FollowAccountBaseInfo.vip=\'0\'  ORDER BY FollowAccountShowInfo.latestMsgTime DESC , FollowAccountBaseInfo.gmtFollowTime  DESC LIMIT 1 OFFSET 0 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 710
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " WHERE  FollowAccountShowInfo.id=FollowAccountBaseInfo.id and  FollowAccountBaseInfo.userId=?  ORDER BY FollowAccountShowInfo.latestMsgTime DESC LIMIT 1 OFFSET 0 "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 726
    :cond_5
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 727
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_7

    .line 728
    invoke-static {v2}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 732
    if-eqz v2, :cond_2

    .line 733
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 731
    :catchall_0
    move-exception v0

    .line 732
    :goto_2
    if-eqz v1, :cond_6

    .line 733
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 735
    :cond_6
    throw v0

    .line 732
    :cond_7
    if-eqz v2, :cond_8

    .line 733
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v0, v1

    .line 736
    goto :goto_1

    .line 731
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public initFollowAccountShowInfos(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    :cond_0
    return-void

    .line 455
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    .line 456
    if-eqz v0, :cond_2

    .line 457
    iget-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 461
    iget-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 464
    :try_start_0
    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    iget-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 468
    :cond_3
    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 469
    invoke-static {v4}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 472
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 473
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createIfNotExists(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iput-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 478
    iput-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    goto :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "FollowAccountInfoDao"

    const-string/jumbo v7, "\u5b58\u50a8\u6570\u636e\u5931\u8d25"

    invoke-interface {v5, v6, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    iput-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 478
    iput-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v1

    .line 477
    iput-object v3, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 478
    iput-object v4, v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 479
    throw v1
.end method

.method public saveFollowBaseAccountInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V
    .locals 5

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 141
    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    :cond_0
    :try_start_0
    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "FollowAccountInfoDao"

    const-string/jumbo v4, "\u5b58\u50a8\u6570\u636e\u5931\u8d25"

    invoke-interface {v2, v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;

    throw v0
.end method

.method public setTop(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 540
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 541
    const-string/jumbo v1, "top"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 542
    const-string/jumbo v1, "topOperateTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 543
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 544
    return-void
.end method

.method public updateDisturb(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 598
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 599
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 602
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 603
    const-string/jumbo v1, "disturb"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 604
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 605
    return-void
.end method

.method public updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    .locals 7

    .prologue
    .line 414
    if-nez p2, :cond_0

    .line 441
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 421
    iget-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 423
    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 424
    iput-object v0, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 427
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-static {v2}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 432
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 433
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "createor update "

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "info.userId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " info.followObjectId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->followObjectId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 439
    iput-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    goto :goto_0

    .line 435
    :catch_0
    move-exception v0

    .line 436
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "FollowAccountInfoDao"

    const-string/jumbo v5, "\u5b58\u50a8\u6570\u636e\u5931\u8d25"

    invoke-interface {v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 439
    iput-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    .line 438
    iput-object v1, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsg:Ljava/lang/String;

    .line 439
    iput-object v2, p2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->latestMsgThridAccount:Ljava/lang/String;

    .line 440
    throw v0
.end method

.method public updateThirdPartyLastMsg(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 585
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 588
    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 589
    invoke-static {p5}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 590
    const-string/jumbo v2, "latestMsgTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 591
    const-string/jumbo v2, "latestMsg"

    invoke-virtual {v0, v2, v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 592
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 593
    return-void
.end method

.method public updateUnreadMsgCount(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoDaoImpl;->getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 573
    const-string/jumbo v2, "followObjectId"

    invoke-virtual {v1, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 574
    const-string/jumbo v1, "unReadMsgCount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 575
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 577
    return-void
.end method
