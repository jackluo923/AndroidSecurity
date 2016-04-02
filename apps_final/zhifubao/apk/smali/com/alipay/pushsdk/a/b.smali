.class public Lcom/alipay/pushsdk/a/b;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/pushsdk/util/b;

.field private d:Lcom/alipay/pushsdk/push/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alipay/pushsdk/a/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/a/b;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/pushsdk/a/b;->b:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/alipay/pushsdk/util/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/a/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    .line 34
    new-instance v0, Lcom/alipay/pushsdk/push/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/a/b;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/b;->d:Lcom/alipay/pushsdk/push/i;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/a/b;)Lcom/alipay/pushsdk/util/b;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/a/b;Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x4

    .line 152
    new-instance v3, Lcom/alipay/pushsdk/util/b;

    iget-object v0, p0, Lcom/alipay/pushsdk/a/b;->b:Landroid/content/Context;

    invoke-direct {v3, v0}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "successCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :cond_0
    const-string/jumbo v2, "successCount"

    int-to-long v5, v0

    invoke-virtual {v3, v2, v5, v6}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;J)V

    const-string/jumbo v2, "intervalTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    const/16 v2, 0xf0

    :cond_1
    const-string/jumbo v5, "intervalTime"

    int-to-long v6, v2

    invoke-virtual {v3, v5, v6, v7}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;J)V

    const-string/jumbo v3, "traceLog"

    const-string/jumbo v5, "false"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v3, "true"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/alipay/pushsdk/push/connection/m;->c(Z)V

    new-instance v3, Lcom/alipay/pushsdk/push/r;

    iget-object v6, p0, Lcom/alipay/pushsdk/a/b;->b:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5}, Lcom/alipay/pushsdk/push/r;->b(Ljava/lang/String;)V

    const-string/jumbo v3, "pushCfgId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "pushCfg"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    invoke-virtual {v7, v6, v3}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v7, "publicMsg"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    invoke-virtual {v8, v7, v1}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;Z)V

    :cond_3
    const-string/jumbo v1, "personalMsg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    invoke-virtual {v8, v1, v4}, Lcom/alipay/pushsdk/util/b;->a(Ljava/lang/String;Z)V

    :cond_4
    const-string/jumbo v4, "weiboSwitch"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    invoke-virtual {v8, v4}, Lcom/alipay/pushsdk/util/b;->b(Ljava/lang/String;)V

    const-string/jumbo v4, "ippDate"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "ippTime"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    invoke-virtual {v9, v4, v8}, Lcom/alipay/pushsdk/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/alipay/pushsdk/a/b;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "handleCfgData() successCount="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", intervalTime="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", pushTraceLog="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/alipay/pushsdk/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleCfgData() pushCfgId="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", pushCfgData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v0, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/alipay/pushsdk/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "handleCfgData() pubMsg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", personalMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    move v3, v4

    goto/16 :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/pushsdk/a/b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x3

    .line 39
    iget-object v0, p0, Lcom/alipay/pushsdk/a/b;->d:Lcom/alipay/pushsdk/push/i;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/i;->a()Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/alipay/pushsdk/a/b;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/pushsdk/util/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    sget-object v2, Lcom/alipay/pushsdk/a/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request() getConfigURL="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/util/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    .line 49
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    new-instance v0, Lcom/alipay/pushsdk/data/e;

    iget-object v3, p0, Lcom/alipay/pushsdk/a/b;->b:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/alipay/pushsdk/data/e;-><init>(Landroid/content/Context;)V

    .line 52
    const-string/jumbo v3, "lastPubMsgId"

    invoke-virtual {v0}, Lcom/alipay/pushsdk/data/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v0, "pushCfgId"

    .line 54
    iget-object v3, p0, Lcom/alipay/pushsdk/a/b;->c:Lcom/alipay/pushsdk/util/b;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/util/b;->a()Lcom/alipay/pushsdk/data/a;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/pushsdk/data/a;->a:Ljava/lang/String;

    .line 53
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    const/4 v0, 0x3

    sget-object v3, Lcom/alipay/pushsdk/a/b;->a:Ljava/lang/String;

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getReqData() jsonRequest="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    new-instance v0, Lcom/alipay/pushsdk/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/a/c;-><init>(Lcom/alipay/pushsdk/a/b;)V

    .line 63
    new-instance v3, Lcom/alipay/pushsdk/a/d;

    iget-object v4, p0, Lcom/alipay/pushsdk/a/b;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/alipay/pushsdk/a/d;-><init>(Landroid/content/Context;Lcom/alipay/pushsdk/a/f;)V

    .line 64
    invoke-virtual {v3, v1, v2}, Lcom/alipay/pushsdk/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_2
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    sget-object v1, Lcom/alipay/pushsdk/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
