.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;
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
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$3;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->dismiss()V

    .line 460
    return-void
.end method
