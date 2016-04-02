.class Lcom/alipay/mobile/common/imageworker/ImageWorker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

.field private final synthetic val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

.field private final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/imageworker/ImageWorker;Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;->this$0:Lcom/alipay/mobile/common/imageworker/ImageWorker;

    iput-object p2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;->val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    iput-object p3, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;->val$callback:Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;

    iget-object v1, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/common/imageworker/ImageWorker$1;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/imageworker/ImageWorkerCallback;->onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
