.class public Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;
.super Ljava/lang/Object;
.source "DataSetNotificationCenter.java"


# instance fields
.field private final a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

.field private b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    .line 22
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;ZLcom/alipay/mobile/personalbase/notification/DataContentObserver;)V
    .locals 4

    .prologue
    .line 26
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 27
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u901a\u77e5:register: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " observer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    invoke-virtual {v0, p1, p3, p2}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Landroid/net/Uri;Lcom/alipay/mobile/personalbase/notification/DataContentObserver;Z)V

    .line 34
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)V
    .locals 4

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    :goto_0
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u901a\u77e5:unregister: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Lcom/alipay/mobile/personalbase/notification/DataContentObserver;)Z

    .line 52
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 15

    .prologue
    .line 71
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "content://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    if-eqz p5, :cond_2

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u901a\u77e5:notifyChange:\u53d8\u5316\u901a\u77e5uri "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 88
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iget-object v2, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->a:Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverNode;->a(Landroid/net/Uri;ILjava/util/ArrayList;)V

    .line 89
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 93
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_0

    .line 94
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 96
    iget-object v9, v1, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->b:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    iget-boolean v10, v1, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->c:Z

    move-object/from16 v0, p6

    invoke-interface {v9, v4, v10, v0}, Lcom/alipay/mobile/personalbase/notification/DataContentObserver;->onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 98
    sub-long v11, v9, v7

    const-wide/16 v13, 0x64

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 99
    iget-object v11, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v12, "SocialSdk_PersonalBase"

    .line 100
    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "\u901a\u77e5:notifyChange:\u53d8\u5316\u901a\u77e5\u8d85\u65f6 "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " Observer:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 101
    iget-object v1, v1, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter$ObserverCall;->b:Lcom/alipay/mobile/personalbase/notification/DataContentObserver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, " \u7528\u65f6"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v7, v9, v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-interface {v11, v12, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/personalbase/notification/DataSetNotificationCenter;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_PersonalBase"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
