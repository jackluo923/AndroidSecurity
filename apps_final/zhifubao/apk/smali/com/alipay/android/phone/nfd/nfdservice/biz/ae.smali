.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;)Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/api/siteprobe/facade/WifiRouteFacade;->getGoPublicUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;

    const/4 v1, 0x4

    iput v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ad;->b:J

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/util/ContextUtils;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/api/utils/NFDSettingUtil;->saveGotoUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    :try_start_6
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->c(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/ae;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/ac;Ljava/lang/String;)V

    throw v0
.end method
