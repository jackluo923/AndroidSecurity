.class Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private baseUrl:Ljava/lang/String;

.field private cancelVideo:Z

.field final synthetic this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/CachedVideoPlayerActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/HttpGetRequest;->get(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HttpGetRequest;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->cancelVideo:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->cancelVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    # getter for: Lcom/millennialmedia/android/CachedVideoPlayerActivity;->mWebView:Lcom/millennialmedia/android/MMWebView;
    invoke-static {v0}, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->access$100(Lcom/millennialmedia/android/CachedVideoPlayerActivity;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    iget-object v2, v2, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->activity:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, v1, v2}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/millennialmedia/android/CachedVideoPlayerActivity$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/CachedVideoPlayerActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/CachedVideoPlayerActivity;->hasLoadedCompletionUrl:Z

    :cond_1
    return-void
.end method
