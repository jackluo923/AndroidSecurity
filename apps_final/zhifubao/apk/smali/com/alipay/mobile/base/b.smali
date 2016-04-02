.class final Lcom/alipay/mobile/base/b;
.super Ljava/lang/Object;
.source "MetaInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/base/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/b;->a:Lcom/alipay/mobile/base/a;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commonbiz-MetaInfo"

    const-string/jumbo v2, " async start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/base/b;->a:Lcom/alipay/mobile/base/a;

    iget-object v0, v0, Lcom/alipay/mobile/base/a;->a:Lcom/alipay/mobile/base/MetaInfo;

    invoke-static {v0}, Lcom/alipay/mobile/base/MetaInfo;->b(Lcom/alipay/mobile/base/MetaInfo;)V

    .line 204
    invoke-static {}, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->a()Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/base/util/FetchConfigAfterLogin;->b()V

    .line 205
    return-void
.end method
