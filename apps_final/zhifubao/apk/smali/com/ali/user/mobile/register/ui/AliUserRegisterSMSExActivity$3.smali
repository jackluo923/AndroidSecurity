.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 110
    const-string/jumbo v0, "UC-ZC-150512-11"

    const-string/jumbo v1, "zcsmsback"

    const-string/jumbo v2, "RegisterSMS"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    # getter for: Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;
    invoke-static {v3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    # getter for: Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;
    invoke-static {v4}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->access$7(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->finish()V

    .line 112
    return-void
.end method
