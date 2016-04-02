.class Lcom/alipay/mobile/common/ui/SelectCityActivity$9$2;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity$9;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$2;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

    .line 705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$2;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$9;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$2;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$9;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 709
    sget v2, Lcom/alipay/android/phone/cityselect/R$string;->lbs_fail:I

    .line 708
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    return-void
.end method
