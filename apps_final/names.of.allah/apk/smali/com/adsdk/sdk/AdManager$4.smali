.class Lcom/adsdk/sdk/AdManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/AdManager;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/AdManager;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/AdManager$4;->this$0:Lcom/adsdk/sdk/AdManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$4;->this$0:Lcom/adsdk/sdk/AdManager;

    new-instance v1, Lcom/adsdk/sdk/AdResponse;

    invoke-direct {v1}, Lcom/adsdk/sdk/AdResponse;-><init>()V

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$13(Lcom/adsdk/sdk/AdManager;Lcom/adsdk/sdk/AdResponse;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$4;->this$0:Lcom/adsdk/sdk/AdManager;

    # getter for: Lcom/adsdk/sdk/AdManager;->mResponse:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/AdManager;->access$14(Lcom/adsdk/sdk/AdManager;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/AdResponse;->setType(I)V

    const-string v0, "Handling exception in ad request thread"

    invoke-static {v0, p2}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/adsdk/sdk/AdManager$4;->this$0:Lcom/adsdk/sdk/AdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/AdManager;->access$11(Lcom/adsdk/sdk/AdManager;Ljava/lang/Thread;)V

    return-void
.end method
