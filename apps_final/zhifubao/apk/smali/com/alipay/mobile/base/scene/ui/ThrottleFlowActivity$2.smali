.class Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;
.super Ljava/lang/Object;
.source "ThrottleFlowActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;)Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    return-object v0
.end method


# virtual methods
.method public onCancelled(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$5(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    return-void
.end method

.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->loadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$5(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->throttleContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$4(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2$1;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2$1;-><init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 151
    return-void
.end method

.method public onPreLoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
