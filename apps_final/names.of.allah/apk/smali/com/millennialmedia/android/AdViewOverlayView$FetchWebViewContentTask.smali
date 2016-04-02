.class Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;
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

.field final synthetic this$0:Lcom/millennialmedia/android/AdViewOverlayView;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/AdViewOverlayView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/millennialmedia/android/HttpGetRequest;

    invoke-direct {v0}, Lcom/millennialmedia/android/HttpGetRequest;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

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

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z
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

    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->cancelVideo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->overlayActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/AdViewOverlayActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->finish()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/millennialmedia/android/MMAdImplController;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    # invokes: Lcom/millennialmedia/android/AdViewOverlayView;->removeProgressBar()V
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$200(Lcom/millennialmedia/android/AdViewOverlayView;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    # getter for: Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$400(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView$FetchWebViewContentTask;->this$0:Lcom/millennialmedia/android/AdViewOverlayView;

    # invokes: Lcom/millennialmedia/android/AdViewOverlayView;->initProgressBar()V
    invoke-static {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->access$500(Lcom/millennialmedia/android/AdViewOverlayView;)V

    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
