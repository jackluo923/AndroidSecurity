.class final Lcom/appyet/activity/forum/b;
.super Lcom/appyet/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appyet/f/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

.field private b:Lcom/appyet/manager/ao;


# direct methods
.method private constructor <init>(Lcom/appyet/activity/forum/ForumNewTopicActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appyet/activity/forum/ForumNewTopicActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/activity/forum/b;-><init>(Lcom/appyet/activity/forum/ForumNewTopicActivity;)V

    return-void
.end method

.method private varargs f()Ljava/lang/Void;
    .locals 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-static {v1}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->a(Lcom/appyet/activity/forum/ForumNewTopicActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    const v2, 0x7f080113

    invoke-virtual {v1, v2}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    const v5, 0x7f080116

    invoke-virtual {v4, v5}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    iget-object v0, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    iget-object v0, v0, Lcom/appyet/activity/forum/ForumNewTopicActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    iget-wide v1, v1, Lcom/appyet/activity/forum/ForumNewTopicActivity;->b:J

    iget-object v3, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-static {v3}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->b(Lcom/appyet/activity/forum/ForumNewTopicActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-static {v4}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->c(Lcom/appyet/activity/forum/ForumNewTopicActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/appyet/manager/an;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appyet/manager/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/forum/b;->b:Lcom/appyet/manager/ao;

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-static {v0}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->a(Lcom/appyet/activity/forum/ForumNewTopicActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-static {v0}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->e(Lcom/appyet/activity/forum/ForumNewTopicActivity;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-static {v0}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->d(Lcom/appyet/activity/forum/ForumNewTopicActivity;)V

    iget-object v0, p0, Lcom/appyet/activity/forum/b;->b:Lcom/appyet/manager/ao;

    iget-boolean v0, v0, Lcom/appyet/manager/ao;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-virtual {v0, v2}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->setResult(I)V

    iget-object v0, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Lcom/appyet/activity/forum/ForumNewTopicActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/forum/b;->b:Lcom/appyet/manager/ao;

    iget-object v1, v1, Lcom/appyet/manager/ao;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/activity/forum/b;->b:Lcom/appyet/manager/ao;

    iget-object v1, v1, Lcom/appyet/manager/ao;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/forum/b;->b:Lcom/appyet/manager/ao;

    iget-object v1, v1, Lcom/appyet/manager/ao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/appyet/activity/forum/b;->a:Lcom/appyet/activity/forum/ForumNewTopicActivity;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/appyet/activity/forum/b;->f()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic c()V
    .locals 0

    return-void
.end method
