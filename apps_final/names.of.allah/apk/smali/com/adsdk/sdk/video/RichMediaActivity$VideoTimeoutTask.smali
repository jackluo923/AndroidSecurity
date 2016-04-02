.class Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;
.super Ljava/util/TimerTask;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/adsdk/sdk/video/RichMediaActivity;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/RichMediaActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->this$0:Lcom/adsdk/sdk/video/RichMediaActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p2, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$0(Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "###########TRACKING VIDEO TIMEOUT"

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask$1;

    invoke-direct {v1, p0}, Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask$1;-><init>(Lcom/adsdk/sdk/video/RichMediaActivity$VideoTimeoutTask;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
