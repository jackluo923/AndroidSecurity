.class Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;


# direct methods
.method private constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->a:Z

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;Lcom/taobao/android/ssologinwrapper/SsoLogin$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;-><init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$200(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$300(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$102(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$500(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$300(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$402(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    monitor-enter p0
    :try_end_0
    .catch Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->a:Z

    iget-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->b:Z

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catch Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/taobao/android/sso/SsoManager$UnauthorizedAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    goto :goto_0
.end method

.method public wait4Finsh()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->b:Z

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
