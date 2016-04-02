.class public Lcom/appyet/activity/forum/ForumReplyPostActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;


# instance fields
.field protected a:Lcom/appyet/context/ApplicationContext;

.field protected b:J

.field private c:Landroid/widget/EditText;

.field private d:Lcom/appyet/data/Module;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/appyet/a/a/d;

.field private h:Lcom/appyet/a/a/a;

.field private i:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->h:Lcom/appyet/a/a/a;

    return-void
.end method

.method static synthetic a(Lcom/appyet/activity/forum/ForumReplyPostActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/appyet/activity/forum/ForumReplyPostActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/appyet/activity/forum/ForumReplyPostActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/appyet/activity/forum/ForumReplyPostActivity;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

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

.method static synthetic e(Lcom/appyet/activity/forum/ForumReplyPostActivity;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->i:Landroid/app/ProgressDialog;

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
.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08005f

    invoke-virtual {p0, v1}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080060

    invoke-virtual {p0, v1}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080061

    invoke-virtual {p0, v1}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/appyet/activity/forum/c;

    invoke-direct {v2, p0}, Lcom/appyet/activity/forum/c;-><init>(Lcom/appyet/activity/forum/ForumReplyPostActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080062

    invoke-virtual {p0, v1}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030047

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/appyet/context/ApplicationContext;

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->a:Lcom/appyet/context/ApplicationContext;

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "ARG_MODULE_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->b:J

    iget-object v1, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v1, v1, Lcom/appyet/context/ApplicationContext;->h:Lcom/appyet/manager/d;

    iget-wide v2, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/appyet/manager/d;->g(J)Lcom/appyet/data/Module;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->d:Lcom/appyet/data/Module;

    const-string v1, "ARG_FORUM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->e:Ljava/lang/String;

    const-string v1, "ARG_TOPIC_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-wide v1, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/an;->a(J)Lcom/appyet/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->g:Lcom/appyet/a/a/d;

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->g:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appyet/a/a/a;

    iget-object v2, v0, Lcom/appyet/a/a/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->h:Lcom/appyet/a/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const v0, 0x7f0a009a

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->c:Landroid/widget/EditText;

    const v0, 0x7f0800f4

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->setTitle(I)V

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->g:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->g:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->e:Lcom/appyet/a/a/f;

    iget-boolean v0, v0, Lcom/appyet/a/a/f;->a:Z

    if-nez v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->g:Lcom/appyet/a/a/d;

    iget-object v0, v0, Lcom/appyet/a/a/d;->d:Lcom/appyet/a/a/b;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->a:Lcom/appyet/context/ApplicationContext;

    const-class v2, Lcom/appyet/activity/forum/ForumSignInActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ARG_MODULE_ID"

    iget-wide v2, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->a:Lcom/appyet/context/ApplicationContext;

    invoke-virtual {v1, v0}, Lcom/appyet/context/ApplicationContext;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/appyet/activity/forum/ForumReplyPostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/appyet/activity/forum/ForumReplyPostActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    new-instance v0, Lcom/appyet/activity/forum/d;

    invoke-direct {v0, p0, v2}, Lcom/appyet/activity/forum/d;-><init>(Lcom/appyet/activity/forum/ForumReplyPostActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/appyet/activity/forum/d;->a([Ljava/lang/Object;)Lcom/appyet/f/a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a010c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method
