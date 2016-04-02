.class Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;
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
    iput-object p1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;)Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    return-object v0
.end method


# virtual methods
.method public onCancelled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->throttleContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$4(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1$1;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1$1;-><init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method

.method public onPreLoad(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method
