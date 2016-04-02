.class Lcom/alipay/mobile/common/imageworker/ImageWorker$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

.field private final synthetic val$imageView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$5;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$5;->val$imageView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$5;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$5;->val$imageView:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$5;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    # getter for: Lcom/alipay/mobile/common/imageworker/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$8(Lcom/alipay/mobile/common/imageworker/ImageWorker;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/common/imageworker/ImageWorker;->setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$9(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
