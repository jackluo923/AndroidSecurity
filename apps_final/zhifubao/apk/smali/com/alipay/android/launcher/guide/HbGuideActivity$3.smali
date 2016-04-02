.class Lcom/alipay/android/launcher/guide/HbGuideActivity$3;
.super Ljava/lang/Object;
.source "HbGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_left:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$6(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_right:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$7(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "HbGuideActivity"

    const-string/jumbo v2, "animation = null finish guide"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # invokes: Lcom/alipay/android/launcher/guide/HbGuideActivity;->finishActivity()V
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$5(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageLeft:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$8(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageRight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$9(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageLeft:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$8(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_left:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$6(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/HbGuideActivity;->imageRight:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$9(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$3;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/HbGuideActivity;->animation_right:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$7(Lcom/alipay/android/launcher/guide/HbGuideActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
