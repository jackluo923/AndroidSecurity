.class Lcom/alipay/mobile/common/imageworker/ImageWorker$2;
.super Lcom/alipay/mobile/common/imageworker/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/imageworker/DownloadListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

.field private final synthetic val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

.field private final synthetic val$imageViewRef:Ljava/lang/ref/WeakReference;

.field private final synthetic val$plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;Ljava/lang/ref/WeakReference;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iput-object p4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->val$plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

    iput-object p5, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->val$imageViewRef:Ljava/lang/ref/WeakReference;

    iput-object p6, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/imageworker/DownloadListener;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    return-void
.end method


# virtual methods
.method public onPostExecute(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->getRawPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->val$plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->val$plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;->getSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->val$imageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    # invokes: Lcom/alipay/mobile/common/imageworker/ImageWorker;->renderImageView(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    invoke-static {v2, v1, v0, p2, v3}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$0(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/imageworker/ImageWorker$2;->onPostExecute(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
