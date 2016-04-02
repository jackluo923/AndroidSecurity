.class Lcom/adsdk/sdk/video/SDKVideoView$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/adsdk/sdk/video/SDKVideoView$8;

.field private final synthetic val$l:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

.field private final synthetic val$time:I


# direct methods
.method constructor <init>(Lcom/adsdk/sdk/video/SDKVideoView$8;Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->this$1:Lcom/adsdk/sdk/video/SDKVideoView$8;

    iput-object p2, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->val$l:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    iput p3, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->val$l:Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;

    iget v1, p0, Lcom/adsdk/sdk/video/SDKVideoView$8$1;->val$time:I

    invoke-interface {v0, v1}, Lcom/adsdk/sdk/video/SDKVideoView$OnTimeEventListener;->onTimeEvent(I)V

    return-void
.end method
