.class final Lcom/appyet/activity/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/VideoPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/ah;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/ah;->a:Lcom/appyet/activity/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/VideoPlayerActivity;->finish()V

    return-void
.end method
