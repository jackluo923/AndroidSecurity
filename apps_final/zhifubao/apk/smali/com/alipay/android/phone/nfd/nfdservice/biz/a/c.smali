.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/mobilelbs/common/service/facade/vo/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

.field private b:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->c:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 4

    new-instance v1, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->c:Landroid/content/Context;

    invoke-direct {v1, v0, v2, p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;-><init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;Landroid/content/Context;Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, 0x2710

    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;J)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    const-string/jumbo v1, "wifi_lbs_last_location"

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->b:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->b:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->c:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_1
    throw v0

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/android/phone/nfd/nfdservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->b:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    return-void
.end method

.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->a()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    return-object v0
.end method
