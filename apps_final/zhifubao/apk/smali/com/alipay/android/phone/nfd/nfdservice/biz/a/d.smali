.class final Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/lbs/LBSLocationListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

.field private final b:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;Landroid/content/Context;Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;

    return-void
.end method


# virtual methods
.method public final onLocationFailed(I)V
    .locals 0

    return-void
.end method

.method public final onLocationUpdate(Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->a(Lcom/alipay/mobile/common/lbs/LBSLocation;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->a:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;

    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;->b(Lcom/alipay/android/phone/nfd/nfdservice/biz/a/a;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;->a(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->b:Lcom/alipay/android/phone/nfd/nfdservice/biz/a/c;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdservice/biz/a/d;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, p0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    throw v0
.end method
