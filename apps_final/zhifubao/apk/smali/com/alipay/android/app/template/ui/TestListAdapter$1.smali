.class Lcom/alipay/android/app/template/ui/TestListAdapter$1;
.super Ljava/lang/Object;
.source "TestListAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/template/event/TElementEventHandler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/TestListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/TestListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/TestListAdapter$1;->a:Lcom/alipay/android/app/template/ui/TestListAdapter;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsyncEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "TestListAdapter"

    const-string/jumbo v2, "TElementEventHandler.onEvent"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
