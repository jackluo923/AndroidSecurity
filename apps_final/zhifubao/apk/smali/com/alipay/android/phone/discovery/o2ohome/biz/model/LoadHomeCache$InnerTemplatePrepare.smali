.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Lcom/alipay/android/phone/discovery/o2ohome/util/BirdNestHelper$OnTemplatePrepareFinish;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    return-object v0
.end method


# virtual methods
.method public onFinish(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->context:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
