.class final Lorg/rome/android/ipp/e;
.super Ljava/lang/Object;
.source "IppFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lorg/rome/android/ipp/IppFacade;


# direct methods
.method public constructor <init>(Lorg/rome/android/ipp/IppFacade;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lorg/rome/android/ipp/e;->b:Lorg/rome/android/ipp/IppFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Lorg/rome/android/ipp/e;->a:Ljava/lang/String;

    .line 257
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, Lorg/rome/android/ipp/e;->b:Lorg/rome/android/ipp/IppFacade;

    iget-object v1, p0, Lorg/rome/android/ipp/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/rome/android/ipp/IppFacade;->c(Lorg/rome/android/ipp/IppFacade;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
