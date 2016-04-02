.class Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;
.super Ljava/lang/Object;
.source "SearchResultListAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/template/event/TElementEventHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 67
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "o2ohome.SearchAdapter"

    const-string/jumbo v2, "TElementEventHandler.onEvent"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, -0x1

    .line 71
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 81
    :goto_1
    return v0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # getter for: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->itemDataList:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$0(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;

    .line 80
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter$1;->this$0:Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;

    # invokes: Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->startShare(Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)V
    invoke-static {v1, v0}, Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;->access$1(Lcom/alipay/android/phone/discovery/o2ohome/share/SearchResultListAdapter;Lcom/alipay/android/phone/discovery/o2ohome/HotRecommendItem;)V

    .line 81
    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
