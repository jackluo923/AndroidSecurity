.class Lcom/alipay/mobile/common/ui/SelectCityActivity$7;
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
    iput-object p1, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$7;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 546
    sget-object v0, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/common/ui/SelectCityActivity$7;->this$0:Lcom/alipay/mobile/common/ui/SelectCityActivity;

    sget-object v1, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentProvice:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentCity:Ljava/lang/String;

    .line 548
    sget-object v3, Lcom/alipay/mobile/common/ui/SelectCityActivity;->currentAdCode:Ljava/lang/String;

    .line 547
    # invokes: Lcom/alipay/mobile/common/ui/SelectCityActivity;->finishThisTellPrePage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/common/ui/SelectCityActivity;->access$11(Lcom/alipay/mobile/common/ui/SelectCityActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_0
    return-void
.end method
