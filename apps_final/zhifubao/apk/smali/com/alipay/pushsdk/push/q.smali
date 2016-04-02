.class public Lcom/alipay/pushsdk/push/q;
.super Ljava/lang/Object;
.source "PushServerInfo.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/alipay/pushsdk/push/q;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    .line 14
    const-string/jumbo v0, ","

    sput-object v0, Lcom/alipay/pushsdk/push/q;->b:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    .line 20
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 127
    const-string/jumbo v0, ""

    .line 129
    iget-object v1, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v1

    .line 130
    const-string/jumbo v2, "CONNECT_SERVER_LIST"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 134
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    sget-object v3, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getServerByIndex serverLen="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", serverList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_1

    .line 139
    sget-object v0, Lcom/alipay/pushsdk/push/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    array-length v1, v0

    if-ge p1, v1, :cond_3

    .line 141
    aget-object v0, v0, p1

    .line 153
    :cond_1
    :goto_0
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    sget-object v1, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getServerByIndex index="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", server="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_2
    return-object v0

    .line 143
    :cond_3
    const-string/jumbo v0, "mcometgw.alipay.com:443"

    goto :goto_0

    .line 148
    :cond_4
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    sget-object v1, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    const-string/jumbo v2, "getServerByIndex serverList is null."

    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    const-string/jumbo v1, "mcometgw.alipay.com:443"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 118
    :cond_0
    return v0
.end method

.method private f(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v5, 0x4

    .line 160
    .line 161
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 188
    :cond_1
    :goto_0
    return v0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 166
    const-string/jumbo v2, "CONNECT_SERVER_LIST"

    invoke-virtual {v0, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    sget-object v2, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getIndexByServer serverList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 171
    sget-object v2, Lcom/alipay/pushsdk/push/q;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    sget-object v0, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getIndexByServer serverList.len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_4
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-lt v0, v3, :cond_7

    :cond_5
    move v0, v1

    .line 184
    :cond_6
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    sget-object v1, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getIndexByServer server="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 186
    const-string/jumbo v3, ", index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v5, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_7
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x2

    .line 192
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/q;->b()Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/alipay/pushsdk/push/q;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    :cond_0
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    sget-object v0, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    const-string/jumbo v1, "toNextServer return directly."

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/q;->f(Ljava/lang/String;)I

    move-result v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/q;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    sget-object v1, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "toNextServer nextServer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 206
    :cond_4
    const-string/jumbo v0, "mcometgw.alipay.com:443"

    .line 209
    :cond_5
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/q;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    .line 23
    .line 25
    iget-object v0, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v1

    .line 26
    const-string/jumbo v0, "CONNECT_SERVER_INFO"

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string/jumbo v2, "CONNECT_SERVER_CNT"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    sget-object v3, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "incFailedCnt usedServer="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", curServer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 30
    const-string/jumbo v5, ", serverCnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {v6, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 34
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    const-string/jumbo v1, "incFailedCnt diff server!"

    invoke-static {v7, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 45
    :goto_1
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    sget-object v2, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "incFailedCnt count="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_3
    const-string/jumbo v2, "CONNECT_SERVER_CNT"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 43
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    .line 215
    iget-object v0, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v1

    .line 218
    const-string/jumbo v0, "CONNECT_SERVER_INFO"

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    sget-object v2, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getServerInfo curServer="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 223
    :cond_1
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    sget-object v0, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    const-string/jumbo v2, "getServerInfo index=0"

    invoke-static {v6, v0, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/q;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    sget-object v2, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getServerInfo by index target="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_3
    const-string/jumbo v2, "CONNECT_SERVER_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/q;->b(Ljava/lang/String;)V

    .line 235
    :cond_4
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/q;->d(Ljava/lang/String;)I

    move-result v2

    .line 239
    const/4 v3, 0x3

    if-lt v2, v3, :cond_6

    .line 240
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 241
    sget-object v3, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getServerInfo count("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") beyond MAX_SERVER_TRY_CONN!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    invoke-static {v7, v3, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_5
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/q;->f(Ljava/lang/String;)I

    move-result v0

    .line 246
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 251
    const-string/jumbo v2, "CONNECT_SERVER_LIST"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 253
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    .line 254
    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/q;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    const-string/jumbo v2, "CONNECT_SERVER_INFO"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/q;->b(Ljava/lang/String;)V

    .line 266
    :cond_6
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 267
    sget-object v1, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getServerInfo target="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_7
    return-object v0

    .line 257
    :cond_8
    const-string/jumbo v0, "mcometgw.alipay.com:443"

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 55
    iget-object v0, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 56
    const-string/jumbo v1, "CONNECT_SERVER_INFO"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    sget-object v2, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "resetFailedCnt curServer="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    const-string/jumbo v3, ", server="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {v5, v2, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    const-string/jumbo v1, "CONNECT_SERVER_INFO"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    :cond_1
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    sget-object v1, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    const-string/jumbo v2, "resetFailedCnt count will be reset"

    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    const-string/jumbo v1, "CONNECT_SERVER_CNT"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 69
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "CONNECT_SERVER_LIST"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 77
    iget-object v0, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v0

    const-string/jumbo v1, "CONNECT_SERVER_INFO"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v1, "CONNECT_SERVER_CNT"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 89
    .line 91
    iget-object v1, p0, Lcom/alipay/pushsdk/push/q;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/pushsdk/util/e;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/util/e;

    move-result-object v1

    .line 92
    const-string/jumbo v2, "CONNECT_SERVER_INFO"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    sget-object v3, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getFailedCnt curServer="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 95
    const-string/jumbo v5, ", server="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v6, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    const-string/jumbo v2, "CONNECT_SERVER_CNT"

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/util/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 107
    :cond_1
    :goto_0
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    sget-object v1, Lcom/alipay/pushsdk/push/q;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getFailedCnt count="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    return v0

    .line 102
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alipay/pushsdk/push/q;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
