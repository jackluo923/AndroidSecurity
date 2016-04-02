.class public Lcom/alipay/mobile/rome/pushservice/integration/f;
.super Ljava/lang/Object;
.source "PushNoticeDisplay.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static f:J

.field private static h:Landroid/util/DisplayMetrics;

.field private static i:I

.field private static j:I


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/rome/pushservice/integration/j;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 74
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->f:J

    .line 950
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->i:I

    .line 1089
    const/4 v0, -0x1

    sput v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, 0x3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->e:Ljava/lang/String;

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 78
    new-instance v1, Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-direct {v1}, Lcom/alipay/mobile/rome/pushservice/integration/j;-><init>()V

    const-string/jumbo v0, "push_show_title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "push_show_text"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "push_show_sound"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "push_show_badge"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "push_t_msg_id"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "push_msg_key"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "push_msg_data"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "push_show_ext"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getNoticeInfo msgShowTitle="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgShowText="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgTMsgId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgBadge="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgData="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgNoticeExt="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", msgShowSound="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->c(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->f(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/h;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;-><init>()V

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/i;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/pushservice/integration/i;-><init>()V

    invoke-static {v8}, Lcom/alipay/mobile/rome/pushservice/integration/i;->a(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a(Lcom/alipay/mobile/rome/pushservice/integration/h;)V

    iput-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/rome/pushservice/integration/j;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->e:Ljava/lang/String;

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    .line 84
    return-void
.end method

.method private a()I
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 288
    iget v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    .line 291
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPushChatDefaultIcon app-IconId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".R$drawable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 298
    const-string/jumbo v1, "push_chat_default"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 299
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 301
    iput v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    .line 302
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getPushChatDefaultIcon appIconPushChatDefault="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->g:I

    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getPushChatDefaultIcon: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/rome/pushservice/integration/j;I)I
    .locals 9

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x4

    .line 647
    .line 649
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 651
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getMergeMsgCount mtId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v1, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 656
    new-instance v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;

    invoke-direct {v1}, Lcom/alipay/mobile/rome/pushservice/integration/b/b;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->j:J

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/l;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/l;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/l;->c()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->h:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/b;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/rome/pushservice/integration/a/b;->a(Lcom/alipay/mobile/rome/pushservice/integration/b/b;)J

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "saveMergeMsg done with noticeId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mTemId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v3, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 659
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/b;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/b;

    move-result-object v1

    .line 663
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/b;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 664
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 665
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 666
    const/4 v0, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getMergeMsgCount mergeMsgList.size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v3, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v3, v2

    .line 673
    :goto_0
    if-lt v3, v1, :cond_4

    move v0, v1

    .line 689
    :goto_1
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 690
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getMergeMsgCount mergeCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 691
    const-string/jumbo v3, ", noticeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 690
    invoke-static {v8, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 693
    :cond_3
    return v0

    .line 674
    :cond_4
    const/4 v0, 0x5

    :try_start_1
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    const/4 v5, 0x5

    sget-object v6, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getMergeMsgCount i="

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ", nId="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 676
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/integration/b/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-static {v5, v6, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_5
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/integration/b/b;

    iget-object v0, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/b;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 673
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 685
    const-string/jumbo v3, "getMergeMsgCount queryMsgByMergeId is Exception."

    .line 684
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method private a(Lcom/alipay/mobile/rome/pushservice/integration/j;ILjava/util/List;Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/rome/pushservice/integration/j;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 697
    const/4 v2, 0x0

    .line 699
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b()Ljava/lang/String;

    move-result-object v4

    .line 700
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 701
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    const/4 v1, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getBizMergeMsgCount mBId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mSBId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 706
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    move-result-object v5

    .line 707
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->k()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 709
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0, p4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(ILcom/alipay/mobile/rome/pushservice/integration/j;ZLjava/lang/String;)V

    .line 712
    :try_start_0
    invoke-virtual {v5, v4, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 713
    const/4 v1, 0x0

    .line 715
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 727
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    const/4 v0, 0x1

    .line 764
    :goto_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBizMergeMsgCount bizMergeType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 766
    const-string/jumbo v4, ", noticeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 765
    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 768
    :cond_1
    return v0

    .line 715
    :cond_2
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 716
    invoke-virtual {v5, v4, v0, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 717
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v3, v1

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    .line 717
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    .line 718
    if-eqz v1, :cond_3

    .line 719
    iget-object v9, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Ljava/lang/String;)V

    .line 722
    iget v1, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v1, v3

    move v3, v1

    goto :goto_2

    .line 732
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 733
    const-string/jumbo v3, "getMergeMsgCount queryMsgByBizId is Exception."

    .line 732
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_1

    .line 735
    :cond_5
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/e;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 737
    const/4 v1, 0x1

    invoke-direct {p0, p2, p1, v1, p4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(ILcom/alipay/mobile/rome/pushservice/integration/j;ZLjava/lang/String;)V

    .line 740
    :try_start_2
    invoke-virtual {v5, v4, v0, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 741
    const/4 v0, 0x0

    .line 742
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 750
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Ljava/lang/String;)V

    .line 753
    const/4 v0, 0x2

    goto/16 :goto_1

    .line 742
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    .line 743
    if-eqz v0, :cond_6

    .line 744
    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Ljava/lang/String;)V

    .line 747
    iget v0, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_3

    .line 755
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 756
    const-string/jumbo v3, "getMergeMsgCount queryMsgByBizIdSubBizId is Exception."

    .line 755
    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_1

    .line 760
    :cond_8
    const/4 v0, 0x0

    invoke-direct {p0, p2, p1, v0, p4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(ILcom/alipay/mobile/rome/pushservice/integration/j;ZLjava/lang/String;)V

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;ILcom/alipay/mobile/personalbase/model/SocialPushInfo;)Landroid/app/Notification;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/alipay/mobile/personalbase/model/SocialPushInfo;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 952
    new-instance v7, Landroid/support/v4/app/NotificationCompat$Builder;

    .line 953
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 952
    invoke-direct {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 955
    const/4 v5, 0x0

    .line 962
    const-string/jumbo v1, ""

    .line 965
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 966
    const-string/jumbo v0, "1"

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "2"

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 967
    :cond_0
    const-string/jumbo v0, ""

    .line 968
    const/16 v2, 0x78

    .line 969
    if-eqz p3, :cond_1

    .line 970
    iget-object v1, p3, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->titleName:Ljava/lang/String;

    .line 971
    iget-object v0, p3, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->headUrl:Ljava/lang/String;

    .line 972
    iget v2, p3, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->headSize:I

    .line 974
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 975
    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v1

    .line 979
    :goto_0
    if-nez v0, :cond_c

    .line 980
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 984
    :goto_1
    if-ne p2, v4, :cond_4

    .line 985
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->e()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    .line 986
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 989
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 990
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->f()Ljava/lang/String;

    move-result-object v5

    .line 991
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->d()Ljava/lang/String;

    move-result-object v2

    move v10, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v1

    move v1, v10

    .line 1018
    :goto_3
    if-ne p2, v4, :cond_9

    .line 1019
    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1029
    :goto_4
    sget v6, Lcom/alipay/mobile/rome/pushservice/integration/f;->i:I

    if-nez v6, :cond_b

    .line 1030
    sput v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->i:I

    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1036
    :goto_5
    invoke-virtual {v7, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1037
    invoke-virtual {v0, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1038
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1039
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1040
    const v2, -0xff0100

    const/16 v3, 0x12c

    const/16 v5, 0x3e8

    invoke-virtual {v0, v2, v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 1042
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1043
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 1044
    invoke-virtual {v7, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1047
    :cond_2
    invoke-virtual {v7}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1051
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "android.app.MiuiNotification"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 1052
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "extraNotification"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1053
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1054
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "setMessageCount"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1055
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_6
    return-object v0

    .line 987
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "$"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 986
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 992
    :cond_4
    if-ne p2, v9, :cond_7

    .line 993
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v4, :cond_5

    .line 995
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->j()Ljava/lang/String;

    move-result-object v0

    .line 996
    const-string/jumbo v1, "$0"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 997
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1002
    :goto_7
    iget-object v5, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v5

    .line 1003
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    move v10, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v1

    move v1, v10

    .line 1004
    goto/16 :goto_3

    .line 1000
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    goto :goto_7

    .line 1006
    :cond_6
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v2

    move v10, v0

    move-object v0, v5

    move-object v5, v2

    move-object v2, v1

    move v1, v10

    goto/16 :goto_3

    .line 1009
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v5

    .line 1010
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v2

    .line 1015
    :goto_8
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move v1, v4

    move-object v10, v0

    move-object v0, v5

    move-object v5, v10

    goto/16 :goto_3

    .line 1013
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1020
    :cond_9
    if-ne p2, v9, :cond_a

    .line 1021
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1022
    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 1024
    :cond_a
    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1025
    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_4

    .line 1033
    :cond_b
    sput v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->i:I

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_6

    :cond_c
    move-object v6, v0

    goto/16 :goto_1

    :cond_d
    move-object v2, v1

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 264
    .line 266
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 267
    if-eqz v0, :cond_0

    .line 269
    :try_start_0
    const-string/jumbo v1, "Push_Notice_User_Icon"

    const-string/jumbo v3, "Push_Notice_User_Icon_Default"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 283
    :goto_1
    return-object v0

    .line 271
    :catch_0
    move-exception v1

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v3, "prepareNoticeBizIcon cache error"

    invoke-static {v4, v1, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a()I

    move-result v3

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 280
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 281
    const-string/jumbo v3, "Push_Notice_User_Icon"

    const-string/jumbo v4, "Push_Notice_User_Icon_Default"

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    move-object v0, v1

    .line 283
    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 207
    .line 210
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    .line 211
    if-eqz v0, :cond_0

    .line 213
    :try_start_0
    const-string/jumbo v1, "Push_Notice_User_Icon"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 220
    :goto_0
    if-eqz v2, :cond_1

    .line 255
    :goto_1
    return-object v2

    .line 215
    :catch_0
    move-exception v1

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v2, "prepareNoticeBizIcon cache error"

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v2, v3

    goto :goto_0

    .line 224
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v4, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 225
    new-instance v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageClearCacheQuery;

    invoke-direct {v4, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageClearCacheQuery;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->queryImageFor(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;

    move-result-object v4

    .line 227
    iget-boolean v5, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->success:Z

    if-eqz v5, :cond_4

    .line 228
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->h:Landroid/util/DisplayMetrics;

    if-nez v5, :cond_2

    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v6, "window"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sput-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->h:Landroid/util/DisplayMetrics;

    :cond_2
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->h:Landroid/util/DisplayMetrics;

    .line 230
    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 231
    const/4 v1, 0x1

    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 232
    iget v1, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->width:I

    if-eqz v1, :cond_3

    .line 233
    iget p2, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->width:I

    .line 235
    :cond_3
    int-to-float v1, p2

    float-to-double v5, v1

    const-wide/high16 v7, 0x4064000000000000L    # 160.0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x407e000000000000L    # 480.0

    mul-double/2addr v5, v7

    double-to-int v1, v5

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 236
    iget-object v1, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQueryResult;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 239
    const-string/jumbo v2, "Push_Notice_User_Icon"

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    :goto_2
    move-object v2, v0

    .line 255
    goto/16 :goto_1

    .line 243
    :cond_4
    new-instance v0, Lcom/alipay/mobile/rome/pushservice/integration/g;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/pushservice/integration/g;-><init>(Lcom/alipay/mobile/rome/pushservice/integration/f;)V

    invoke-virtual {v1, p1, v0, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-object v0, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private a(ILcom/alipay/mobile/rome/pushservice/integration/j;ZLjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1520
    new-instance v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    invoke-direct {v2}, Lcom/alipay/mobile/rome/pushservice/integration/b/a;-><init>()V

    .line 1522
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    .line 1523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->h:J

    .line 1525
    invoke-virtual {p2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->b:Ljava/lang/String;

    .line 1526
    invoke-virtual {p2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    .line 1527
    invoke-virtual {p2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    .line 1528
    const/4 v0, 0x1

    iput v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I

    .line 1530
    if-eqz p3, :cond_1

    .line 1533
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    move-result-object v0

    iget-object v1, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1534
    const/4 v0, 0x0

    .line 1535
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1542
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    move-result-object v0

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    iget v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1550
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;

    move-result-object v0

    invoke-virtual {v0, v2, p4}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Lcom/alipay/mobile/rome/pushservice/integration/b/a;Ljava/lang/String;)J

    .line 1551
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1552
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveBizMsg done with noticeId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1553
    const-string/jumbo v3, ", msgId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mBizId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mSubBizId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", bMsgCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1552
    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1555
    :cond_2
    return-void

    .line 1535
    :cond_3
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    .line 1536
    if-eqz v0, :cond_0

    .line 1537
    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Ljava/lang/String;)V

    .line 1540
    iget v0, v0, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1546
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "merge subBizId error[ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x3

    .line 1181
    const-string/jumbo v2, ""

    .line 1182
    const-string/jumbo v0, ""

    .line 1184
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1185
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getSoundProp sound:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v1, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1192
    :cond_0
    const-string/jumbo v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v3, v4

    .line 1194
    :goto_0
    array-length v1, v5

    if-lt v3, v1, :cond_2

    .line 1222
    iput-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    .line 1223
    iput-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->e:Ljava/lang/String;

    .line 1225
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1226
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getSoundProp mSndFile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mSndGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1227
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1226
    invoke-static {v11, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_1
    return-void

    .line 1195
    :cond_2
    aget-object v1, v5, v3

    .line 1196
    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1198
    if-lez v6, :cond_5

    .line 1199
    aget-object v1, v5, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1200
    aget-object v1, v5, v3

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1201
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1202
    sget-object v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getSoundProp i="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", index="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1203
    const-string/jumbo v9, ", key="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ", value="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1202
    invoke-static {v11, v8, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1206
    :cond_3
    const-string/jumbo v6, "file"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v0, v1

    .line 1210
    :cond_4
    const-string/jumbo v6, "group"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1194
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto/16 :goto_0

    .line 1214
    :cond_5
    invoke-static {v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1215
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getSoundProp failed. i="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v1, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v1, v2

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 1265
    const/4 v1, 0x0

    .line 1268
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1269
    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkSoundRes sound:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1273
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1274
    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1276
    if-nez v1, :cond_3

    .line 1278
    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1279
    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v4, "checkSoundRes sound file is not exist."

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 1297
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1305
    :cond_2
    :goto_1
    return v0

    .line 1283
    :cond_3
    const/4 v2, 0x1

    .line 1284
    const/4 v3, 0x4

    :try_start_2
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1285
    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v5, "checkSoundRes sound file is exist."

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto :goto_0

    .line 1290
    :catch_0
    move-exception v2

    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 1291
    const-string/jumbo v4, "Exception! checkSoundRes sound file is not exist."

    .line 1290
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1295
    if-eqz v1, :cond_2

    .line 1297
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1298
    :catch_1
    move-exception v1

    .line 1299
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1294
    :catchall_0
    move-exception v0

    .line 1295
    if-eqz v1, :cond_4

    .line 1297
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1303
    :cond_4
    :goto_2
    throw v0

    .line 1298
    :catch_2
    move-exception v1

    .line 1299
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1298
    :catch_3
    move-exception v1

    .line 1299
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private b(Lcom/alipay/mobile/rome/pushservice/integration/j;I)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 773
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 776
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/mobile/rome/pushservice/integration/PushDistributerService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipay.pushservice.action.DELETE"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 777
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    const-string/jumbo v1, "push_key"

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string/jumbo v1, "push_noticeId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const-string/jumbo v1, "push_type"

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string/jumbo v1, "push_tMsgId"

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const/4 v2, 0x0

    .line 787
    const/high16 v3, 0x40000000    # 2.0f

    .line 786
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 789
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 790
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDeleteIntent 1 noticeId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 791
    const-string/jumbo v3, ", msgId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 790
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_0
    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1558
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 1564
    :goto_0
    if-eqz v1, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 1566
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1565
    check-cast v0, Landroid/app/NotificationManager;

    .line 1567
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1569
    :cond_0
    return-void

    .line 1562
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method

.method private static b()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x4

    .line 329
    const/4 v2, 0x1

    .line 331
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    .line 332
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 333
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 332
    const-class v3, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    .line 334
    const-string/jumbo v3, "push_rich_adapter"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 338
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "richSupport curModel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 340
    const-string/jumbo v5, ", richAdapterList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-static {v7, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    const-string/jumbo v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 345
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "richSupport richAdapterList size="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 346
    invoke-static {v7, v0, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_1
    array-length v4, v3

    move v0, v1

    :goto_0
    if-lt v0, v4, :cond_4

    :cond_2
    move v0, v2

    .line 359
    :goto_1
    invoke-static {v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "richSupport ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_3
    return v0

    .line 350
    :cond_4
    aget-object v5, v3, v0

    .line 352
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    .line 354
    goto :goto_1

    .line 350
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private c()Lcom/alipay/mobile/personalbase/model/SocialPushInfo;
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 1069
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 1071
    if-eqz v0, :cond_2

    .line 1072
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 1075
    :goto_0
    if-eqz v0, :cond_1

    .line 1076
    const-class v2, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 1078
    :goto_1
    if-eqz v0, :cond_0

    .line 1079
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/e;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryPushInfoForSocial(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/personalbase/model/SocialPushInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1086
    :goto_2
    return-object v0

    .line 1081
    :catch_0
    move-exception v0

    .line 1082
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1083
    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getBizSocialPushInfo Exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, v1

    .line 1086
    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private d()I
    .locals 5

    .prologue
    const/4 v3, 0x4

    .line 1091
    sget v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    .line 1093
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    sget-object v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getNoticeIcon app-IconId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 1098
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".R$drawable"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1100
    const-string/jumbo v1, "appicon_push"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1103
    sput v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    .line 1104
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getNoticeIcon appIconPush="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1113
    :cond_1
    :goto_0
    sget v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->j:I

    return v0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getNoticeIcon: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " ]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1232
    .line 1234
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1236
    :try_start_0
    const-string/jumbo v1, ""

    .line 1238
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 1239
    if-lez v2, :cond_0

    .line 1240
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1243
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1244
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->d:Ljava/lang/String;

    .line 1247
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1248
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "android.resource://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1249
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "raw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1250
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1253
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Landroid/net/Uri;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_4

    .line 1261
    :cond_3
    :goto_0
    return-object v0

    .line 1256
    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/pushservice/integration/j;->f()Ljava/lang/String;

    move-result-object v0

    .line 1576
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1583
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1584
    iget-object v2, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1585
    const-string/jumbo v2, "mpaas.badge.action.add"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1586
    const-string/jumbo v2, "badgeCount"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1587
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1588
    return-void

    .line 1580
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 22

    .prologue
    .line 384
    const-class v6, Lcom/alipay/mobile/rome/pushservice/integration/k;

    monitor-enter v6

    .line 385
    const/4 v2, 0x5

    :try_start_0
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMsg enter...noticeInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->f()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 391
    const-string/jumbo v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v5, "showMsg got userId from AccountService, do not print"

    invoke-static {v2, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v3

    :goto_0
    :try_start_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v4, "showMsg userId got Empty, just return."

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_1
    :goto_1
    monitor-exit v6

    .line 418
    :goto_2
    return-void

    .line 391
    :catch_0
    move-exception v2

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "showMsg cannot get userId from AccountService:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v4, v3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v2, v7, v8}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "showMsg generate noticeId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->c()Lcom/alipay/mobile/personalbase/model/SocialPushInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-boolean v2, v5, Lcom/alipay/mobile/personalbase/model/SocialPushInfo;->showPush:Z

    if-eqz v2, :cond_1

    :cond_5
    const/4 v2, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v7, v4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Lcom/alipay/mobile/rome/pushservice/integration/j;ILjava/util/List;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_3f

    const/4 v4, 0x1

    if-ne v8, v4, :cond_c

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/e;->g()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move v4, v3

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v5}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/util/List;ILcom/alipay/mobile/personalbase/model/SocialPushInfo;)Landroid/app/Notification;

    move-result-object v5

    iget v3, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v5, Landroid/app/Notification;->flags:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-wide v11, Lcom/alipay/mobile/rome/pushservice/integration/f;->f:J

    sub-long v11, v9, v11

    long-to-double v11, v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    div-double/2addr v11, v13

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    cmpl-double v3, v11, v13

    if-ltz v3, :cond_6

    sput-wide v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->f:J

    iget v3, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v5, Landroid/app/Notification;->defaults:I

    iget v3, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x4

    iput v3, v5, Landroid/app/Notification;->defaults:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->e()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_d

    iput-object v3, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const-class v10, Lcom/alipay/mobile/rome/pushservice/integration/PushDistributerService;

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "alipay.pushservice.action.CLICK"

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_key"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_noticeId"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_type"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->k()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_type_biz_id"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/e;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "push_type_biz_sub_id"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-lez v8, :cond_7

    const-string/jumbo v3, "push_type_m_biz_id"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/e;->k()Z

    move-result v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "push_type_m_sub_biz_id"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/mobile/rome/pushservice/integration/e;->l()Z

    move-result v10

    invoke-virtual {v9, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_7
    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e()Ljava/lang/String;

    move-result-object v3

    if-lez v8, :cond_3e

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3e

    :goto_6
    const-string/jumbo v3, "push_data"

    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x4

    sget-object v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getClickIntent uri="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v8, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v2, v3, v9, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    sget-object v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getClickIntent 1 noticeId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", msgId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v8, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    iput-object v2, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Lcom/alipay/mobile/rome/pushservice/integration/j;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v7, "notificationManager() notify is called!"

    invoke-static {v2, v3, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->i()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->j()V

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->f()V

    :goto_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 384
    :catchall_1
    move-exception v2

    monitor-exit v6

    throw v2

    .line 391
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_c
    const/4 v4, 0x2

    if-ne v8, v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->j()Lcom/alipay/mobile/rome/pushservice/integration/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move v4, v3

    goto/16 :goto_4

    :cond_d
    iget v3, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v5, Landroid/app/Notification;->defaults:I

    goto/16 :goto_5

    :cond_e
    iget v3, v5, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v5, Landroid/app/Notification;->defaults:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_5

    :cond_f
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "noticeInfo has been shown and dropped! msgId="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 403
    :cond_10
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b()Z

    move-result v2

    if-nez v2, :cond_11

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Z)V

    .line 405
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 406
    const/4 v2, 0x1

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMsg This is the phone(unsupport rich style) and flag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 407
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_11
    if-nez p1, :cond_1e

    .line 413
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x4

    sget-object v7, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "showMsg image from rPic="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v7, "http"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    const-string/jumbo v7, "https"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_13
    const/4 v3, 0x0

    :cond_14
    :goto_8
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x4

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isReadyShow ret="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "prepareNoticeMsg scale="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , w_screen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", h_screen ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_16
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v4, 0x43800000    # 256.0f

    mul-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v7, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v7

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "prepareNoticeMsg expectWidth="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , expectHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_17
    new-instance v4, Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/alipay/mobile/rome/pushservice/integration/d;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-direct {v7, v8, v9}, Lcom/alipay/mobile/rome/pushservice/integration/d;-><init>(Landroid/content/Context;Lcom/alipay/mobile/rome/pushservice/integration/j;)V

    invoke-virtual {v4, v5, v7, v2, v3}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    const/4 v2, 0x0

    :cond_18
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "prepareNoticeMsg ret="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_19
    if-nez v2, :cond_1e

    .line 414
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 415
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMsg prepareNoticeMsg...noticeInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 415
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 418
    :cond_1a
    monitor-exit v6

    goto/16 :goto_2

    .line 413
    :cond_1b
    const/4 v4, 0x0

    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "drawable"

    invoke-virtual {v7, v5, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1c

    const/4 v4, 0x1

    :cond_1c
    if-nez v4, :cond_14

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a(Z)V

    goto/16 :goto_8

    .line 421
    :cond_1e
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 422
    const/4 v2, 0x5

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "showMsg start for notification...noticeInfo="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 422
    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1f
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 428
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 429
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 430
    const/4 v3, 0x5

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "showMsg generate noticeId="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_20
    const/4 v3, 0x0

    .line 435
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/h;->d()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Lcom/alipay/mobile/rome/pushservice/integration/j;I)I

    move-result v3

    move v5, v3

    .line 440
    :goto_9
    const/4 v3, 0x1

    if-le v5, v3, :cond_2a

    .line 442
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v3

    :cond_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/l;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v7, -0xff0100

    const/16 v8, 0x12c

    const/16 v9, 0x3e8

    invoke-virtual {v3, v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v3, v7, :cond_22

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_22
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    .line 445
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v4

    .line 446
    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/pushservice/integration/l;->b()Ljava/lang/String;

    move-result-object v4

    .line 445
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v2

    move-object v4, v3

    move v3, v2

    .line 455
    :goto_a
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->a()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 456
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 458
    :cond_23
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 460
    const-string/jumbo v2, "8"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v7, "22"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xb

    const/16 v10, 0xd

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ge v8, v7, :cond_39

    if-lt v8, v2, :cond_39

    const/4 v2, 0x1

    :goto_b
    if-eqz v2, :cond_24

    .line 461
    iget v2, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v4, Landroid/app/Notification;->defaults:I

    .line 462
    iget v2, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v4, Landroid/app/Notification;->defaults:I

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 465
    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3b

    .line 467
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/f;->a(Ljava/lang/String;)V

    .line 469
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->e()Landroid/net/Uri;

    move-result-object v2

    .line 470
    if-eqz v2, :cond_3a

    .line 471
    iput-object v2, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 482
    :cond_24
    :goto_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const-class v9, Lcom/alipay/mobile/rome/pushservice/integration/PushDistributerService;

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "alipay.pushservice.action.CLICK"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "push_key"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "push_noticeId"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "push_type"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/mobile/rome/pushservice/integration/h;->k()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "push_tMsgId"

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->e()Ljava/lang/String;

    move-result-object v2

    if-lez v5, :cond_25

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/rome/pushservice/integration/h;->d()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/h;->i()Lcom/alipay/mobile/rome/pushservice/integration/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/l;->c()Ljava/lang/String;

    move-result-object v2

    :cond_25
    const-string/jumbo v5, "push_data"

    invoke-virtual {v8, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x4

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "getClickIntent uri="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v9, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v2, v5, v8, v9}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v5, 0x4

    sget-object v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getClickIntent 1 noticeId="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", msgId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v8, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_27
    iput-object v2, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/rome/pushservice/integration/f;->b(Lcom/alipay/mobile/rome/pushservice/integration/j;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 500
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 501
    const/4 v2, 0x3

    sget-object v5, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v7, "notificationManager() notify is called!"

    invoke-static {v2, v5, v7}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_28
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 504
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->i()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v2

    if-nez v2, :cond_29

    .line 508
    :try_start_b
    new-instance v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;

    invoke-direct {v2}, Lcom/alipay/mobile/rome/pushservice/integration/b/c;-><init>()V

    .line 509
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->a:Ljava/lang/String;

    .line 510
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->b:Ljava/lang/String;

    .line 511
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->g()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->c:Ljava/lang/String;

    .line 512
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a(Lcom/alipay/mobile/rome/pushservice/integration/b/c;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 517
    :cond_29
    :goto_d
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    .line 518
    const-string/jumbo v7, "notification"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 517
    check-cast v2, Landroid/app/NotificationManager;

    .line 519
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/pushservice/integration/j;->j()V

    .line 522
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->f()V

    .line 503
    :goto_e
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 384
    :try_start_d
    monitor-exit v6

    goto/16 :goto_2

    .line 448
    :catch_1
    move-exception v4

    move-object v4, v3

    move v3, v2

    goto/16 :goto_a

    .line 451
    :cond_2a
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-direct {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/rome/pushservice/integration/f;->d()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const v7, -0xff0100

    const/16 v8, 0x12c

    const/16 v9, 0x3e8

    invoke-virtual {v3, v7, v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->c()Z

    move-result v3

    if-eqz v3, :cond_38

    new-instance v7, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v7}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    if-nez p1, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/m;->c()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "drawable"

    invoke-virtual {v8, v3, v10, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/4 v10, 0x3

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v10

    if-eqz v10, :cond_2b

    const/4 v10, 0x3

    sget-object v11, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "drawTextToBitmap gResId="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", scale="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-static {v8, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v3, 0x3

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "drawTextToBitmap getWidth="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", getHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_2d

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_2d
    const/4 v9, 0x1

    invoke-virtual {v8, v3, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    const/4 v3, 0x3

    sget-object v8, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "drawTextToBitmap  bitmapConfig getWidth="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", getHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const-wide/high16 v8, 0x4068000000000000L    # 192.0

    iget v10, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v10, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v9

    if-eqz v9, :cond_2f

    const/4 v9, 0x4

    sget-object v10, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "resizeBitmap dstWidth="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", dstHeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v3, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_30

    const/4 v8, 0x4

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "resizeBitmap targetWidth="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", targetHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", bitmapConfig="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_30
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/j;->h()Lcom/alipay/mobile/rome/pushservice/integration/h;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/h;->h()Lcom/alipay/mobile/rome/pushservice/integration/m;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/rome/pushservice/integration/m;->d()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/4 v10, 0x4

    invoke-static {v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v10

    if-eqz v10, :cond_31

    const/4 v10, 0x4

    sget-object v11, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "drawTextToBitmap scale="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", getDensity="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", baseBitmap.width="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", baseBitmap.height="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", getScaledHeight="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    float-to-int v13, v9

    invoke-virtual {v3, v13}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", getScaledWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    float-to-int v13, v9

    invoke-virtual {v3, v13}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", baseBitmap.getConfig().name()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_31
    if-eqz v8, :cond_37

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_37

    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v11, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v12, 0x41700000    # 15.0f

    mul-float/2addr v9, v12

    float-to-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v12, 0x42a00000    # 80.0f

    mul-float/2addr v9, v12

    float-to-double v12, v9

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v12, v14

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v12, v14

    double-to-int v9, v12

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v8, v13, v14, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v13, 0x4

    invoke-static {v13}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v13

    if-eqz v13, :cond_32

    const/4 v13, 0x4

    sget-object v14, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "drawTextToBitmap textSize="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", getTypeface="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", reservBottom="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", bounds.width="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", bounds.height="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-virtual {v11}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    const/4 v14, 0x4

    invoke-static {v14}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v14

    if-eqz v14, :cond_33

    const/4 v14, 0x4

    sget-object v15, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, "drawTextToBitmap ascent="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", descent="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", bottom="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", top="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", leading="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_33
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    iget v15, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int v15, v15

    sub-int/2addr v14, v15

    iget v15, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    sub-int v17, v9, v15

    div-int/lit8 v17, v17, 0x2

    sub-int v16, v16, v17

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v16, v16, v17

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->leading:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    sub-int v16, v16, v17

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v18

    sub-int v18, v9, v18

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    sub-int v17, v17, v18

    iget v0, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    sub-int v17, v17, v18

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v19

    sub-int v9, v9, v19

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    sub-int v9, v18, v9

    iget v13, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-int v13, v13

    add-int/lit8 v13, v13, 0x1

    sub-int/2addr v9, v13

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v13, v13, v18

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0xa

    mul-int/lit8 v13, v13, 0x6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int v12, v12, v18

    add-int/lit8 v12, v12, 0x1

    div-int/lit8 v12, v12, 0xa

    mul-int/lit8 v12, v12, 0x9

    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v18

    if-eqz v18, :cond_34

    const/16 v18, 0x4

    sget-object v19, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "drawTextToBitmap x:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v20, ", y="

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", y2="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", fontHeight="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", y3="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", y4="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", y5="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v9}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_34
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    move/from16 v0, v17

    int-to-float v12, v0

    invoke-virtual {v10, v8, v9, v12, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_35
    :goto_f
    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/pushservice/integration/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v3, 0x7fffffff

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    :cond_36
    :goto_10
    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    move-object v4, v3

    move v3, v2

    goto/16 :goto_a

    :cond_37
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v8, 0x4

    sget-object v9, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v10, "drawTextToBitmap gText is empty."

    invoke-static {v8, v9, v10}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_38
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v3, v7, :cond_36

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_10

    .line 460
    :cond_39
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 474
    :cond_3a
    iget v2, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v4, Landroid/app/Notification;->defaults:I

    goto/16 :goto_c

    .line 478
    :cond_3b
    iget v2, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v4, Landroid/app/Notification;->defaults:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_c

    .line 514
    :catch_2
    move-exception v2

    :try_start_e
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v7, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    const-string/jumbo v8, "save BizIdMap error"

    invoke-interface {v2, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_d

    .line 503
    :catchall_2
    move-exception v2

    :try_start_f
    monitor-exit v5

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 524
    :cond_3c
    :try_start_10
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/rome/pushservice/integration/f;->a:Ljava/lang/String;

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "noticeInfo has been shown and dropped! msgId="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/rome/pushservice/integration/f;->c:Lcom/alipay/mobile/rome/pushservice/integration/j;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/pushservice/integration/j;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 525
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_e

    :cond_3d
    move v5, v3

    goto/16 :goto_9

    :cond_3e
    move-object v2, v3

    goto/16 :goto_6

    :cond_3f
    move v4, v3

    goto/16 :goto_4
.end method
