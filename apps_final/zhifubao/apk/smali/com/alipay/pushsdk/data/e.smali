.class public Lcom/alipay/pushsdk/data/e;
.super Lcom/alipay/pushsdk/data/b;
.source "PubMsgRecord.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/alipay/pushsdk/data/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "pub_msg_list"

    sput-object v0, Lcom/alipay/pushsdk/data/e;->b:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/data/b;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/alipay/pushsdk/data/e;->c()[Ljava/lang/String;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_4

    array-length v3, v0

    if-lez v3, :cond_4

    .line 94
    array-length v3, v0

    const/16 v4, 0xa

    if-lt v3, v4, :cond_1

    .line 96
    aput-object p1, v0, v1

    .line 107
    :goto_0
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    sget-object v1, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updatePubMsgList() pubMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    return-object v0

    .line 100
    :cond_1
    if-nez v0, :cond_6

    new-array v0, v1, [Ljava/lang/String;

    move-object v4, v0

    :goto_1
    if-nez p1, :cond_5

    move v0, v1

    :goto_2
    array-length v5, v4

    add-int v3, v5, v0

    new-array v3, v3, [Ljava/lang/String;

    :goto_3
    if-lt v1, v5, :cond_3

    if-ne v0, v2, :cond_2

    aput-object p1, v3, v5

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    aget-object v6, v4, v1

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 104
    :cond_4
    new-array v0, v2, [Ljava/lang/String;

    .line 105
    aput-object p1, v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move-object v4, v0

    goto :goto_1
.end method

.method private c()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 32
    const/4 v0, 0x0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/pushsdk/data/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_3

    .line 40
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 42
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 43
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 45
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 46
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x4

    sget-object v4, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getMsgList() listMsgId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 51
    invoke-static {v2}, Lcom/alipay/pushsdk/util/i;->a(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :try_start_1
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 54
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :cond_2
    :goto_0
    return-object v0

    .line 55
    :catch_0
    move-exception v1

    .line 57
    :goto_1
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 58
    sget-object v2, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_3
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    sget-object v1, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "getMsgList() pubMsgName isn\'t find!"

    invoke-static {v8, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    const-string/jumbo v0, ""

    .line 171
    invoke-direct {p0}, Lcom/alipay/pushsdk/data/e;->c()[Ljava/lang/String;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 173
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    .line 175
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public final a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 73
    const/4 v0, 0x0

    .line 75
    invoke-virtual {p1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v1

    .line 76
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    sget-object v2, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isContainMsg() newPubMsgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/MsgInfo;->getPubMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/alipay/pushsdk/data/e;->c()[Ljava/lang/String;

    move-result-object v2

    .line 82
    if-eqz v2, :cond_1

    .line 83
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/MsgInfo;->getPubMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/pushsdk/util/i;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 86
    :cond_1
    return v0
.end method

.method public final b(Lcom/alipay/pushsdk/data/NotifierInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 116
    invoke-virtual {p1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/MsgInfo;->getPubMsgId()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "savePubMsgRecord() pubMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 125
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/data/e;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/pushsdk/util/i;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    sget-object v1, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "savePubMsgRecord() listMsgId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/pushsdk/data/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/pushsdk/data/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 138
    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 140
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_3
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 143
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    sget-object v1, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    sget-object v0, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    .line 148
    const-string/jumbo v1, "savePubMsgRecord() encounter exception!"

    .line 147
    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_5
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    sget-object v0, Lcom/alipay/pushsdk/data/e;->a:Ljava/lang/String;

    const-string/jumbo v1, "savePubMsgRecord() error!"

    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
