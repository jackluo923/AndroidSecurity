.class Lcom/adsdk/sdk/banner/AdView$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$4;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "ADSDK"

    const-string v1, "Exception in request thread"

    invoke-static {v0, v1, p2}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$4;->this$0:Lcom/adsdk/sdk/banner/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->access$8(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Thread;)V

    return-void
.end method
