.class Lcom/alipay/android/launcher/guide/HbGuideActivity$2;
.super Ljava/lang/Object;
.source "HbGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$2;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$2;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    const-string/jumbo v1, "UC-FFC-150108-09"

    const-string/jumbo v2, "09999972"

    const-string/jumbo v3, "hbskipCoupon"

    const/4 v4, 0x1

    # invokes: Lcom/alipay/android/launcher/guide/HbGuideActivity;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$4(Lcom/alipay/android/launcher/guide/HbGuideActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 88
    iget-object v0, p0, Lcom/alipay/android/launcher/guide/HbGuideActivity$2;->this$0:Lcom/alipay/android/launcher/guide/HbGuideActivity;

    # invokes: Lcom/alipay/android/launcher/guide/HbGuideActivity;->finishActivity()V
    invoke-static {v0}, Lcom/alipay/android/launcher/guide/HbGuideActivity;->access$5(Lcom/alipay/android/launcher/guide/HbGuideActivity;)V

    .line 89
    return-void
.end method
