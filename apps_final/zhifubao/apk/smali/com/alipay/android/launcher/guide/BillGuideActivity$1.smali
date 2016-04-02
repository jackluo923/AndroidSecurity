.class Lcom/alipay/android/launcher/guide/BillGuideActivity$1;
.super Ljava/lang/Object;
.source "BillGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/guide/BillGuideActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/guide/BillGuideActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/BillGuideActivity;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/BillGuideActivity$1;->this$0:Lcom/alipay/android/launcher/guide/BillGuideActivity;

    # invokes: Lcom/alipay/android/launcher/guide/BillGuideActivity;->finishActivity()V
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/BillGuideActivity;->access$4(Lcom/alipay/android/launcher/guide/BillGuideActivity;)V

    .line 43
    return-void
.end method
