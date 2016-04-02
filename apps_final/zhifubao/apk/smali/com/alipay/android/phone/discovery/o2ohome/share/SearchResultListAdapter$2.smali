.class Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

.field private final synthetic val$itemHeight:I

.field private final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Landroid/view/ViewGroup;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->val$parent:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->val$itemHeight:I

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 118
    iget v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->val$itemHeight:I

    div-int v0, v1, v0

    .line 119
    iget v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->val$itemHeight:I

    rem-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v8, v0

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->viewItemsCreated:I
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$2(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)I

    move-result v0

    move v9, v0

    :goto_1
    if-lt v9, v8, :cond_1

    .line 129
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->birdNestService:Lcom/alipay/android/app/template/service/DynamicTemplateService;
    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$3(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Lcom/alipay/android/app/template/service/DynamicTemplateService;

    move-result-object v0

    iget-object v1, v2, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->id:Ljava/lang/String;

    iget-object v2, v2, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;->jsonObj:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->eventHandler:Lcom/alipay/android/app/template/event/TElementEventHandler;
    invoke-static {v3}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$4(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Lcom/alipay/android/app/template/event/TElementEventHandler;

    move-result-object v3

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->context:Landroid/app/Activity;
    invoke-static {v5}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$5(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$2;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->convertViews:Ljava/util/Queue;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$6(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_2
    move v8, v0

    goto :goto_0
.end method
