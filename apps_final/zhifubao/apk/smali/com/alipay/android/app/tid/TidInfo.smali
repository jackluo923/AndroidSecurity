.class public Lcom/alipay/android/app/tid/TidInfo;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/tid/TidInfo;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/android/app/tid/TidInfo;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/android/app/tid/TidInfo;

    invoke-direct {v0}, Lcom/alipay/android/app/tid/TidInfo;-><init>()V

    iput-object p0, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    iput-wide p2, v0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2

    const/16 v3, 0x39

    if-le v2, v3, :cond_4

    :cond_2
    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    const/16 v3, 0x66

    if-le v2, v3, :cond_4

    :cond_3
    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    const/16 v3, 0x46

    if-gt v2, v3, :cond_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v0, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized f()Lcom/alipay/android/app/tid/TidInfo;
    .locals 13

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const-class v8, Lcom/alipay/android/app/tid/TidInfo;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v0, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    monitor-exit v8

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/alipay/android/app/tid/a;

    invoke-direct {v10, v9}, Lcom/alipay/android/app/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v0, "SharedPref"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string/jumbo v1, "sharedtid"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    :try_start_4
    const-string/jumbo v1, "sharedtid"

    invoke-interface {v11, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "sharedkey"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v5

    :try_start_5
    const-string/jumbo v1, "sharedkey"

    invoke-interface {v11, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    const-string/jumbo v1, "sharedtidTimeStamp"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-result-wide v1

    :goto_1
    :try_start_7
    const-string/jumbo v0, "sharedtidTimeStamp"

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v9}, Lcom/alipay/android/app/sys/DeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/android/app/encrypt/Des;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-static {v7}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-wide v1, v3

    move-object v5, v6

    move-object v7, v6

    :cond_2
    :goto_2
    invoke-static {v9}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_3
    invoke-virtual {v10, v0, v9}, Lcom/alipay/android/app/tid/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "db.getTid imsi imei"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->d()V

    invoke-static {v7}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10, v0, v9}, Lcom/alipay/android/app/tid/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v0, v9}, Lcom/alipay/android/app/tid/a;->c(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-wide v1

    :goto_3
    :try_start_9
    invoke-virtual {v10}, Lcom/alipay/android/app/tid/a;->close()V

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v0, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    :cond_4
    :goto_4
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-wide v1, v0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v7, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    :goto_5
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result-wide v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-wide v1, v3

    move-object v5, v6

    move-object v7, v6

    :goto_6
    :try_start_b
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v9}, Lcom/alipay/android/app/sys/DeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/android/app/encrypt/Des;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_5
    invoke-static {v7}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move-wide v1, v3

    move-object v5, v6

    move-object v7, v6

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-wide v1, v3

    move-object v5, v6

    move-object v7, v6

    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v9}, Lcom/alipay/android/app/sys/DeviceInfo;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/alipay/android/app/encrypt/Des;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_6
    invoke-static {v7}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    move-wide v1, v3

    move-object v5, v6

    move-object v7, v6

    :cond_7
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_2
    move-exception v0

    :goto_8
    :try_start_d
    invoke-virtual {v10}, Lcom/alipay/android/app/tid/a;->close()V

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v0, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    :cond_8
    :goto_9
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-wide v1, v0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v7, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_9
    :try_start_e
    invoke-virtual {v10, v0, v9}, Lcom/alipay/android/app/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, v3

    move-object v5, v6

    move-object v7, v6

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v10, v0, v9, v7, v5}, Lcom/alipay/android/app/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    :goto_a
    :try_start_f
    invoke-virtual {v10}, Lcom/alipay/android/app/tid/a;->close()V

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v3, v3, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    :cond_b
    :goto_b
    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-wide v1, v3, Lcom/alipay/android/app/tid/TidInfo;->d:J

    sget-object v1, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v7, v1, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    throw v0

    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v0, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_d
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v5, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    goto/16 :goto_4

    :cond_e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v0, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_f
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v5, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    goto :goto_9

    :cond_10
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v3, v3, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_11
    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v5, v3, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_b

    :catchall_3
    move-exception v0

    move-wide v1, v3

    move-object v5, v6

    move-object v7, v6

    goto :goto_a

    :catch_3
    move-exception v0

    move-wide v1, v3

    move-object v5, v6

    move-object v7, v6

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    move-wide v1, v3

    move-object v5, v6

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    move-wide v1, v3

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-wide v1, v3

    move-object v5, v6

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-wide v1, v3

    goto/16 :goto_6

    :catch_6
    move-exception v0

    goto/16 :goto_6
.end method

.method public static g()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iput-object v3, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    sput-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/tid/a;

    invoke-direct {v3, v0}, Lcom/alipay/android/app/tid/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1, v2}, Lcom/alipay/android/app/tid/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/app/tid/a;->close()V

    return-void
.end method

.method public static h()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static declared-synchronized i()V
    .locals 2

    const-class v1, Lcom/alipay/android/app/tid/TidInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/tid/TidInfo;

    invoke-direct {v0}, Lcom/alipay/android/app/tid/TidInfo;-><init>()V

    sput-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/tid/TidInfo;->c(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()V

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v1, p0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v1, p0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-wide v1, p0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    iput-wide v1, v0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    new-instance v1, Lcom/alipay/android/app/tid/a;

    invoke-direct {v1, p1}, Lcom/alipay/android/app/tid/a;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v3, v3, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    sget-object v4, Lcom/alipay/android/app/tid/TidInfo;->a:Lcom/alipay/android/app/tid/TidInfo;

    iget-object v4, v4, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alipay/android/app/tid/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/a;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/tid/TidInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/tid/TidInfo;->d:J

    return-wide v0
.end method

.method public final d()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/tid/TidInfo;->c:Ljava/lang/String;

    return-void
.end method
