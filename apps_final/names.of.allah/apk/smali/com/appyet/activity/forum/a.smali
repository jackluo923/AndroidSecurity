.class final Lcom/appyet/activity/forum/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/forum/ForumNewTopicActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/forum/ForumNewTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/forum/a;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/a;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->finish()V

    return-void
.end method
