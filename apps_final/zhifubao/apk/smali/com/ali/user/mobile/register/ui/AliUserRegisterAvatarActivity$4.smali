.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->dismiss()V

    .line 472
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->sd_card_unavailable:I

    invoke-virtual {v1, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 469
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->finish()V

    goto :goto_0
.end method
