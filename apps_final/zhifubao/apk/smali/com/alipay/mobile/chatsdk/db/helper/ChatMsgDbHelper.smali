.class public Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ChatMsgDbHelper.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "chat_message.db"

.field private static final DB_VERSION:I = 0x1

.field private static final DB_VERSION_2:I = 0x2

.field private static final DB_VERSION_3:I = 0x3

.field private static final LOGTAG:Ljava/lang/String;

.field private static volatile instence:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chatsdk_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    const-class v1, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->LOGTAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 79
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;
    .locals 5

    .prologue
    .line 70
    const-class v1, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->instence:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    const-string/jumbo v2, "chat_message.db"

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->instence:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    .line 73
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->instence:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate:[ ChatMsgTable create ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->excuteCreateTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 93
    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->excuteCreateNewsIdTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 97
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    .prologue
    .line 155
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDowngrade: [ should not happen ] [ oldVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 157
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ] [ db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    const-string/jumbo v1, "com.alipay.mobile.chatsdk##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v1, "onDowngrade:[should not happen]##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[oldVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] [newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] [db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/util/MonitorChatSdk;->monitorExp(Ljava/lang/Exception;)V

    .line 170
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    .prologue
    .line 104
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUpgrade:  [ oldVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string/jumbo v2, " ] [ newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 109
    const-string/jumbo v0, "ALTER TABLE chat_message ADD COLUMN isSc VARCHAR DEFAULT \'\' "

    .line 112
    const-string/jumbo v1, "ALTER TABLE chat_message ADD COLUMN ext VARCHAR DEFAULT \'\' "

    .line 115
    const-string/jumbo v2, "ALTER TABLE chat_message ADD COLUMN bMsgId VARCHAR DEFAULT \'\' "

    .line 118
    const-string/jumbo v3, "ALTER TABLE chat_message ADD COLUMN reserv1 VARCHAR DEFAULT \'\' "

    .line 121
    const-string/jumbo v4, "ALTER TABLE chat_message ADD COLUMN reserv2 VARCHAR DEFAULT \'\' "

    .line 124
    const-string/jumbo v5, "ALTER TABLE chat_message ADD COLUMN mBox VARCHAR DEFAULT \'ppchat\' "

    .line 126
    const-string/jumbo v6, "ALTER TABLE chat_message ADD COLUMN shopId VARCHAR DEFAULT \'\' "

    .line 128
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 137
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 138
    const-string/jumbo v0, "ALTER TABLE chat_message ADD COLUMN mBox VARCHAR DEFAULT \'ppchat\' "

    .line 140
    const-string/jumbo v1, "ALTER TABLE chat_message ADD COLUMN shopId VARCHAR DEFAULT \'\' "

    .line 142
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 146
    :cond_1
    return-void
.end method
