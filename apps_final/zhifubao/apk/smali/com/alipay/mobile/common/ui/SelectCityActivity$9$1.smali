.class Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;
.super Ljava/lang/Object;
.source "SelectCityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

.field private final synthetic val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ui/SelectCityActivity$9;Lcom/alipay/mobile/common/lbs/LBSLocation;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

    iput-object p2, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;->val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;

    .line 684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;->val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$9;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$9;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 689
    sget v2, Lcom/alipay/android/phone/cityselect/R$string;->lbs_fail:I

    .line 688
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;->val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 692
    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    const-string/jumbo v1, "\u5e02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;->val$location:Lcom/alipay/mobile/common/lbs/LBSLocation;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAdCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$9$1;->this$1:Lcom/alipay/mobile/common/ui/SelectCityActivity$9;

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity$9;->access$0(Lcom/alipay/mobile/common/ui/SelectCityActivity$9;)Lcom/alipay/mobile/common/ui/SelectCityActivity;

    move-result-object v0

    # getter for: Lcom/alipay/mobile/common/ui/SelectCityActivity;->locationCityName:Lcom/alipay/mobile/commonui/widget/APTextView;
    invoke-static {v0}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$10(Lcom/alipay/mobile/common/ui/SelectCityActivity;)Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
