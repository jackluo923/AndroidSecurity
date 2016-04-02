.class public Lcom/alipay/android/app/PayEngine;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v4

    invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    :try_start_0
    invoke-static {v5, v3}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;I)Z

    invoke-virtual {v4, v6}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {v3, v5}, Lcom/alipay/android/app/data/BizData;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a()V

    invoke-virtual {v4}, Lcom/alipay/android/app/data/BizDataSource;->b()V

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v7

    invoke-virtual {v7, v5, v1, v2}, Lcom/alipay/android/app/data/DataProcessor;->a(Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->g()Lcom/alipay/android/app/data/ValidatedFrameData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/data/ValidatedFrameData;->a(Lcom/alipay/android/app/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->m()Lcom/alipay/android/app/data/BizDataUnit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2, v3}, Lcom/alipay/android/app/data/BizDataUnit;->a(Lcom/alipay/android/app/data/BizData;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/util/LogAgent;->a()V

    :goto_0
    invoke-virtual {v7}, Lcom/alipay/android/app/data/DataProcessor;->d()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    :try_start_3
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/alipay/android/app/util/LogAgent;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/alipay/android/app/data/BizDataUnit;->a()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    :cond_2
    invoke-virtual {v4, v6}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :try_start_4
    invoke-virtual {v7}, Lcom/alipay/android/app/data/DataProcessor;->c()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/alipay/android/app/data/BizDataUnit;->a()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    :cond_5
    invoke-virtual {v4, v6}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/alipay/android/app/data/BizDataUnit;->a()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    :cond_7
    invoke-virtual {v4, v6}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/android/app/util/Utils;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/data/BizDataSource;->a(I)Z

    move-result v4

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    :goto_1
    return v0

    :catch_0
    move-exception v3

    invoke-static {v3}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lcom/alipay/android/app/data/BizDataSource;->c(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
