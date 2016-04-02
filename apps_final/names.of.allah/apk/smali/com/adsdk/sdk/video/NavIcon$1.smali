.class Lcom/adsdk/sdk/video/NavIcon$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adsdk/sdk/video/NavIcon;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;

    iput-object p2, p0, Lcom/adsdk/sdk/video/NavIcon$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/NavIcon$1;)Lcom/adsdk/sdk/video/NavIcon;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;

    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon$1;->val$url:Ljava/lang/String;

    # invokes: Lcom/adsdk/sdk/video/NavIcon;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/adsdk/sdk/video/NavIcon;->access$0(Lcom/adsdk/sdk/video/NavIcon;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/NavIcon$1;->this$0:Lcom/adsdk/sdk/video/NavIcon;

    # getter for: Lcom/adsdk/sdk/video/NavIcon;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/adsdk/sdk/video/NavIcon;->access$1(Lcom/adsdk/sdk/video/NavIcon;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/adsdk/sdk/video/NavIcon$1$1;

    invoke-direct {v2, p0, v0}, Lcom/adsdk/sdk/video/NavIcon$1$1;-><init>(Lcom/adsdk/sdk/video/NavIcon$1;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
