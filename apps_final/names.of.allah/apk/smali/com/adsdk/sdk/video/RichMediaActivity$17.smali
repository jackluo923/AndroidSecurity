.class Lcom/adsdk/sdk/video/RichMediaActivity$17;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adsdk/sdk/AdListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClicked()V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$17;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-static {v0}, Lcom/adsdk/sdk/video/RichMediaActivity;->access$3(Lcom/adsdk/sdk/video/RichMediaActivity;)V

    return-void
.end method

.method public adClosed(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0

    return-void
.end method

.method public adLoadSucceeded(Lcom/adsdk/sdk/Ad;)V
    .locals 0

    return-void
.end method

.method public adShown(Lcom/adsdk/sdk/Ad;Z)V
    .locals 0

    return-void
.end method

.method public noAdFound()V
    .locals 0

    return-void
.end method
