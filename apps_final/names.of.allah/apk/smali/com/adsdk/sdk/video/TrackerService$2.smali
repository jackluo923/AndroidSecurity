.class Lcom/adsdk/sdk/video/TrackerService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$7(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/adsdk/sdk/video/TrackerService;->access$8(Ljava/lang/Thread;)V

    invoke-static {}, Lcom/adsdk/sdk/video/TrackerService;->startTracking()V

    return-void
.end method
