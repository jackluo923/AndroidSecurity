.class final Lcom/appyet/activity/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/PodcastActionActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/PodcastActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/v;->a:Lcom/appyet/activity/PodcastActionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/v;->a:Lcom/appyet/activity/PodcastActionActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/PodcastActionActivity;->finish()V

    return-void
.end method
