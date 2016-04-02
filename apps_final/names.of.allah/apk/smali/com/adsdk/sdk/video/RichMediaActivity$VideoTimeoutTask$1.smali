.class Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
