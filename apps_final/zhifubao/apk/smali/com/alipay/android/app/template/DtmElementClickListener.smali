.class public Lcom/alipay/android/app/template/DtmElementClickListener;
.super Ljava/lang/Object;
.source "DtmElementClickListener.java"

# interfaces
.implements Lcom/alipay/android/app/template/OnTemplateClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "DtmElementClickListener"


# instance fields
.field private a:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field private b:Lcom/alibaba/fastjson/JSONObject;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/event/TElementEventHandler;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->a:Lcom/alipay/android/app/template/event/TElementEventHandler;

    .line 15
    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->c:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->a:Lcom/alipay/android/app/template/event/TElementEventHandler;

    .line 21
    iput-object p2, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->b:Lcom/alibaba/fastjson/JSONObject;

    .line 22
    iput-object p3, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->c:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public onAsyncEvent(Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->a:Lcom/alipay/android/app/template/event/TElementEventHandler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->a:Lcom/alipay/android/app/template/event/TElementEventHandler;

    sget-object v1, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->ASYNC_EVENT:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/android/app/template/event/TElementEventHandler;->onAsyncEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onEvent(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DtmElementClickListener"

    const-string/jumbo v3, "onEvent"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v0, p2}, Lcom/alipay/android/app/template/Tracker;->recordClick(Lcom/alipay/android/app/template/util/TemplateLayoutParams;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->a:Lcom/alipay/android/app/template/event/TElementEventHandler;

    if-eqz v1, :cond_1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "DtmElementClickListener"

    const-string/jumbo v3, " dtm click listener not null "

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-static {}, Lcom/alipay/android/app/template/markup/MarkFactory;->getInstance()Lcom/alipay/android/app/template/markup/MarkFull;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, p2, v1}, Lcom/alipay/android/app/template/markup/MarkFull;->up(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 37
    const-string/jumbo v2, "param"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    if-eqz p3, :cond_2

    sget-object v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->CLICK:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->a:Lcom/alipay/android/app/template/event/TElementEventHandler;

    iget-object v3, p0, Lcom/alipay/android/app/template/DtmElementClickListener;->c:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1, p1}, Lcom/alipay/android/app/template/event/TElementEventHandler;->onEvent(Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)Z

    .line 42
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_2
    sget-object v0, Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;->GENERIC:Lcom/alipay/android/app/template/event/TElementEventHandler$EventType;

    goto :goto_0
.end method
