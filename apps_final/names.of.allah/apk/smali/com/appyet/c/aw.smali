.class final Lcom/appyet/c/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/appyet/c/at;


# direct methods
.method constructor <init>(Lcom/appyet/c/at;)V
    .locals 0

    iput-object p1, p0, Lcom/appyet/c/aw;->a:Lcom/appyet/c/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/appyet/c/aw;->a:Lcom/appyet/c/at;

    invoke-static {v0}, Lcom/appyet/c/at;->d(Lcom/appyet/c/at;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appyet/c/aw;->a:Lcom/appyet/c/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appyet/c/aw;->a:Lcom/appyet/c/at;

    invoke-virtual {v0}, Lcom/appyet/c/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/appyet/c/aw;->a:Lcom/appyet/c/at;

    invoke-virtual {v0}, Lcom/appyet/c/at;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
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
