.class Lcom/alipay/android/launcher/guide/BillGuideActivity$4;
.super Ljava/lang/Object;
.source "BillGuideActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/guide/BillGuideActivity;

.field private final synthetic val$cloudImage:Landroid/widget/ImageView;

.field private final synthetic val$rotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/guide/BillGuideActivity;Landroid/widget/ImageView;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$4;->this$0:Lcom/alipay/android/launcher/guide/BillGuideActivity;

    iput-object p2, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$4;->val$cloudImage:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$4;->val$rotateAnimation:Landroid/view/animation/Animation;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$4;->val$cloudImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$4;->val$rotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 79
    return-void
.end method
