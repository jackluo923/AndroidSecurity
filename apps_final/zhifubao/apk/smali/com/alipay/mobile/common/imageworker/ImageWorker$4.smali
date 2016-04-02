.class Lcom/alipay/mobile/common/imageworker/ImageWorker$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

.field private final synthetic val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

.field private final synthetic val$height:I

.field private final synthetic val$imageView:Landroid/view/View;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;IILandroid/view/View;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$path:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$width:I

    iput p4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$height:I

    iput-object p5, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$imageView:Landroid/view/View;

    iput-object p6, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$path:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$width:I

    iget v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$height:I

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    # getter for: Lcom/alipay/mobile/common/imageworker/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v3}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$5(Lcom/alipay/mobile/common/imageworker/ImageWorker;)Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->createBitmap(Ljava/lang/Object;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$imageView:Landroid/view/View;

    iget-object v4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    # invokes: Lcom/alipay/mobile/common/imageworker/ImageWorker;->renderImageView(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    invoke-static {v1, v2, v3, v0, v4}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$0(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$path:Ljava/lang/String;

    const/16 v2, 0x194

    const-string/jumbo v3, "\u672c\u5730sd\u5361\u52a0\u8f7d\u56fe\u7247\u51fa\u9519"

    iget-object v4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    # invokes: Lcom/alipay/mobile/common/imageworker/ImageWorker;->failure(Ljava/lang/String;ILjava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$6(Lcom/alipay/mobile/common/imageworker/ImageWorker;Ljava/lang/String;ILjava/lang/String;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$4;->val$imageView:Landroid/view/View;

    # invokes: Lcom/alipay/mobile/common/imageworker/ImageWorker;->setDefaultImage(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$7(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;)V

    goto :goto_0
.end method
