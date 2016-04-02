.class Lcom/alipay/android/launcher/guide/StartGuideActivity$1;
.super Ljava/lang/Object;
.source "StartGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/guide/StartGuideActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/guide/StartGuideActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/StartGuideActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/StartGuideActivity;

    # getter for: Lcom/alipay/android/launcher/guide/StartGuideActivity;->canClick:Z
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->access$2(Lcom/alipay/android/launcher/guide/StartGuideActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/StartGuideActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->access$3(Lcom/alipay/android/launcher/guide/StartGuideActivity;Z)V

    .line 56
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/StartGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/StartGuideActivity;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/guide/StartGuideActivity;->callMain()V

    goto :goto_0
.end method
