.class public Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;
.super Ljava/lang/Object;
.source "ChatMsgDbManager.java"


# static fields
.field private static volatile mInstance:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private volatile mChatMsgColumnIndexMap:Ljava/util/Map;
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

.field private volatile mChatMsgDbHelper:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

.field private volatile mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->LOGTAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgDbHelper:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    .line 46
    new-instance v0, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgDbHelper:Lcom/alipay/mobile/chatsdk/db/helper/ChatMsgDbHelper;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    .line 47
    return-void
.end method

.method private chatMsgToContentValues(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Landroid/content/ContentValues;
    .locals 5

    .prologue
    .line 930
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 933
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 934
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 935
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 936
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMsgToContentValues : encrypt failed[ mData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 937
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const/4 v0, 0x0

    .line 989
    :goto_0
    return-object v0

    .line 940
    :cond_0
    const-string/jumbo v2, "mData"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :cond_1
    const-string/jumbo v1, "userId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string/jumbo v1, "appId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    if-eqz v1, :cond_2

    .line 946
    const-string/jumbo v1, "mId"

    iget v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    :cond_2
    const-string/jumbo v1, "mk"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    if-nez v1, :cond_4

    .line 950
    const-string/jumbo v1, "mct"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 951
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatMsgToContentValues msg.mct is null, use current time"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    :goto_1
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    if-nez v1, :cond_5

    .line 956
    const-string/jumbo v1, "localTime"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 960
    :goto_2
    const-string/jumbo v1, "toId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string/jumbo v1, "isRead"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isRead:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string/jumbo v1, "reserv2"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->reserv2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string/jumbo v1, "msgStatus"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgStatus:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string/jumbo v1, "msgDirection"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->msgDirection:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string/jumbo v1, "mSum"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    const-string/jumbo v1, "mType"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    const-string/jumbo v1, "mExt"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mExt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string/jumbo v1, "mBox"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mBox:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-wide v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    .line 971
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    .line 973
    :cond_3
    const-string/jumbo v1, "bTime"

    iget-wide v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 974
    const-string/jumbo v1, "isExt"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isExt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string/jumbo v1, "isSc"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->isSc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string/jumbo v1, "bMsgId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string/jumbo v1, "ext"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v1, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mSendType:Ljava/lang/String;

    const-string/jumbo v2, "single"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 981
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "single"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :goto_3
    const-string/jumbo v1, "shopId"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->shopId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 953
    :cond_4
    const-string/jumbo v1, "mct"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mct:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 958
    :cond_5
    const-string/jumbo v1, "localTime"

    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->localTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 983
    :cond_6
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 9

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->initChatMsgColumnIndexMap(Landroid/database/Cursor;)V

    .line 1037
    new-instance v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-direct {v1}, Lcom/alipay/mobile/chatsdk/api/ChatMessage;-><init>()V

    .line 1038
    const-class v0, Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 1039
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1040
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 1065
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1066
    iget-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1068
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cursorToChatMsg : decrypt failed[ mData="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const/4 v0, 0x0

    .line 1073
    :goto_1
    return-object v0

    .line 1040
    :cond_0
    aget-object v5, v3, v2

    .line 1042
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgColumnIndexMap:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1044
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 1045
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1049
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1040
    :cond_1
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1050
    :cond_2
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1051
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1052
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1053
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1054
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/lang/Long;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1055
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1056
    :cond_6
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1057
    new-instance v6, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 1059
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u65e0\u6cd5\u8f6c\u6362ChatMessage#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u7684\u6570\u636e\u7c7b\u578b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1061
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_8
    iput-object v0, v1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->mData:Ljava/lang/String;

    :cond_9
    move-object v0, v1

    .line 1073
    goto/16 :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;
    .locals 2

    .prologue
    .line 50
    const-class v1, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mInstance:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mInstance:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;

    .line 53
    :cond_0
    sget-object v0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mInstance:Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initChatMsgColumnIndexMap(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 916
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgColumnIndexMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgColumnIndexMap:Ljava/util/Map;

    .line 918
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 919
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 924
    :cond_0
    return-void

    .line 919
    :cond_1
    aget-object v3, v1, v0

    .line 920
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 921
    iget-object v5, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgColumnIndexMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private rawQueryTargetSumaries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1001
    .line 1004
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1005
    if-eqz v1, :cond_4

    .line 1007
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1009
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    .line 1010
    if-eqz v1, :cond_0

    .line 1027
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1024
    :cond_0
    :goto_0
    return-object v0

    .line 1013
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1022
    if-eqz v1, :cond_0

    .line 1027
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1014
    :cond_2
    :try_start_3
    new-instance v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    invoke-direct {v2}, Lcom/alipay/mobile/chatsdk/api/TargetSummary;-><init>()V

    .line 1015
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 1016
    iget-object v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v3}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 1017
    iget-object v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v3, v3, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->targetId:Ljava/lang/String;

    .line 1018
    const-string/jumbo v3, "unread_count"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    .line 1019
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "RedPoint"

    invoke-virtual {v2}, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1025
    :catchall_0
    move-exception v0

    .line 1026
    :goto_2
    if-eqz v1, :cond_3

    .line 1027
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1029
    :cond_3
    throw v0

    .line 1026
    :cond_4
    if-eqz v1, :cond_0

    .line 1027
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1025
    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public chatClearAllMsgSendigStatusToFail()I
    .locals 5

    .prologue
    .line 275
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatClearAllMsgSendigStatusToFail:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 278
    const-string/jumbo v1, "msgStatus"

    const-string/jumbo v2, "fail"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string/jumbo v1, " msgStatus = ? "

    .line 280
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "sending"

    aput-object v4, v2, v3

    .line 282
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatClearExtMessageIsExt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 1110
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatClearExtMessageIsExt:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1111
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1110
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1114
    const-string/jumbo v1, "isExt"

    const-string/jumbo v2, "n"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v1, "userId = ? and appId = ? and mId = ?"

    .line 1116
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1118
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatDeleteByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 169
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatDeleteByLocalMsgId:[localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const-string/jumbo v1, "userId = ? and appId = ? and mId = ? "

    .line 173
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatDeleteMsgByBMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 225
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChatMsgDbManager#hatDeleteMsgByBMsgId:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 227
    const-string/jumbo v2, " ][bMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const-string/jumbo v1, "userId = ? and appId = ? and bMsgId=?"

    .line 229
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 228
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 204
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatDeleteMsgByTargetId:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 206
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 207
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const-string/jumbo v1, "userId = ? and appId = ? and toId = ? "

    .line 210
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatDeleteMsgByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 185
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatDeleteMsgByTargetId:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 187
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 188
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "ppchat"

    invoke-static {v0, p4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string/jumbo v0, "userId = ? and appId = ? and toId = ? and (mBox IS NULL or mBox= ?) "

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    .line 198
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 197
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 194
    :cond_0
    const-string/jumbo v0, "userId = ? and appId = ? and toId = ? and mBox= ? "

    goto :goto_0
.end method

.method public chatDeleteMsgByTargetIdAndExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 216
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ChatMsgDbManager#chatDeleteMsgByTargetIdAndExtra:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    const-string/jumbo v1, "userId = ? and appId = ? and toId = ? and mExt = ? "

    .line 221
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    .line 220
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatGetMaxMid()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1179
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatGetMaxMid:"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string/jumbo v1, "select max(mId) as mId from chat_message"

    .line 1182
    new-array v3, v0, [Ljava/lang/String;

    .line 1185
    const/4 v2, 0x0

    .line 1187
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4, v1, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1188
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1194
    :cond_0
    if-eqz v2, :cond_1

    .line 1195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1198
    :cond_1
    :goto_0
    return v0

    .line 1191
    :catch_0
    move-exception v1

    .line 1192
    :try_start_1
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatGetMaxMid : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1194
    if-eqz v2, :cond_1

    .line 1195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1193
    :catchall_0
    move-exception v0

    .line 1194
    if-eqz v2, :cond_2

    .line 1195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1197
    :cond_2
    throw v0
.end method

.method public chatGetMinMid()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1202
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatGetMinMid:"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v1, "select min(mId) as mId from chat_message"

    .line 1205
    new-array v3, v0, [Ljava/lang/String;

    .line 1208
    const/4 v2, 0x0

    .line 1210
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4, v1, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1211
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1217
    :cond_0
    if-eqz v2, :cond_1

    .line 1218
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1221
    :cond_1
    :goto_0
    return v0

    .line 1214
    :catch_0
    move-exception v1

    .line 1215
    :try_start_1
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatGetMinMid : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1217
    if-eqz v2, :cond_1

    .line 1218
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1216
    :catchall_0
    move-exception v0

    .line 1217
    if-eqz v2, :cond_2

    .line 1218
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1220
    :cond_2
    throw v0
.end method

.method public declared-synchronized chatInsertMsg(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)J
    .locals 5

    .prologue
    const-wide/16 v0, -0x1

    .line 234
    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "chatsdk_ChatMsgDbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chatInsertMsg:[ msg="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 242
    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 243
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->newsHasReceived(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 244
    if-nez v2, :cond_0

    .line 247
    iget-object v2, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->bMsgId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->insertNewsReceivedRecord(Ljava/lang/String;Ljava/lang/String;)J

    .line 252
    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatMsgToContentValues(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Landroid/content/ContentValues;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->insert(Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public chatMarkFeedsMsgReaded(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 347
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMarkFeedsMsgReaded:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 352
    const-string/jumbo v1, "isRead"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v1, "reserv2"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v1, "mBox =\'feeds\' and isRead = ? and userId = ? and appId = ? "

    .line 356
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 357
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatMarkMsgReaded(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 316
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMarkMsgReaded:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 318
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ localMsgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 319
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 322
    const-string/jumbo v1, "isRead"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v1, "reserv2"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v1, "isRead = ? and userId = ? and appId = ? and mId = ?"

    .line 326
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 327
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatMarkMsgReadedByTargetId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 332
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMarkMsgReadedByTargetId:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 334
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 335
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 338
    const-string/jumbo v1, "isRead"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v1, "reserv1"

    const-string/jumbo v2, "whole"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string/jumbo v1, "reserv2"

    const-string/jumbo v2, "y"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string/jumbo v1, " (mBox is null OR mBox =\'ppchat\')  and isRead = ? and userId = ? and appId = ?  and toId = ?"

    .line 342
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "n"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 343
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatMarkMsgUnread(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 59
    const/4 v1, 0x0

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string/jumbo v3, "select max(mId) max_id from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v3, " where toId = ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    new-array v3, v8, [Ljava/lang/String;

    aput-object p2, v3, v0

    .line 68
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move v2, v4

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    :goto_1
    if-eqz v3, :cond_0

    .line 84
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_0
    if-eq v2, v4, :cond_1

    .line 91
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 92
    const-string/jumbo v3, "isRead"

    const-string/jumbo v4, "n"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v3, "mId = "

    .line 94
    new-array v4, v8, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0, v1, v3, v4}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 98
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "jiushi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "set "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " message unread !!! mId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return v0

    .line 72
    :cond_2
    :try_start_2
    const-string/jumbo v1, "max_id"

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v5, "jiushi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "max_id : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :goto_2
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 82
    :catchall_0
    move-exception v0

    move-object v1, v3

    .line 83
    :goto_3
    if-eqz v1, :cond_3

    .line 84
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    :cond_3
    throw v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    :try_start_4
    const-string/jumbo v5, "chatsdk_ChatMsgDbManager"

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "chatQuerySendingMsg: cursorToChatMsg[ e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " ][ cursor="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " ]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v5, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 82
    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_4
    move v2, v4

    goto/16 :goto_1
.end method

.method public chatQueryExtMessage(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1123
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chatQueryExtMessage:[ localMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1123
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string/jumbo v1, "select * from chat_message where isExt = ? and userId = ? and appId = ? and mId = ?"

    .line 1127
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1132
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1133
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1139
    :cond_0
    if-eqz v2, :cond_1

    .line 1140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1144
    :cond_1
    :goto_0
    return-object v0

    .line 1136
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1137
    :goto_1
    :try_start_2
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryExtMessage : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1139
    if-eqz v2, :cond_1

    .line 1140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1138
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 1139
    :goto_2
    if-eqz v2, :cond_2

    .line 1140
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1142
    :cond_2
    throw v0

    .line 1138
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1136
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public chatQueryLastMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1156
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatQueryLastMessage:"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    const-string/jumbo v1, "SELECT * FROM chat_message WHERE  userId =? AND appId = ?  AND mType <> \'recall\' ORDER  BY mId DESC LIMIT 1 OFFSET 0"

    .line 1158
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 1163
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1164
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1165
    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1170
    :cond_0
    if-eqz v2, :cond_1

    .line 1171
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1174
    :cond_1
    :goto_0
    return-object v0

    .line 1167
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 1168
    :goto_1
    :try_start_2
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryExtMessage : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1170
    if-eqz v2, :cond_1

    .line 1171
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1169
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 1170
    :goto_2
    if-eqz v2, :cond_2

    .line 1171
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1173
    :cond_2
    throw v0

    .line 1169
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 1167
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public chatQueryLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 502
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatQueryLocalMsgOffset:[ targetExtra="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 505
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 507
    const/4 v1, 0x0

    .line 508
    const/4 v0, 0x0

    .line 510
    if-lez p6, :cond_1

    .line 513
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    const-string/jumbo v4, "select count(*) from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const-string/jumbo v4, " where mBox = \'feeds\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string/jumbo v4, " and userId = ? and appId = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string/jumbo v4, " and mId > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v4, v2, v5}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 521
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    .line 523
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 528
    :cond_1
    if-nez v0, :cond_9

    .line 529
    if-nez p5, :cond_7

    .line 531
    const/4 v0, 0x1

    move v2, v0

    .line 556
    :goto_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 558
    const-string/jumbo v0, "select * from "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string/jumbo v0, " where mBox = \'feeds\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string/jumbo v0, " and userId = ? and appId = ?"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 563
    const-string/jumbo v0, " and mExt = ? "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p2, v0, v5

    const/4 v5, 0x2

    aput-object p3, v0, v5

    .line 568
    :goto_2
    if-eqz p7, :cond_d

    .line 569
    if-nez v2, :cond_2

    if-lez p5, :cond_2

    const-string/jumbo v2, " and mId >= "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    :cond_2
    const-string/jumbo v2, "  order by mId asc"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :goto_3
    const-string/jumbo v2, " limit "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 580
    if-eqz v1, :cond_3

    .line 581
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v0

    if-eqz v0, :cond_f

    .line 596
    :cond_3
    if-eqz v1, :cond_4

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 601
    :cond_4
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQueryLocalMsgOffset: end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    return-object v3

    .line 521
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 522
    :catchall_0
    move-exception v0

    .line 523
    if-eqz v1, :cond_6

    .line 524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_6
    throw v0

    .line 532
    :cond_7
    if-nez p7, :cond_9

    .line 535
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 536
    const-string/jumbo v4, "select count(*) from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string/jumbo v4, " where mBox = \'feeds\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string/jumbo v4, " and userId = ? and appId = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string/jumbo v4, " and mId <= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v4, v2, v5}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 543
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_8

    .line 544
    const/4 v0, 0x0

    .line 545
    const/4 p7, 0x1

    .line 548
    :cond_8
    if-eqz v1, :cond_9

    .line 549
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    move v2, v0

    goto/16 :goto_1

    .line 547
    :catchall_1
    move-exception v0

    .line 548
    if-eqz v1, :cond_a

    .line 549
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_a
    throw v0

    .line 566
    :cond_b
    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    const/4 v5, 0x1

    aput-object p2, v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_2

    .line 595
    :catchall_2
    move-exception v0

    .line 596
    if-eqz v1, :cond_c

    .line 597
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 599
    :cond_c
    throw v0

    .line 572
    :cond_d
    if-nez v2, :cond_e

    if-lez p5, :cond_e

    :try_start_4
    const-string/jumbo v2, " and mId <= "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 573
    :cond_e
    const-string/jumbo v2, "  order by mId desc"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_3

    .line 583
    :cond_f
    :try_start_5
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_10

    .line 585
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 581
    :cond_10
    :goto_5
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_4

    .line 587
    :catch_0
    move-exception v0

    .line 588
    const-string/jumbo v2, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryLocalMsgOffset: cursorToChatMsg[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ][ cursor="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-static {v2, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5
.end method

.method public chatQueryLocalMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatQueryLocalMsg:[ targetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 611
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ pageNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 613
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    mul-int v6, p5, p6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 615
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v0

    .line 618
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "chatQueryLocalMsg: end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    return-object v0
.end method

.method public chatQueryLocalMsgByLastId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 625
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatQueryLocalMsgByLastId:[ targetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 627
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ lastId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 628
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ querySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 629
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    const-string/jumbo v0, "select * from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string/jumbo v0, " where userId = ? and appId = ? and toId = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    if-eqz p4, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    const-string/jumbo v0, " and mExt = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    aput-object p4, v0, v7

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 644
    :goto_0
    const-string/jumbo v1, " and mId < ? "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    const-string/jumbo v1, " order by mId desc "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string/jumbo v1, "limit "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 649
    const/4 v1, 0x0

    .line 651
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 652
    if-eqz v1, :cond_0

    .line 653
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 668
    :cond_0
    if-eqz v1, :cond_1

    .line 669
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 673
    :cond_1
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQueryLocalMsgByLastId: end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-object v2

    .line 642
    :cond_2
    new-array v0, v8, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    goto :goto_0

    .line 654
    :cond_3
    const/4 v0, 0x0

    .line 656
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 662
    :goto_2
    if-eqz v0, :cond_4

    .line 663
    :try_start_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 667
    :catchall_0
    move-exception v0

    .line 668
    if-eqz v1, :cond_5

    .line 669
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 671
    :cond_5
    throw v0

    .line 657
    :catch_0
    move-exception v3

    .line 658
    :try_start_3
    const-string/jumbo v4, "chatsdk_ChatMsgDbManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "chatQueryLocalMsg: cursorToChatMsg[ e="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " ][ cursor="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 660
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " ]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 658
    invoke-static {v4, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public chatQueryLocalMsgOffset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 439
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatQueryLocalMsgOffset:[ targetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ targetExtra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 441
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ pageSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 443
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    const-string/jumbo v0, "select * from "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    const-string/jumbo v0, " where (mBox is null OR mBox <> \'feeds\') "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string/jumbo v0, " and userId = ? and appId = ? and toId = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    if-eqz p4, :cond_2

    const-string/jumbo v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 454
    const-string/jumbo v0, " and mExt = ? "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    aput-object p4, v0, v7

    .line 459
    :goto_0
    const-string/jumbo v1, " order by mId"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    if-eqz p7, :cond_3

    .line 461
    const-string/jumbo v1, " asc"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :goto_1
    const-string/jumbo v1, " limit "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    const-string/jumbo v1, " offset "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    const/4 v1, 0x0

    .line 472
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 473
    if-eqz v1, :cond_0

    .line 474
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    .line 488
    :cond_0
    if-eqz v1, :cond_1

    .line 489
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 493
    :cond_1
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQueryLocalMsgOffset: end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return-object v2

    .line 457
    :cond_2
    new-array v0, v7, [Ljava/lang/String;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    goto :goto_0

    .line 463
    :cond_3
    const-string/jumbo v1, " desc"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 476
    :cond_4
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_5

    .line 478
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    :cond_5
    :goto_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 487
    :catchall_0
    move-exception v0

    .line 488
    if-eqz v1, :cond_6

    .line 489
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_6
    throw v0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    :try_start_3
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryLocalMsgOffset: cursorToChatMsg[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ][ cursor="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 483
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v3, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 1

    .prologue
    .line 728
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    return-object v0
.end method

.method public chatQueryMsgByLocalMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 739
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chatQueryMsgByLocalMsgId:[ localMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    const-string/jumbo v2, "select * from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const-string/jumbo v2, " where userId = ? and appId = ? and mId = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 751
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 752
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 753
    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 754
    :try_start_2
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chatQueryMsgByLocalMsgId: msg[ localMsgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 756
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 754
    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 764
    :goto_0
    if-eqz v2, :cond_0

    .line 765
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 768
    :cond_0
    :goto_1
    return-object v0

    .line 758
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 759
    :goto_2
    :try_start_3
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryMsgByLocalMsgId: exeption[ appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ localMsgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 761
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 762
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 759
    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 764
    if-eqz v2, :cond_0

    .line 765
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 763
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 764
    :goto_3
    if-eqz v2, :cond_1

    .line 765
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 767
    :cond_1
    throw v0

    .line 763
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 758
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public chatQueryMsgByMsgId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 686
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "chatQueryMsgByMsgId:[ msgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    const-string/jumbo v2, "select * from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string/jumbo v2, " where userId = ? and appId = ? and bMsgId = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    .line 698
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 699
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    invoke-direct {p0, v2}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 701
    :try_start_2
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "chatQueryMsgByMsgId: msg[ msgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 702
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ][ msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 703
    invoke-static {v1}, Lcom/alipay/mobile/chatsdk/util/ToStringUtil;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 701
    invoke-static {v0, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 711
    :goto_0
    if-eqz v2, :cond_0

    .line 712
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 715
    :cond_0
    :goto_1
    return-object v0

    .line 705
    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 706
    :goto_2
    :try_start_3
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQueryMsgByMsgId: exeption[ appId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 708
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ][ e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 709
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " ]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 706
    invoke-static {v3, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 711
    if-eqz v2, :cond_0

    .line 712
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 710
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 711
    :goto_3
    if-eqz v2, :cond_1

    .line 712
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 714
    :cond_1
    throw v0

    .line 710
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 705
    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public chatQuerySendingMsg()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/ChatMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 397
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQuerySendingMsg:"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    const-string/jumbo v1, "select * from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v1}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    const-string/jumbo v1, " where msgStatus = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "sending"

    aput-object v4, v3, v1

    .line 406
    const/4 v1, 0x0

    .line 408
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 409
    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    :cond_0
    if-eqz v1, :cond_1

    .line 426
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_1
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "chatQuerySendingMsg: end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-object v2

    .line 413
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v0

    .line 414
    if-eqz v0, :cond_3

    .line 415
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    .line 425
    if-eqz v1, :cond_4

    .line 426
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_4
    throw v0

    .line 417
    :catch_0
    move-exception v0

    .line 418
    :try_start_3
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "chatQuerySendingMsg: cursorToChatMsg[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ][ cursor="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v3, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public chatSetMsgMkByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 301
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatSetMsgMkByLocalMsgId:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 303
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 306
    const-string/jumbo v1, "mk"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string/jumbo v1, "userId = ? and appId = ? and mId = ? "

    .line 309
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 311
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatSetMsgStatusByLocalMsgId(ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 287
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatSetMsgStatusByLocalMsgId:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 292
    const-string/jumbo v1, "msgStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v1, " mId = ? "

    .line 294
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 296
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatSetMsgStatusByLocalMsgId(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 5

    .prologue
    .line 261
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatSetMsgStatusByLocalMsgId:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    const-string/jumbo v1, "msgStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "userId = ? and appId = ? and mId = ? "

    .line 268
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 270
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public chatUpadateExtMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 1080
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatUpadateExtMessage:[ localMsgId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1082
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1083
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1084
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1088
    invoke-static {p6}, Lcom/alipay/mobile/chatsdk/util/security/ChatMsgEncryptor;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "chatMsgToContentValues : encrypt failed[ mData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1090
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const/4 v0, -0x1

    .line 1104
    :goto_0
    return v0

    :cond_0
    move-object p6, v0

    .line 1096
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1097
    const-string/jumbo v1, "msgStatus"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string/jumbo v1, "mType"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const-string/jumbo v1, "mData"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    const-string/jumbo v1, "isExt = ? and userId = ? and appId = ? and mId = ? "

    .line 1102
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "y"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1104
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public chatUpdateOverTimeMsg(Ljava/lang/String;JJ)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 106
    sub-long v4, p2, p4

    .line 107
    const/4 v3, 0x0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string/jumbo v6, "select toId, userId , count(isRead) read_count from "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v6, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v6}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v6, " where isRead = ? and mct < ? group by toId,userId"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "n"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 119
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 122
    :try_start_0
    iget-object v8, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2, v6}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_0

    .line 124
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    :cond_0
    if-eqz v3, :cond_1

    .line 143
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_1
    const-string/jumbo v2, "chatsdk_ChatMsgDbManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "chatUpdateOverTimeMsg:[localMsgId="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "] currentTimeMillis : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    move-wide v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-static {v2, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 152
    const-string/jumbo v3, "isRead"

    const-string/jumbo v6, "y"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string/jumbo v3, "reserv2"

    const-string/jumbo v6, "n"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v3, "isRead = ? and mct < ?"

    .line 158
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "n"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    .line 159
    iget-object v4, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v4, v2, v3, v6}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "jiushi"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "set "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " message read !!!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-object v7

    .line 126
    :cond_2
    :try_start_1
    const-string/jumbo v2, "toId"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    const-string/jumbo v6, "userId"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 128
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    const-string/jumbo v8, "read_count"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 131
    invoke-static {v2, v8}, Lcom/alipay/mobile/chatsdk/util/LogAgent;->FFC_1125_02(Ljava/lang/String;I)V

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string/jumbo v10, "jiushi"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "toId = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v11, ", userId="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 133
    const-string/jumbo v6, "count = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-interface {v9, v10, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 141
    :catchall_0
    move-exception v2

    .line 142
    if-eqz v3, :cond_3

    .line 143
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_3
    throw v2

    .line 134
    :catch_0
    move-exception v2

    .line 135
    :try_start_3
    const-string/jumbo v6, "chatsdk_ChatMsgDbManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "chatQuerySendingMsg: cursorToChatMsg[ e="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " ][ cursor="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " ]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v6, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public feedsMsgCount(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 368
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "feedsMsgCount:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    const-string/jumbo v1, "select count(*) from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    iget-object v1, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v1}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string/jumbo v1, " where mBox =\'feeds\' and userId = ? and appId = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    aput-object p1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    .line 376
    const/4 v1, 0x0

    .line 378
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 379
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    :cond_0
    if-eqz v2, :cond_1

    .line 386
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_1
    const-wide/16 v0, 0x0

    .line 383
    :cond_2
    :goto_0
    return-wide v0

    .line 382
    :cond_3
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 383
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v0

    .line 385
    if-eqz v2, :cond_2

    .line 386
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    .line 385
    :goto_1
    if-eqz v1, :cond_4

    .line 386
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 388
    :cond_4
    throw v0

    .line 384
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public getAllTargetSummary(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v1, "getAllTargetSummary"

    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string/jumbo v0, "SELECT cm2.*,        (SELECT Count(cm3.isRead) unread_count         FROM   chat_message cm3         WHERE  cm3.toId = cm2.toId         AND cm3.appId = cm2.appId         AND cm3.userId = cm2.userId         AND cm3.isRead = \'n\'          AND (cm3.mBox IS NULL OR cm3.mBox <> \'feeds\'))  unread_count  FROM chat_message  AS cm2  WHERE (cm2.mBox IS NULL OR cm2.mBox <> \'feeds\')  AND cm2.appId=?  GROUP BY cm2.userId,cm2.toId ; "

    .line 801
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 802
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->rawQueryTargetSumaries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 803
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "getAllTargetSummary: end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    return-object v0
.end method

.method public getLastFeedsSummary(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 863
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastFeedsSummary:[ userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 865
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 863
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 868
    :cond_0
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    .line 869
    const-string/jumbo v2, "event=[ChatMsgDbManager#getLastFeedsSummary] paramter userId is null or appId is null."

    .line 868
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    :cond_1
    :goto_0
    return-object v0

    .line 873
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 874
    const-string/jumbo v2, " SELECT cm2.*,  (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3   WHERE cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\' AND cm3.mBox=\'feeds\' ) unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  AND cm1.mBox=\'feeds\' AND cm1.mType<>\'recall\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    const-string/jumbo v2, " ) AS summ  WHERE  cm2.mId = summ.mId;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 878
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 882
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 887
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-gtz v2, :cond_4

    .line 903
    :cond_3
    if-eqz v1, :cond_1

    .line 904
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 890
    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 892
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_3

    .line 893
    new-instance v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    invoke-direct {v0}, Lcom/alipay/mobile/chatsdk/api/TargetSummary;-><init>()V

    .line 894
    invoke-direct {p0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->cursorToChatMsg(Landroid/database/Cursor;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 895
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    invoke-static {v2}, Lcom/alipay/mobile/chatsdk/util/SummaryUtil;->completeMsgSummary(Lcom/alipay/mobile/chatsdk/api/ChatMessage;)Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    .line 896
    iget-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->msg:Lcom/alipay/mobile/chatsdk/api/ChatMessage;

    iget-object v2, v2, Lcom/alipay/mobile/chatsdk/api/ChatMessage;->toId:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->targetId:Ljava/lang/String;

    .line 897
    const-string/jumbo v2, "unread_count"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->unReadCount:I

    .line 898
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "RedPoint"

    invoke-virtual {v0}, Lcom/alipay/mobile/chatsdk/api/TargetSummary;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 899
    if-eqz v1, :cond_1

    .line 904
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 902
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 903
    :goto_1
    if-eqz v1, :cond_5

    .line 904
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_5
    throw v0

    .line 902
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getLastSummaryForAllTarget(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/chatsdk/api/TargetSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    const-string/jumbo v0, "chatsdk_ChatMsgDbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getLastSummaryForAllTarget:[ userId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 777
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {v0, v1}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string/jumbo v0, " SELECT cm2.*, (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3  WHERE  cm3.toId = cm2.toId  AND cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\' AND   (cm3.mBox is null OR cm3.mBox <> \'feeds\')) unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  AND  (cm1.mBox is null OR cm1.mBox <> \'feeds\')   GROUP  BY cm1.toId) AS summ  WHERE  cm2.mId = summ.mId;"

    .line 781
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 783
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->rawQueryTargetSumaries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 785
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "getLastSummaryForAllTarget: end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return-object v0
.end method

.method public getLastSummeryForTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/chatsdk/api/TargetSummary;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 819
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLastSummeryForTarget:[ userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 821
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ targetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 822
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][ targetExtra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 823
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 827
    :cond_0
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    .line 828
    const-string/jumbo v2, "event=[ChatMsgDbManager#getLastSummeryForTarget] paramter userId is null or targetId is null."

    .line 827
    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    :goto_0
    return-object v0

    .line 832
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    const-string/jumbo v2, " SELECT cm2.*,  (SELECT Count(cm3.isRead) unread_count  FROM   chat_message cm3  WHERE  cm3.toId = cm2.toId  AND cm3.appId = cm2.appId  AND cm3.userId = cm2.userId  AND cm3.isRead = \'n\' AND  (cm3.mBox is null OR cm3.mBox <> \'feeds\') ) unread_count  FROM   chat_message AS cm2,  (SELECT Max(cm1.mId)  as mId  FROM   chat_message cm1  WHERE  cm1.appId = ?  AND cm1.userId = ?  AND cm1.toId = ?  AND (cm1.mBox is null OR cm1.mBox <> \'feeds\')  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 835
    const-string/jumbo v2, " AND cm1.mExt = \'?\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    :cond_2
    const-string/jumbo v2, " ) AS summ  WHERE  cm2.mId = summ.mId;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 840
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 844
    invoke-interface {v2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 847
    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 850
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-direct {p0, v1, v3}, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->rawQueryTargetSumaries(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 852
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 853
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/chatsdk/api/TargetSummary;

    .line 855
    :cond_4
    const-string/jumbo v1, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v2, "getLastSummeryForTarget: end"

    invoke-static {v1, v2}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertNewsReceivedRecord(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->insertNewsIds(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public newsHasReceived(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1232
    const-string/jumbo v2, "chatsdk_ChatMsgDbManager"

    const-string/jumbo v3, "newsHasReceived:"

    invoke-static {v2, v3}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    const-string/jumbo v3, "select count (*) from news_ids where userId=? and bMsgId=?"

    .line 1235
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    .line 1236
    const/4 v2, 0x0

    .line 1238
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/chatsdk/db/mgr/ChatMsgDbManager;->mChatMsgTable:Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;

    invoke-virtual {v5, v3, v4}, Lcom/alipay/mobile/chatsdk/db/table/ChatMsgTable;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1239
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1240
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 1241
    if-lez v3, :cond_3

    .line 1248
    if-eqz v2, :cond_0

    .line 1249
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1252
    :cond_0
    :goto_0
    return v0

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    :try_start_1
    const-string/jumbo v3, "chatsdk_ChatMsgDbManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "newsHasReceived : Exception[ e="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " ]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/chatsdk/util/LogUtilChat;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1248
    if-eqz v2, :cond_1

    .line 1249
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move v0, v1

    .line 1252
    goto :goto_0

    .line 1247
    :catchall_0
    move-exception v0

    .line 1248
    if-eqz v2, :cond_2

    .line 1249
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1251
    :cond_2
    throw v0

    .line 1248
    :cond_3
    if-eqz v2, :cond_1

    .line 1249
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method
