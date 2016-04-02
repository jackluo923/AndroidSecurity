.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APNormalPopDialog$OnClickPositiveListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 548
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const-string/jumbo v1, "UC-ZC-150512-08"

    const-string/jumbo v2, "zcphoneok"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->showProgress(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->mPhoneInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v1}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doSendSms(Ljava/lang/String;)V

    .line 551
    return-void
.end method
