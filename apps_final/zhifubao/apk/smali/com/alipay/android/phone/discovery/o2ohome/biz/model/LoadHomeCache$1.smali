.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->writeToDisk(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
