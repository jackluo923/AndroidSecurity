.class Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;
.super Ljava/lang/Object;
.source "LoadHomeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;

.field private final synthetic val$tempRet:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;->val$tempRet:Ljava/util/Map;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;->val$tempRet:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommendTemplateId:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 152
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v0

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->callCacheListener:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare$1;->this$1:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$InnerTemplatePrepare;)Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;

    move-result-object v1

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->recommend:Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache;)Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/biz/model/LoadHomeCache$CacheListener;->onRecommendFinish(Lcom/alipay/android/phone/discovery/o2ohome/model/RecommendCache;)V

    .line 155
    :cond_0
    return-void
.end method
