.class public Lcom/appyet/activity/forum/ForumSignInActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;


# instance fields
.field protected a:Lcom/appyet/context/ApplicationContext;

.field protected b:J

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Lcom/appyet/data/Module;

.field private h:Lcom/appyet/a/a/d;

.field private i:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/activity/forum/ForumSignInActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/activity/forum/ForumSignInActivity;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/appyet/activity/forum/ForumSignInActivity;)Lcom/appyet/a/a/d;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->h:Lcom/appyet/a/a/d;

    return-object v0
.end method

.method static synthetic e(Lcom/appyet/activity/forum/ForumSignInActivity;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/appyet/activity/forum/ForumSignInActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->i:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/forum/ForumSignInActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->a:Lcom/appyet/context/ApplicationContext;

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/forum/ForumSignInActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MODULE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->b:J

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-wide v1, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/d;->g(J)Lcom/appyet/data/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->g:Lcom/appyet/data/Module;

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-wide v1, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->h:Lcom/appyet/a/a/d;

    const v0, 0x7f0a00a2

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f0a00a3

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->d:Landroid/widget/EditText;

    const v0, 0x7f0a00a5

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0a00a4

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->e:Landroid/widget/Button;

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/appyet/activity/forum/e;

    invoke-direct {v1, p0}, Lcom/appyet/activity/forum/e;-><init>(Lcom/appyet/activity/forum/ForumSignInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumSignInActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/appyet/activity/forum/f;

    invoke-direct {v1, p0}, Lcom/appyet/activity/forum/f;-><init>(Lcom/appyet/activity/forum/ForumSignInActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08010f

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumSignInActivity;->setTitle(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/activity/forum/ForumSignInActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method
