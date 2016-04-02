.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/c;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public final onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 843
    :try_start_0
    new-instance v0, Lpl/droidsonroids/gif/GifDrawable;

    invoke-direct {v0, p2}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;->onLoad(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    :goto_0
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "App--"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method public final onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V
    .locals 0

    .prologue
    .line 833
    return-void
.end method
