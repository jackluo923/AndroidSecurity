.class Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1$1;
.super Ljava/lang/Object;
.source "ThrottleFlowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1$1;->this$1:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;

    iput-object p2, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 110
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 111
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1$1;->this$1:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;->this$0:Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;
    invoke-static {v1}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;->access$0(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity$1;)Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;

    move-result-object v1

    # getter for: Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->throttleContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;->access$4(Lcom/alipay/mobile/base/scene/ui/ThrottleFlowActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    return-void
.end method
