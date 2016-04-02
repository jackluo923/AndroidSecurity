.class Lcom/adsdk/sdk/video/MediaController$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/MediaController;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/MediaController$2;->this$0:Lcom/adsdk/sdk/video/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/MediaController$2;->this$0:Lcom/adsdk/sdk/video/MediaController;

    invoke-virtual {v0}, Lcom/adsdk/sdk/video/MediaController;->replay()V

    return-void
.end method
