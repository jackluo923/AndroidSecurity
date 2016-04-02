.class public Lcom/ali/user/mobile/info/ClientIDGenerator;
.super Ljava/lang/Object;
.source "ClientIDGenerator.java"


# static fields
.field public static final ANY_ZERO_STR:Ljava/lang/String; = "[0]+"

.field public static final CLIENT_ID_SEP:Ljava/lang/String; = "|"

.field public static final CLIENT_KEY_MAX_LENGTH:I = 0xa

.field public static final HARDWARD_INVALID_LEN:I = 0x5

.field public static final IMEI_LEN:I = 0xf

.field public static final NULL:Ljava/lang/String; = "null"

.field public static final REG_CLIENT_ID_SEP:Ljava/lang/String; = "\\|"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static a:Lcom/ali/user/mobile/info/ClientIDGenerator;


# instance fields
.field private b:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/info/ClientIDGenerator;->b:Ljava/text/SimpleDateFormat;

    .line 51
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/ali/user/mobile/info/ClientIDGenerator;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    const-string/jumbo v2, "[0]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 156
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 176
    invoke-static {p1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->getTimeStamp()Ljava/lang/String;

    move-result-object p1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "123456789012345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x30

    const/4 v1, 0x0

    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-object p0

    .line 191
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v0, v1

    .line 192
    :goto_1
    array-length v2, v3

    if-lt v0, v2, :cond_1

    .line 196
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 193
    :cond_1
    aget-byte v2, v3, v0

    if-lt v2, v5, :cond_2

    const/16 v4, 0x39

    if-le v2, v4, :cond_6

    :cond_2
    const/16 v4, 0x61

    if-lt v2, v4, :cond_3

    const/16 v4, 0x7a

    if-le v2, v4, :cond_6

    :cond_3
    const/16 v4, 0x41

    if-lt v2, v4, :cond_4

    const/16 v4, 0x5a

    if-le v2, v4, :cond_6

    :cond_4
    move v2, v1

    :goto_2
    if-nez v2, :cond_5

    .line 194
    aput-byte v5, v3, v0

    .line 192
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_6
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public static getInstance()Lcom/ali/user/mobile/info/ClientIDGenerator;
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/ali/user/mobile/info/ClientIDGenerator;->a:Lcom/ali/user/mobile/info/ClientIDGenerator;

    if-nez v0, :cond_1

    .line 55
    const-string/jumbo v1, "null"

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/ClientIDGenerator;->a:Lcom/ali/user/mobile/info/ClientIDGenerator;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/ali/user/mobile/info/ClientIDGenerator;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/ClientIDGenerator;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/ClientIDGenerator;->a:Lcom/ali/user/mobile/info/ClientIDGenerator;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/info/ClientIDGenerator;->a:Lcom/ali/user/mobile/info/ClientIDGenerator;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getTimeStamp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ali/user/mobile/info/ClientIDGenerator;->b:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0
.end method

.method public init(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->initClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initClientId(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0xf

    const/4 v5, 0x0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, ".config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 81
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 83
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 85
    const-string/jumbo v1, "ClientIDGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "origin imei:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string/jumbo v0, "ClientIDGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "origin imsi:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v0, "clientId"

    const-string/jumbo v4, ""

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    const-string/jumbo v0, "ClientIDGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "saved clientid:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    :goto_0
    if-eqz v0, :cond_3

    .line 94
    const-string/jumbo v0, "ClientIDGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "client id is valid:"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-static {v1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 97
    invoke-static {v1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 99
    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v1

    .line 105
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    .line 106
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    .line 105
    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v3}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 108
    invoke-static {v3}, Lcom/ali/user/mobile/info/ClientIDGenerator;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v8, :cond_1

    .line 110
    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 112
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v2, v3

    .line 116
    :goto_2
    const-string/jumbo v4, "ClientIDGenerator"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "client id is valid:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, v0, v2}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string/jumbo v2, "ClientIDGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "normarlize, imsi:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ",imei:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",newClientId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v2, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string/jumbo v1, "clientId"

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    :goto_3
    return-object v0

    .line 91
    :cond_2
    const-string/jumbo v0, "[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_0

    .line 123
    :cond_3
    const-string/jumbo v0, "ClientIDGenerator"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "client is is not valid, imei:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",imsi:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v3}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->getTimeStamp()Ljava/lang/String;

    move-result-object v3

    .line 126
    :cond_4
    invoke-static {v1}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 127
    invoke-virtual {p0}, Lcom/ali/user/mobile/info/ClientIDGenerator;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    .line 128
    :cond_5
    invoke-direct {p0, v1, v3}, Lcom/ali/user/mobile/info/ClientIDGenerator;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    const-string/jumbo v2, "ClientIDGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "normalize, imei:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",imsi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",newClientId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v2, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "clientId"

    invoke-interface {v6, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_3

    :cond_6
    move-object v2, v4

    goto/16 :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_1
.end method
