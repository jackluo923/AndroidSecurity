.class final Lcom/appyet/activity/forum/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/appyet/activity/forum/ForumReplyPostActivity;


# direct methods
.method constructor <init>(Lcom/appyet/activity/forum/ForumReplyPostActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/forum/c;->a:Lcom/appyet/activity/forum/ForumReplyPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/c;->a:Lcom/appyet/activity/forum/ForumReplyPostActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->finish()V

    return-void
.end method
