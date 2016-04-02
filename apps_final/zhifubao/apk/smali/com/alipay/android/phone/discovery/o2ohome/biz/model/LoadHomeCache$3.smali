.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;
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
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    const-class v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    const-class v2, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->category:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/CategoryCache;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    const-class v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    const-class v2, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$7(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->promoInfo:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/PromoInfoCache;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    const-class v0, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    const-class v2, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/DiskCacheHelper;->readFromCache(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$8(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;)V

    .line 121
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->getTemplateInfo()Ljava/util/Map;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;

    iget-object v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->context:Landroid/app/Activity;
    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$3;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-direct {v2, v3}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper;->buildTemplate(Ljava/util/Map;Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;)V

    .line 128
    :cond_2
    return-void
.end method
