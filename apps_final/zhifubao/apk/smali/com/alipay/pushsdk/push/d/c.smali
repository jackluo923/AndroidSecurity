.class public Lcom/alipay/pushsdk/push/d/c;
.super Ljava/lang/Object;
.source "NotificationPacketListenerImpl.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/d/d;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/alipay/pushsdk/push/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/alipay/pushsdk/push/d/c;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/alipay/pushsdk/push/d/c;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/l;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/c/a;)V
    .locals 9

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v8, 0x2

    .line 37
    new-instance v0, Lcom/alipay/pushsdk/push/g;

    .line 40
    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/g;-><init>(I)V

    .line 43
    invoke-interface {v0, p1}, Lcom/alipay/pushsdk/push/connection/c;->a(Lcom/alipay/pushsdk/push/c/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/m;->a(J)V

    .line 47
    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/pushsdk/push/l;->b(J)V

    .line 49
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/alipay/pushsdk/push/d/c;->a:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "NotificationPacketListener.processPacket()..."

    .line 50
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/util/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/util/b;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/c/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/pushsdk/push/b;->a(Landroid/content/Context;)Lcom/alipay/pushsdk/push/b;

    move-result-object v2

    .line 62
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 65
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/alipay/pushsdk/util/b;->a(Lorg/json/JSONObject;Z)Lcom/alipay/pushsdk/data/NotifierInfo;

    move-result-object v1

    .line 68
    new-instance v3, Lcom/alipay/pushsdk/data/d;

    iget-object v4, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/pushsdk/data/d;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_6

    invoke-virtual {v3, v1}, Lcom/alipay/pushsdk/data/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 70
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/d/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NotifierInfo received, msgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 73
    const-string/jumbo v5, " delayTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayToTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/alipay/pushsdk/util/j;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-static {v0, v3, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    invoke-virtual {v2, v1}, Lcom/alipay/pushsdk/push/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const/4 v0, 0x1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getDelayOffset()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/alipay/pushsdk/push/b;->a(IJLcom/alipay/pushsdk/data/NotifierInfo;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_2
    :goto_0
    new-instance v0, Lcom/alipay/pushsdk/push/r;

    .line 93
    iget-object v3, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v3

    .line 92
    invoke-direct {v0, v3}, Lcom/alipay/pushsdk/push/r;-><init>(Landroid/content/Context;)V

    .line 94
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/r;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    .line 98
    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/l;->k()I

    move-result v0

    .line 97
    invoke-static {v0}, Lcom/alipay/pushsdk/push/c/c;->a(I)Lcom/alipay/pushsdk/push/c/a;

    move-result-object v0

    .line 99
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/push/c/a;->a(I)V

    .line 101
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/pushsdk/push/c/a;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 113
    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/NotifierInfo;->getMsgInfo()Lcom/alipay/pushsdk/data/MsgInfo;

    move-result-object v1

    .line 115
    iget-object v4, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/l;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 116
    const-string/jumbo v4, "userId"

    .line 117
    iget-object v5, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v5}, Lcom/alipay/pushsdk/push/l;->e()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :goto_1
    const-string/jumbo v4, "k"

    invoke-virtual {v1}, Lcom/alipay/pushsdk/data/MsgInfo;->getMsgKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/push/c/a;->a(Ljava/lang/String;)V

    .line 126
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    const/4 v1, 0x3

    sget-object v4, Lcom/alipay/pushsdk/push/d/c;->a:Ljava/lang/String;

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "processPacket() respPacket will be sent. dataResp:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v1, v4, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/l;->d()Lcom/alipay/pushsdk/push/connection/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/pushsdk/push/connection/k;->a(Lcom/alipay/pushsdk/push/c/a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/b;->c()Z

    move-result v0

    if-nez v0, :cond_5

    .line 139
    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/b;->d()V

    .line 147
    :cond_5
    :goto_3
    return-void

    .line 80
    :cond_6
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/pushsdk/push/d/c;->b:Lcom/alipay/pushsdk/push/l;

    .line 81
    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/l;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v4, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v0, v1, v3}, Lcom/alipay/pushsdk/util/b;->a(Lcom/alipay/pushsdk/data/NotifierInfo;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    sget-object v1, Lcom/alipay/pushsdk/push/d/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() got JSONException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 102
    :catch_1
    move-exception v0

    .line 103
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 104
    sget-object v1, Lcom/alipay/pushsdk/push/d/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "processPacket() got Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 119
    :cond_7
    :try_start_4
    const-string/jumbo v4, "userId"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 132
    :catch_2
    move-exception v0

    .line 133
    invoke-static {v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 134
    sget-object v1, Lcom/alipay/pushsdk/push/d/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "processPacket() resp Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
