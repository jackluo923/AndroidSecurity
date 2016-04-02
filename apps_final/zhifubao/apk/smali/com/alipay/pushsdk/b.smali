.class public final Lcom/alipay/pushsdk/b;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/alipay/pushsdk/b;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/pushsdk/b;->b:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private a(Lcom/alipay/pushsdk/AliPushAppInfo;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/pushsdk/b;->b:Landroid/content/Context;

    const-class v2, Lcom/alipay/pushsdk/push/AppInfoRecvIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    iget-object v1, p0, Lcom/alipay/pushsdk/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string/jumbo v2, "appinfo_parcelable"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/alipay/pushsdk/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 206
    new-instance v0, Lcom/alipay/pushsdk/data/NotifierInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/data/NotifierInfo;-><init>()V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->setId(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v1, "\u652f\u4ed8\u5b9d-\u9ed8\u8ba4\u6d4b\u8bd5\u6d88\u606f\u9ed8\u8ba4\u6d4b\u8bd5\u6d88\u606f"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->setTitle(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "\u79fb\u52a8\u5feb\u6377\u652f\u4ed8\u63a5\u5165Push\u901a\u77e5\u7684\u6d4b\u8bd5\u6d88\u606f\u3002\u76ee\u7684\u662f\u901a\u8fc7\u79fb\u52a8\u5feb\u6377\u5ba2\u6237\u7aef\u5e26\u6765\u652f\u4ed8\u5b9d\u5ba2\u6237\u7aef\u7684\u4e0b\u8f7d\u4f7f\u7528\u3002"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->setContent(Ljava/lang/String;)V

    .line 213
    const-string/jumbo v1, "{\"type\":\"clientUpgrade\",\"params\":{\"url\":\"http\",\"tip\":\"\u652f\u4ed8\u5b9d\u94b1\u53057.6\u65b0\u7248\u7279\u6027\uff1a\\n- \u65b0\u7248\u60c5\u611f\u8f6c\u8d26\uff0c\u80fd\u8bf4\u8bdd\uff0c\u5e26\u8868\u60c5\\n- \u5f53\u9762\u4ed8\u91cd\u8981\u5347\u7ea7\uff0c\u65e0\u7f51\u7edc\u4e5f\u80fd\u8d2d\u7269\"}}"

    .line 214
    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->setUri(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->setStyle(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->setBizType(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 220
    new-instance v3, Lcom/alipay/pushsdk/data/MsgInfo;

    invoke-direct {v3}, Lcom/alipay/pushsdk/data/MsgInfo;-><init>()V

    .line 221
    const-string/jumbo v4, "adji8w"

    invoke-virtual {v3, v4}, Lcom/alipay/pushsdk/data/MsgInfo;->setMsgKey(Ljava/lang/String;)V

    .line 223
    invoke-static {v1, v2}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alipay/pushsdk/data/MsgInfo;->setPubMsgId(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/data/NotifierInfo;->setMsgInfo(Lcom/alipay/pushsdk/data/MsgInfo;)V

    .line 227
    new-instance v1, Lcom/alipay/pushsdk/util/b;

    iget-object v2, p0, Lcom/alipay/pushsdk/b;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    .line 228
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/pushsdk/b;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v3, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v1, v0, v2}, Lcom/alipay/pushsdk/util/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x3

    .line 47
    new-instance v3, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v3}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 48
    invoke-virtual {v3, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setTrigger(Ljava/lang/String;)V

    .line 49
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startService triger="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v0, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    const/4 v2, 0x0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/b;->b:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    check-cast v0, Landroid/app/ActivityManager;

    .line 58
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_5

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x1e

    if-gt v4, v5, :cond_4

    .line 61
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 73
    :goto_0
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    const/4 v2, 0x3

    sget-object v4, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pushProcess findProcess="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, " triger="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 101
    return-void

    .line 61
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 62
    if-eqz v0, :cond_1

    .line 63
    const-string/jumbo v5, "com.eg.android.AlipayGphone:push"

    .line 64
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 66
    goto :goto_0

    .line 81
    :cond_4
    const/4 v2, 0x3

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const/4 v2, 0x3

    sget-object v4, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pushProcess processInfos so much and size="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    sget-object v2, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "startService exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 88
    :cond_5
    const/4 v0, 0x3

    :try_start_2
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    const-string/jumbo v4, "pushProcess processInfos=null"

    invoke-static {v0, v2, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 104
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 105
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setChannelId(Ljava/lang/String;)V

    .line 106
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setChannel channel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 111
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 114
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 115
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setProductId(Ljava/lang/String;)V

    .line 116
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setProductId productId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 121
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 124
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 125
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setVersion(Ljava/lang/String;)V

    .line 126
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setVersion version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 131
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 134
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 135
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setClientId(Ljava/lang/String;)V

    .line 136
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setClientId clientId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 141
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 144
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 145
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setUtdId(Ljava/lang/String;)V

    .line 146
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUtdid utdId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 151
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 154
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 155
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setMsptId(Ljava/lang/String;)V

    .line 156
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setMsptid mspdId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 161
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 164
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 165
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setState(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setTrigger(Ljava/lang/String;)V

    .line 167
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setPushState state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 172
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 178
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 179
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setUserId(Ljava/lang/String;)V

    .line 180
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setTrigger(Ljava/lang/String;)V

    .line 182
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUserId userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", trigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 184
    invoke-virtual {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;->getTrigger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 188
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 193
    new-instance v0, Lcom/alipay/pushsdk/AliPushAppInfo;

    invoke-direct {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;-><init>()V

    .line 194
    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setUserId(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v1, "3"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/AliPushAppInfo;->setTrigger(Ljava/lang/String;)V

    .line 197
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    sget-object v1, Lcom/alipay/pushsdk/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delUserId userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", trigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 199
    invoke-virtual {v0}, Lcom/alipay/pushsdk/AliPushAppInfo;->getTrigger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-static {v4, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/b;->a(Lcom/alipay/pushsdk/AliPushAppInfo;)V

    .line 203
    return-void
.end method
