.class Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;
.super Ljava/lang/Object;
.source "AliuserRegisterCompleteIdentityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->dismissProgress()V

    .line 105
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 109
    :cond_0
    const-string/jumbo v0, "AliuserRegisterCompleteIdentityActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u9a8c\u8bc1\u7528\u6237\u8865\u5168\u7684\u4fe1\u606f\u7ed3\u679c\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget v3, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->resultStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v3, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->memo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->resultStatus:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 111
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->showOptionalInfo:Ljava/lang/String;

    .line 112
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->agreementURL:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-boolean v3, v3, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->optionStatus:Z

    .line 111
    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->goSetPassowrd(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->resultStatus:I

    const/16 v2, 0xcf

    if-ne v0, v2, :cond_2

    .line 114
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->memo:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$1;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$1;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->resultStatus:I

    const/16 v2, 0xbfa

    if-ne v0, v2, :cond_4

    .line 122
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    iget-object v3, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;->ButtonFstMemo:Ljava/lang/String;

    .line 123
    :goto_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v2, v2, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->memo:Ljava/lang/String;

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;

    iget-object v5, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    invoke-direct {v4, p0, v5}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2$2;-><init>(Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;)V

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 122
    :cond_3
    const-string/jumbo v3, "\u76f4\u63a5\u767b\u5f55"

    goto :goto_1

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity$2;->a:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;

    iget-object v1, v1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/VerifyIDCardRes;->memo:Ljava/lang/String;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/register/ui/AliuserRegisterCompleteIdentityActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
