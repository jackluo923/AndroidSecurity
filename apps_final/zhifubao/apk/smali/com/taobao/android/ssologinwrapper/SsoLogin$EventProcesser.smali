.class Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

.field final synthetic this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;


# direct methods
.method public constructor <init>(Lcom/taobao/android/ssologinwrapper/SsoLogin;ILcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->a:I

    iput-object p3, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->b:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->b:Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin$LoginStatusFetcher;->wait4Finsh()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;
    invoke-static {v3}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$200(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$300(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    iget-object v3, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;
    invoke-static {v3}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$500(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$300(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->a:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->a:I

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->d:I
    invoke-static {v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$600(Lcom/taobao/android/ssologinwrapper/SsoLogin;)I

    move-result v1

    if-ne v0, v1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$700(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Lcom/taobao/android/sso/SsoStatesChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    aget-object v1, p1, v3

    # setter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$102(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    aget-object v1, p1, v4

    # setter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$402(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;
    invoke-static {v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$100(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$700(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Lcom/taobao/android/sso/SsoStatesChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$200(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/android/sso/SsoStatesChangedListener;->onSsoLogin(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;
    invoke-static {v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$400(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$700(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Lcom/taobao/android/sso/SsoStatesChangedListener;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$500(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/android/sso/SsoStatesChangedListener;->onSsoLogin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    aget-object v1, p1, v3

    # setter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$102(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    aget-object v1, p1, v4

    # setter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$402(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$100(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$700(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Lcom/taobao/android/sso/SsoStatesChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;
    invoke-static {v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$100(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->g:Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$200(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/android/sso/SsoStatesChangedListener;->onSsoLogout(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    aget-object v2, p1, v3

    # setter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->i:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$102(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    aget-object v2, p1, v4

    # setter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$402(Lcom/taobao/android/ssologinwrapper/SsoLogin;Ljava/lang/String;)Ljava/lang/String;

    throw v0

    :cond_5
    const/4 v0, 0x1

    :try_start_3
    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$400(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->b:Lcom/taobao/android/sso/SsoStatesChangedListener;
    invoke-static {v0}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$700(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Lcom/taobao/android/sso/SsoStatesChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->h:Ljava/lang/String;
    invoke-static {v1}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$400(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/ssologinwrapper/SsoLogin$EventProcesser;->this$0:Lcom/taobao/android/ssologinwrapper/SsoLogin;

    # getter for: Lcom/taobao/android/ssologinwrapper/SsoLogin;->f:Ljava/lang/String;
    invoke-static {v2}, Lcom/taobao/android/ssologinwrapper/SsoLogin;->access$500(Lcom/taobao/android/ssologinwrapper/SsoLogin;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/android/sso/SsoStatesChangedListener;->onSsoLogout(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method
