.class public Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "o2ohome.SearchAdapter"


# instance fields
.field private birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

.field private clickParam:Ljava/lang/String;

.field private context:Landroid/app/Activity;

.field private convertViews:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

.field private final handler:Landroid/os/Handler;

.field private hasPreGenerated:Z

.field private itemDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;"
        }
    .end annotation
.end field

.field private viewItemsCreated:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->viewItemsCreated:I

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    .line 39
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->context:Landroid/app/Activity;

    .line 40
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->handler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    .line 43
    iput-boolean v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->hasPreGenerated:Z

    .line 44
    const-class v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->viewItemsCreated:I

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Lcom/alipay/android/app/template/service/DynamicTemplateService;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$7(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->preGenerateView(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method private preGenerateView(Landroid/view/ViewGroup;I)V
    .locals 4

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;Landroid/view/ViewGroup;I)V

    .line 82
    const-wide/16 v2, 0x32

    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->hasPreGenerated:Z

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 108
    if-nez p2, :cond_3

    .line 110
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->viewItemsCreated:I

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 112
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    .line 117
    iget-object v0, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "positionInx"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    iget-object v2, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->context:Landroid/app/Activity;

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 119
    if-nez v0, :cond_1

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "o2ohome.SearchAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u70ed\u95e8\u63a8\u8350 generateView failed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v8, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_1
    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->hasPreGenerated:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$2;

    invoke-direct {v2, p0, v0, p3}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 139
    :cond_2
    return-object v0

    :cond_3
    move-object v6, p2

    goto :goto_0
.end method

.method public setTemplates(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->viewItemsCreated:I

    .line 56
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clickParam:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->notifyDataSetChanged()V

    .line 58
    return-void
.end method
