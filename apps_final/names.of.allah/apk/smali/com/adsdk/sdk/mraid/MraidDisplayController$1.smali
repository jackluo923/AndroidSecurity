.class Lcom/adsdk/sdk/mraid/MraidDisplayController$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/mraid/MraidDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->checkViewable()Z

    move-result v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    # getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-static {v1, v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$1(Lcom/adsdk/sdk/mraid/MraidDisplayController;Z)V

    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->getMraidView()Lcom/adsdk/sdk/mraid/MraidView;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    # getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController;->mIsViewable:Z
    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$0(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Z

    move-result v1

    invoke-static {v1}, Lcom/adsdk/sdk/mraid/MraidViewableProperty;->createWithViewable(Z)Lcom/adsdk/sdk/mraid/MraidViewableProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adsdk/sdk/mraid/MraidView;->fireChangeEventForProperty(Lcom/adsdk/sdk/mraid/MraidProperty;)V

    :cond_0
    iget-object v0, p0, Lcom/adsdk/sdk/mraid/MraidDisplayController$1;->this$0:Lcom/adsdk/sdk/mraid/MraidDisplayController;

    # getter for: Lcom/adsdk/sdk/mraid/MraidDisplayController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/mraid/MraidDisplayController;->access$2(Lcom/adsdk/sdk/mraid/MraidDisplayController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
