.class Lcom/alipay/mobile/common/imageworker/ImageWorker$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

.field private final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$imageView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$6;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$6;->val$imageView:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$6;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$6;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$6;->val$imageView:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$6;->val$drawable:Landroid/graphics/drawable/Drawable;

    # invokes: Lcom/alipay/mobile/common/imageworker/ImageWorker;->setBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/imageworker/ImageWorker;->access$10(Lcom/alipay/mobile/common/imageworker/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
