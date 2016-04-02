.class public Lcom/alipay/mobile/rome/pushservice/integration/n;
.super Ljava/lang/Object;
.source "PushNoticeSync.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AlipayPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    const-class v1, Lcom/alipay/mobile/rome/pushservice/integration/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/pushservice/integration/n;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->b:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->c:Landroid/os/Bundle;

    .line 45
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 141
    :goto_0
    if-eqz v1, :cond_0

    .line 143
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    check-cast v0, Landroid/app/NotificationManager;

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 146
    :cond_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    .line 48
    const-class v3, Lcom/alipay/mobile/rome/pushservice/integration/k;

    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->c:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    monitor-exit v3

    .line 75
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "op_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "removeBizMsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    .line 60
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v1

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 62
    const/4 v0, 0x3

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/n;->a:Ljava/lang/String;

    const-string/jumbo v4, "onReceive got userId from AccountService, do not print"

    invoke-static {v0, v2, v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 71
    :goto_1
    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/n;->a:Ljava/lang/String;

    const-string/jumbo v2, "onReceive cancelNotification userId got Empty, just return"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const/4 v2, 0x3

    :try_start_3
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    const/4 v2, 0x3

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/n;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onReceive cannot get userId from AccountService:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v2, v1

    goto :goto_1

    .line 77
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "bizId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "subBizId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 81
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 84
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/pushservice/integration/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v6, v4, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 98
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 99
    invoke-virtual {v6, v4, v5, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_5
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/mobile/rome/pushservice/integration/n;->a:Ljava/lang/String;

    const-string/jumbo v2, "onReceive cancelNotification done"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :cond_6
    :goto_3
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 88
    :cond_7
    :try_start_6
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-virtual {v6, v4, v0, v2}, Lcom/alipay/mobile/rome/pushservice/integration/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->b:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/pushservice/integration/n;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 104
    :catch_1
    move-exception v0

    .line 105
    const/4 v1, 0x3

    :try_start_7
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 106
    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/mobile/rome/pushservice/integration/n;->a:Ljava/lang/String;

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onReceive cancelNotification occur ex="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 90
    :cond_9
    :try_start_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;

    .line 91
    if-eqz v1, :cond_8

    .line 92
    iget-object v9, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->b:Landroid/content/Context;

    iget-object v1, v1, Lcom/alipay/mobile/rome/pushservice/integration/b/a;->a:Ljava/lang/String;

    invoke-static {v9, v1}, Lcom/alipay/mobile/rome/pushservice/integration/n;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    .line 111
    :cond_a
    :try_start_9
    const-string/jumbo v1, "removeBoxMsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "tMsgId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 117
    :try_start_a
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/rome/pushservice/integration/b/c;

    move-result-object v2

    .line 118
    if-eqz v2, :cond_b

    .line 119
    iget-object v4, p0, Lcom/alipay/mobile/rome/pushservice/integration/n;->b:Landroid/content/Context;

    iget-object v2, v2, Lcom/alipay/mobile/rome/pushservice/integration/b/c;->a:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alipay/mobile/rome/pushservice/integration/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->a()Lcom/alipay/mobile/rome/pushservice/integration/a/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/rome/pushservice/integration/a/c;->b(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_5

    .line 122
    :catch_2
    move-exception v0

    .line 123
    const/4 v2, 0x3

    :try_start_b
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 124
    const/4 v2, 0x3

    sget-object v4, Lcom/alipay/mobile/rome/pushservice/integration/n;->a:Ljava/lang/String;

    .line 125
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onReceive removeBoxMessage occur ex="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v2, v4, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5
.end method
