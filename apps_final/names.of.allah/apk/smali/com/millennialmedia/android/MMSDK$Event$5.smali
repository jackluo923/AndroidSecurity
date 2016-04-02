.class final Lcom/millennialmedia/android/MMSDK$Event$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

.field final synthetic val$error:Lcom/millennialmedia/android/MMException;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
    .locals 0

    iput-object p1, p0, Lcom/millennialmedia/android/MMSDK$Event$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iput-object p2, p0, Lcom/millennialmedia/android/MMSDK$Event$5;->val$error:Lcom/millennialmedia/android/MMException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/millennialmedia/android/MMSDK$Event$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMSDK$Event$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMSDK$Event$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->requestListener:Lcom/millennialmedia/android/RequestListener;

    iget-object v1, p0, Lcom/millennialmedia/android/MMSDK$Event$5;->val$adImpl:Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v1

    iget-object v2, p0, Lcom/millennialmedia/android/MMSDK$Event$5;->val$error:Lcom/millennialmedia/android/MMException;

    invoke-interface {v0, v1, v2}, Lcom/millennialmedia/android/RequestListener;->requestFailed(Lcom/millennialmedia/android/MMAd;Lcom/millennialmedia/android/MMException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Exception raised in your MMAdListener: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMSDK$Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
