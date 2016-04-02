.class Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;
.super Ljava/lang/Object;
.source "AliuserRegisterCompleteIdentityActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

.field final synthetic this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 126
    const-string/jumbo v0, "UC-ZC-150512-30"

    const-string/jumbo v1, "zcloginnow"

    const-string/jumbo v2, "RegisterCompleteIdentity"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    # getter for: Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;
    invoke-static {v3}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    move-result-object v3

    # getter for: Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->c:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->access$3(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    # getter for: Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;
    invoke-static {v4}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-boolean v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->directLogin:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    # getter for: Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;
    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    # getter for: Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;
    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->mMobileNo:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->loginToken:Ljava/lang/String;

    const-string/jumbo v3, "withlogintoken"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->goLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    # getter for: Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;
    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;->this$1:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;

    # getter for: Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;
    invoke-static {v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->mMobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->goLogin(Ljava/lang/String;)V

    goto :goto_0
.end method
