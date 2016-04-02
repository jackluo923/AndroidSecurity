.class final Lcom/alipay/mobile/base/a;
.super Ljava/lang/Object;
.source "MetaInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/base/MetaInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/MetaInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/a;->a:Lcom/alipay/mobile/base/MetaInfo;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 192
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commonbiz-MetaInfo"

    const-string/jumbo v2, "\u63a5\u6536\u767b\u5f55\u6210\u529f\u6d88\u606fPIPE Line\uff0c\u83b7\u53d6index\u548c\u65f6\u95f4\u5dee\u503c\u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commonbiz-MetaInfo"

    const-string/jumbo v2, "before test main looper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/base/a;->a:Lcom/alipay/mobile/base/MetaInfo;

    invoke-static {v0}, Lcom/alipay/mobile/base/MetaInfo;->a(Lcom/alipay/mobile/base/MetaInfo;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commonbiz-MetaInfo"

    const-string/jumbo v2, "is main looper"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/a;->a:Lcom/alipay/mobile/base/MetaInfo;

    invoke-static {v0}, Lcom/alipay/mobile/base/MetaInfo;->a(Lcom/alipay/mobile/base/MetaInfo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/base/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/base/b;-><init>(Lcom/alipay/mobile/base/a;)V

    .line 206
    const-wide/16 v2, 0xc8

    .line 199
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "commonbiz-MetaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "is success:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method
