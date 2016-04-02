.class final Lcom/appyet/c/a/h;
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
.field final synthetic a:Lcom/appyet/c/a/a;

.field private b:Landroid/app/ProgressDialog;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/appyet/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/a/h;->a:Lcom/appyet/c/a/a;

    invoke-direct {p0}, Lcom/appyet/f/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appyet/c/a/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/appyet/c/a/h;-><init>(Lcom/appyet/c/a/a;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/appyet/c/a/h;->a:Lcom/appyet/c/a/a;

    invoke-virtual {v1}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/appyet/c/a/h;->a:Lcom/appyet/c/a/a;

    const v2, 0x7f080085

    invoke-virtual {v1, v2}, Lcom/appyet/c/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

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

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/a/h;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-boolean v0, p0, Lcom/appyet/c/a/h;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/a/h;->a:Lcom/appyet/c/a/a;

    invoke-virtual {v0}, Lcom/appyet/c/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/appyet/c/a/h;->a:Lcom/appyet/c/a/a;

    const v2, 0x7f080046

    invoke-virtual {v1, v2}, Lcom/appyet/c/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/appyet/c/a/h;->a:Lcom/appyet/c/a/a;

    iget-object v0, v0, Lcom/appyet/c/a/a;->a:Lcom/appyet/context/ApplicationContext;

    iget-object v0, v0, Lcom/appyet/context/ApplicationContext;->p:Lcom/appyet/manager/an;

    iget-object v1, p0, Lcom/appyet/c/a/h;->a:Lcom/appyet/c/a/a;

    iget-wide v1, v1, Lcom/appyet/c/a/a;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/appyet/manager/an;->c(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appyet/c/a/h;->c:Z

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final bridge synthetic c()V
    .locals 0

    return-void
.end method
