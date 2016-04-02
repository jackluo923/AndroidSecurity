.class final Lorg/rome/android/ipp/c;
.super Ljava/lang/Object;
.source "IppFacade.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/rome/android/ipp/IppFacade;


# direct methods
.method private constructor <init>(Lorg/rome/android/ipp/IppFacade;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lorg/rome/android/ipp/c;->a:Lorg/rome/android/ipp/IppFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/rome/android/ipp/IppFacade;B)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lorg/rome/android/ipp/c;-><init>(Lorg/rome/android/ipp/IppFacade;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/rome/android/ipp/c;->a:Lorg/rome/android/ipp/IppFacade;

    invoke-static {v0}, Lorg/rome/android/ipp/IppFacade;->a(Lorg/rome/android/ipp/IppFacade;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lorg/rome/android/ipp/IppFacade;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
