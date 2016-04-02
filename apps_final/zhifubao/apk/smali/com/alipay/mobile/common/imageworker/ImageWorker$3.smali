.class Lcom/alipay/mobile/common/imageworker/ImageWorker$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

.field private final synthetic val$height:I

.field private final synthetic val$listener:Lcom/alipay/mobile/common/imageworker/DownloadListener;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/DownloadListener;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$listener:Lcom/alipay/mobile/common/imageworker/DownloadListener;

    iput p4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$width:I

    iput p5, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$height:I

    iput-object p6, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    # getter for: Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpTaskList:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$1(Lcom/alipay/mobile/common/imageworker/ImageWorker;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$path:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/alipay/mobile/common/imageworker/ImageWorker;->httpInvoker:Lcom/alipay/mobile/common/imageworker/HttpInvoker;
    invoke-static {}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$2()Lcom/alipay/mobile/common/imageworker/HttpInvoker;

    move-result-object v9

    iget-object v10, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$path:Ljava/lang/String;

    iget-object v11, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$listener:Lcom/alipay/mobile/common/imageworker/DownloadListener;

    new-instance v0, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    # getter for: Lcom/alipay/mobile/common/imageworker/ImageWorker;->diskCache:Lcom/alipay/mobile/common/cache/disk/DiskCache;
    invoke-static {v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$3(Lcom/alipay/mobile/common/imageworker/ImageWorker;)Lcom/alipay/mobile/common/cache/disk/DiskCache;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    # getter for: Lcom/alipay/mobile/common/imageworker/ImageWorker;->cachePeriod:I
    invoke-static {v3}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$4(Lcom/alipay/mobile/common/imageworker/ImageWorker;)I

    move-result v3

    int-to-long v3, v3

    iget-object v5, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$path:Ljava/lang/String;

    iget v6, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$width:I

    iget v7, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$height:I

    iget-object v8, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$3;->val$plugin:Lcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;

    invoke-direct/range {v0 .. v8}, Lcom/alipay/mobile/common/imageworker/BitmapDataProcessor;-><init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Lcom/alipay/mobile/common/cache/disk/DiskCache;JLjava/lang/String;IILcom/alipay/mobile/common/imageworker/plugin/ImageWorkerPlugin;)V

    invoke-virtual {v9, v10, v11, v0}, Lcom/alipay/mobile/common/imageworker/HttpInvoker;->loadHttp(Ljava/lang/String;Lcom/alipay/mobile/common/imageworker/DownloadListener;Lcom/alipay/mobile/common/imageworker/HttpDataProcessor;)Lcom/alipay/mobile/common/imageworker/HttpCallback;

    return-void
.end method
