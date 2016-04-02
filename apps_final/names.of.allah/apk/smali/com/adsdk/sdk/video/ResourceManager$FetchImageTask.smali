.class Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mResourceId:I

.field mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/adsdk/sdk/video/ResourceManager;


# direct methods
.method public constructor <init>(Lcom/adsdk/sdk/video/ResourceManager;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->this$0:Lcom/adsdk/sdk/video/ResourceManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    iput p4, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mResourceId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetching: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method private fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x1

    int-to-float v5, v2

    invoke-static {v4, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x1

    int-to-float v6, v3

    invoke-static {v5, v6, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    if-ne v4, v2, :cond_0

    if-eq v1, v3, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot fetch image:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/adsdk/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->this$0:Lcom/adsdk/sdk/video/ResourceManager;

    # getter for: Lcom/adsdk/sdk/video/ResourceManager;->mResources:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/adsdk/sdk/video/ResourceManager;->access$1(Lcom/adsdk/sdk/video/ResourceManager;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mResourceId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fetched: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adsdk/sdk/Log;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->this$0:Lcom/adsdk/sdk/video/ResourceManager;

    # getter for: Lcom/adsdk/sdk/video/ResourceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/adsdk/sdk/video/ResourceManager;->access$0(Lcom/adsdk/sdk/video/ResourceManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    iget v2, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->mResourceId:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->this$0:Lcom/adsdk/sdk/video/ResourceManager;

    # getter for: Lcom/adsdk/sdk/video/ResourceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/adsdk/sdk/video/ResourceManager;->access$0(Lcom/adsdk/sdk/video/ResourceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/adsdk/sdk/video/ResourceManager$FetchImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
