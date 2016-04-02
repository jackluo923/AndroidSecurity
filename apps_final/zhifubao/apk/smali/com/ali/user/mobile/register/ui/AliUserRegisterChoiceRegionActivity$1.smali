.class Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity$1;
.super Ljava/lang/Object;
.source "AliUserRegisterChoiceRegionActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APBladeView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    :goto_0
    const/16 v0, 0x41

    if-ge v1, v0, :cond_1

    .line 95
    :cond_0
    :goto_1
    return-void

    .line 85
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;

    # getter for: Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->c:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;

    # getter for: Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->c:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterChoiceRegionActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APPinnedHeaderListView;->setSelection(I)V

    goto :goto_1

    .line 84
    :cond_2
    add-int/lit8 v0, v1, -0x1

    int-to-char v0, v0

    move v1, v0

    goto :goto_0
.end method
