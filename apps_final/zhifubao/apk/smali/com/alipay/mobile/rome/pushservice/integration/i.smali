.class public Lcom/alipay/mobile/rome/pushservice/integration/i;
.super Ljava/lang/Object;
.source "PushNoticeExtParser.java"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/h;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x3

    .line 22
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseNoticeExt enter. noticeExt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v0, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v3, "flag"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    const-string/jumbo v4, "rich"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    const-string/jumbo v5, "merge"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 33
    const-string/jumbo v6, "biz"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    const/4 v0, 0x3

    sget-object v7, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "parseNoticeExt flagCfg="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", richCfg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 36
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mergeCfg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 35
    invoke-static {v0, v7, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_1
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/h;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;-><init>()V

    .line 40
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 41
    invoke-static {v3}, Lcom/alipay/mobile/rome/pushservice/integration/i;->b(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    .line 44
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 45
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 46
    invoke-static {v4}, Lcom/alipay/mobile/rome/pushservice/integration/i;->c(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Lcom/alipay/mobile/rome/pushservice/integration/m;)V

    .line 47
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "parseNoticeExt RichInfo pic="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", txt="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/m;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 48
    invoke-static {v3, v4, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    invoke-static {v5}, Lcom/alipay/mobile/rome/pushservice/integration/i;->d(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Lcom/alipay/mobile/rome/pushservice/integration/l;)V

    .line 57
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "parseNoticeExt MergeInfo txt="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/l;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", uri="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/l;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->f()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 66
    invoke-static {v6}, Lcom/alipay/mobile/rome/pushservice/integration/i;->e(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Lcom/alipay/mobile/rome/pushservice/integration/e;)V

    .line 69
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/m;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/m;->b()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v1

    :goto_0
    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    :goto_1
    and-int/2addr v1, v3

    if-nez v1, :cond_6

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Z)V

    .line 71
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 72
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseNoticeExt isRich="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_6
    :goto_2
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseNoticeExt Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/h;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;-><init>()V

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_1

    :cond_8
    move v3, v2

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/h;
    .locals 5

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 102
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x4

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseFlagCfg flag="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_0
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/h;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;-><init>()V

    .line 107
    and-int/lit8 v2, v1, 0x2

    if-lez v2, :cond_1

    .line 108
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->b()V

    .line 111
    :cond_1
    and-int/lit8 v2, v1, 0x1

    if-lez v2, :cond_2

    .line 113
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 114
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Z)V

    .line 117
    :cond_2
    and-int/lit8 v2, v1, 0x4

    if-lez v2, :cond_3

    .line 118
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->e()V

    .line 122
    :cond_3
    and-int/lit8 v1, v1, 0x8

    if-lez v1, :cond_4

    .line 123
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->g()V

    .line 126
    :cond_4
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 127
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseFlagCfg click="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 128
    const-string/jumbo v4, ", rich="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", merge="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->d()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_5
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parseFlagCfg invalid flagCfg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/h;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;-><init>()V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/m;
    .locals 6

    .prologue
    .line 141
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/m;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/m;-><init>()V

    .line 143
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 144
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseRichCfg richCfg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    const-string/jumbo v2, "rTid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 150
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/m;->a(Ljava/lang/String;)V

    .line 153
    :cond_1
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 155
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v1, "rPic"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 159
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/m;->b(Ljava/lang/String;)V

    .line 162
    :cond_2
    const-string/jumbo v1, "rTxt"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 164
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_3
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/m;->a()V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/l;
    .locals 6

    .prologue
    .line 177
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/l;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/l;-><init>()V

    .line 180
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 181
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseMergeCfg mergeCfg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    const-string/jumbo v2, "mTid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 188
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/l;->a(Ljava/lang/String;)V

    .line 191
    :cond_1
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 193
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v1, "mUri"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 197
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/l;->b(Ljava/lang/String;)V

    .line 200
    :cond_2
    const-string/jumbo v1, "mTitle"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 202
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/l;->d(Ljava/lang/String;)V

    .line 205
    :cond_3
    const-string/jumbo v1, "mTxt"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 207
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/l;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_4
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/l;->a()V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/e;
    .locals 6

    .prologue
    .line 219
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/e;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;-><init>()V

    .line 222
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/i;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseBizCfg bizCfg="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    const-string/jumbo v2, "bBId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 230
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->a(Ljava/lang/String;)V

    .line 233
    :cond_1
    const-string/jumbo v2, "bSBId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 235
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b(Ljava/lang/String;)V

    .line 238
    :cond_2
    const-string/jumbo v2, "bMUT"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 240
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->g(Ljava/lang/String;)V

    .line 243
    :cond_3
    const-string/jumbo v2, "bMUID"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 245
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->h(Ljava/lang/String;)V

    .line 248
    :cond_4
    const-string/jumbo v2, "bMB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 249
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->a(Z)V

    .line 252
    const-string/jumbo v2, "bMSB"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 253
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b(Z)V

    .line 255
    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 257
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "bBUri"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 261
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->f(Ljava/lang/String;)V

    .line 264
    :cond_5
    const-string/jumbo v1, "bBTitle"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 266
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c(Ljava/lang/String;)V

    .line 269
    :cond_6
    const-string/jumbo v1, "bBTicker"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 271
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->e(Ljava/lang/String;)V

    .line 274
    :cond_7
    const-string/jumbo v1, "bBTxt"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 276
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->d(Ljava/lang/String;)V

    .line 279
    :cond_8
    const-string/jumbo v1, "bSBTxt"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 281
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_9
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->a()V

    goto :goto_0
.end method
