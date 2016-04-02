.class Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2$1;
.super Ljava/lang/Object;
.source "ThrottleFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2$1;->this$1:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;

    iput-object p2, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2$1;->this$1:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->access$0(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;)Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$5(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2$1;->this$1:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->access$0(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;)Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->iconImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$6(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    return-void
.end method
