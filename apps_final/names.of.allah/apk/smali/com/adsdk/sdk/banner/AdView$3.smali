.class Lcom/adsdk/sdk/banner/AdView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ADSDK"

    const-string v1, "starting request thread"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$2(Lcom/adsdk/sdk/banner/AdView;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/adsdk/sdk/RequestGeneralAd;

    invoke-direct {v0}, Lcom/adsdk/sdk/RequestGeneralAd;-><init>()V

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->getRequest()Lcom/adsdk/sdk/AdRequest;
    invoke-static {v2}, Lcom/adsdk/sdk/banner/AdView;->access$3(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdRequest;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/adsdk/sdk/RequestGeneralAd;->sendRequest(Lcom/adsdk/sdk/AdRequest;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adsdk/sdk/AdResponse;

    invoke-static {v1, v0}, Lcom/adsdk/sdk/banner/AdView;->access$4(Lcom/adsdk/sdk/banner/AdView;Lcom/adsdk/sdk/AdResponse;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->response:Lcom/adsdk/sdk/AdResponse;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$5(Lcom/adsdk/sdk/banner/AdView;)Lcom/adsdk/sdk/AdResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ADSDK"

    const-string v1, "response received"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ADSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getVisibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-virtual {v2}, Lcom/adsdk/sdk/banner/AdView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->updateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$6(Lcom/adsdk/sdk/banner/AdView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->showContent:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$7(Lcom/adsdk/sdk/banner/AdView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adsdk/sdk/banner/AdView;->access$8(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Thread;)V

    const-string v0, "ADSDK"

    const-string v1, "finishing request thread"

    invoke-static {v0, v1}, Lcom/adsdk/sdk/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/adsdk/sdk/RequestGeneralAd;

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # getter for: Lcom/adsdk/sdk/banner/AdView;->xml:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/adsdk/sdk/banner/AdView;->access$2(Lcom/adsdk/sdk/banner/AdView;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adsdk/sdk/RequestGeneralAd;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$3;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/adsdk/sdk/banner/AdView;->access$1(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
