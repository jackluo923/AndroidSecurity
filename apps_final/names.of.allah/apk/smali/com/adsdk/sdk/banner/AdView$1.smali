.class Lcom/adsdk/sdk/banner/AdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/banner/AdView;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/banner/AdView;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->showContent()V
    invoke-static {v0}, Lcom/adsdk/sdk/banner/AdView;->access$0(Lcom/adsdk/sdk/banner/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/adsdk/sdk/banner/AdView$1;->this$0:Lcom/adsdk/sdk/banner/AdView;

    # invokes: Lcom/adsdk/sdk/banner/AdView;->notifyLoadAdFailed(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/adsdk/sdk/banner/AdView;->access$1(Lcom/adsdk/sdk/banner/AdView;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
