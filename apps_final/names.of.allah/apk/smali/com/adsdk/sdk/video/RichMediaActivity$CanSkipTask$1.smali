.class Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask$1;->this$1:Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->mActivity:Lcom/adsdk/sdk/video/RichMediaActivity;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;->access$0(Lcom/adsdk/sdk/video/RichMediaActivity$CanSkipTask;)Lcom/adsdk/sdk/video/RichMediaActivity;

    move-result-object v0

    # getter for: Lcom/adsdk/sdk/video/RichMediaActivity;->mSkipButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$12(Lcom/adsdk/sdk/video/RichMediaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
