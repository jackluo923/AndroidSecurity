.class Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

.field private final synthetic val$itemHeight:I

.field private final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$itemHeight:I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 66
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$itemHeight:I

    div-int v0, v1, v0

    .line 67
    iget v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->val$itemHeight:I

    rem-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v8, v0

    .line 73
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->viewItemsCreated:I
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)I

    move-result v0

    move v9, v0

    :goto_1
    if-lt v9, v8, :cond_1

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v2, v0, v10

    .line 80
    const-string/jumbo v0, "O2OHOME"

    const-string/jumbo v1, "BirdNest_Hot"

    const-string/jumbo v4, "count"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorLogHelper;->performanceExt(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->itemDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    iget-object v1, v2, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;
    invoke-static {v3}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Lcom/alipay/android/phone/discovery/o2ohome/JsHomeEventHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->clickParam:Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->context:Landroid/app/Activity;
    invoke-static {v5}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->convertViews:Ljava/util/Queue;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/SearchResultListAdapter;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 74
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_2
    move v8, v0

    goto :goto_0
.end method
