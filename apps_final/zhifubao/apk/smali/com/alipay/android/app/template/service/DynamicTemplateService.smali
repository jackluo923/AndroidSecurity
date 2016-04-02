.class public abstract Lcom/alipay/android/app/template/service/DynamicTemplateService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "DynamicTemplateService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract birdParams(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract birdParams(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract callOnreload(Ljava/lang/String;Landroid/view/View;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
.end method

.method public abstract clearCache()V
.end method

.method public abstract destoryView(Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract executeScript(Ljava/lang/String;Landroid/view/View;)Lcom/alipay/android/app/template/TNativeResult;
.end method

.method public abstract generateListAdapter(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplListAdapter;
.end method

.method public abstract generateRecycleAdapter(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplRecyclerAdapter;
.end method

.method public abstract generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;
.end method

.method public abstract generateView(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract generateViewForUnreusePage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract generateViewForUnreusePageWithKeyboard(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/android/app/template/TemplateKeyboardService;Lcom/alipay/android/app/template/TemplatePasswordService;)Landroid/view/View;
.end method

.method public abstract getBirdNestEnv()Ljava/util/Map;
.end method

.method public abstract getCachedTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
.end method

.method public abstract getTemplateById(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
.end method

.method public abstract handleBirdResponse(Ljava/util/Map;Landroid/content/Context;)Ljava/util/Map;
.end method

.method public abstract handleBirdResponseAsync(Ljava/util/Map;Landroid/content/Context;Lcom/alipay/android/app/template/service/HandleBirdResponseCallback;)V
.end method

.method public abstract handleBirdResponseForUnreusePage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;
.end method

.method public abstract launchPage(Lcom/alipay/mobile/framework/app/ui/ActivityResponsable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
.end method

.method public abstract lockLayout(Landroid/view/View;)Z
.end method

.method public abstract onBackPressed(Landroid/view/View;)Z
.end method

.method public abstract onPayFinish(I)V
.end method

.method public abstract onQuikpayActivityCreate(Landroid/app/Activity;)V
.end method

.method public abstract preLoadTemplate(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract preLoadTemplate(Ljava/util/Map;Landroid/content/Context;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract resetViewData(Lcom/alibaba/fastjson/JSONObject;Landroid/app/Activity;Landroid/view/View;)V
.end method

.method public abstract saveTemplates(Ljava/util/List;)Lcom/alipay/android/app/template/service/DynamicTemplateService$TResult;
.end method

.method public abstract unlockLayout(Landroid/view/View;)Z
.end method
