.class Lcom/alipay/mobile/common/ui/SelectCityActivity$6;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 524
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 526
    sget v2, Lcom/alipay/android/phone/cityselect/R$string;->lbs_on_location:I

    .line 525
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->startLocation()V

    .line 532
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$6;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentProvice:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 530
    sget-object v3, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 529
    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->finishThisTellPrePage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$11(Lcom/alipay/mobile/common/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
