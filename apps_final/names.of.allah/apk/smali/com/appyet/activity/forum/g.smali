.class final Lcom/appyet/activity/forum/g;
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
.field final synthetic a:Lcom/appyet/activity/forum/ForumSignInActivity;

.field private b:Lcom/appyet/manager/ao;


# direct methods
.method private constructor <init>(Lcom/appyet/activity/forum/ForumSignInActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appyet/activity/forum/ForumSignInActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/activity/forum/g;-><init>(Lcom/appyet/activity/forum/ForumSignInActivity;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->e(Lcom/appyet/activity/forum/ForumSignInActivity;)V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->c(Lcom/appyet/activity/forum/ForumSignInActivity;)V

    iget-object v0, p0, Lcom/appyet/activity/forum/g;->b:Lcom/appyet/manager/ao;

    iget-boolean v0, v0, Lcom/appyet/manager/ao;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    iget-object v0, v0, Lcom/appyet/activity/forum/ForumSignInActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v1}, Lcom/appyet/activity/forum/ForumSignInActivity;->d(Lcom/appyet/activity/forum/ForumSignInActivity;)Lcom/appyet/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v2}, Lcom/appyet/activity/forum/ForumSignInActivity;->a(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->a(Lcom/appyet/a/a/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    iget-object v0, v0, Lcom/appyet/activity/forum/ForumSignInActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->d:Lcom/appyet/manager/bp;

    iget-object v1, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v1}, Lcom/appyet/activity/forum/ForumSignInActivity;->d(Lcom/appyet/activity/forum/ForumSignInActivity;)Lcom/appyet/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v2}, Lcom/appyet/activity/forum/ForumSignInActivity;->b(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/bp;->b(Lcom/appyet/a/a/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-virtual {v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Lcom/appyet/activity/forum/ForumSignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/activity/forum/g;->b:Lcom/appyet/manager/ao;

    iget-object v1, v1, Lcom/appyet/manager/ao;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/appyet/activity/forum/g;->b:Lcom/appyet/manager/ao;

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

    iget-object v1, p0, Lcom/appyet/activity/forum/g;->b:Lcom/appyet/manager/ao;

    iget-object v1, v1, Lcom/appyet/manager/ao;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    iget-object v0, v0, Lcom/appyet/activity/forum/ForumSignInActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    iget-wide v1, v1, Lcom/appyet/activity/forum/ForumSignInActivity;->b:J

    iget-object v3, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v3}, Lcom/appyet/activity/forum/ForumSignInActivity;->a(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/appyet/activity/forum/g;->a:Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-static {v4}, Lcom/appyet/activity/forum/ForumSignInActivity;->b(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/appyet/manager/an;->a(JLjava/lang/String;Ljava/lang/String;)Lcom/appyet/manager/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/forum/g;->b:Lcom/appyet/manager/ao;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic c()V
    .locals 0

    return-void
.end method
