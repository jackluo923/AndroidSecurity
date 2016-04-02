.class public Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;
.super Lcom/ali/user/mobile/sms/ui/SmsActivity;
.source "AliUserRegisterSMSExActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_sms_register"
.end annotation


# instance fields
.field protected mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "smssend_title"
    .end annotation
.end field

.field protected mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

.field protected mobileNoTv:Landroid/widget/TextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "mobileNo"
    .end annotation
.end field

.field protected smsendView:Landroid/widget/LinearLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "smsend_ex_view"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->closeInputMethod(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 106
    const-string/jumbo v2, "\u9a8c\u8bc1\u7801\u77ed\u4fe1\u53ef\u80fd\u7565\u6709\u5ef6\u8fdf\uff0c\u786e\u5b9a\u53d6\u6d88\u5e76\u91cd\u65b0\u5f00\u59cb\uff1f"

    const-string/jumbo v3, "\u8fd4\u56de"

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$3;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    const-string/jumbo v5, "\u7b49\u5f85"

    move-object v0, p0

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->dismissProgress()V

    .line 142
    if-eqz p1, :cond_2

    .line 143
    const-string/jumbo v0, "AliUserRegisterSMSExActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u53d1\u9001\u77ed\u4fe1\u6821\u9a8c\u7801\u7ed3\u679c\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-boolean v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->success:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {p2}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onSuccess()V

    .line 147
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startAutoReadSms()V

    .line 163
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->code:Ljava/lang/String;

    const-string/jumbo v2, "207"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$4;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$4;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p1, Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;->msg:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->toast(Ljava/lang/String;I)V

    .line 158
    :cond_2
    invoke-interface {p2}, Lcom/alipay/mobile/commonui/widget/SendResultCallback;->onFail()V

    goto :goto_0
.end method

.method protected afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    .locals 7
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->dismissProgress()V

    .line 215
    if-nez p1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string/jumbo v0, "AliUserRegisterSMSExActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6821\u9a8c\u77ed\u4fe1\u6821\u9a8c\u7801\u7ed3\u679c\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->memo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",\u652f\u4ed8\u5bc6\u7801\u7c7b\u578b:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->simplePassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 221
    const-class v0, Lcom/ali/user/mobile/register/ui/AliuserRegisterSetSixPasswordActivity_;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "showOptionalInfo"

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->showOptionalInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "agreementURL"

    iget-object v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->agreementURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "optionStatus"

    iget-boolean v3, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->optionStatus:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v0, "token"

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->token:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "mobile_for_sms"

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "from_register"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->finish()V

    goto :goto_0

    .line 223
    :cond_1
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v2, 0xbbf

    if-ne v0, v2, :cond_2

    .line 224
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->h5Url:Ljava/lang/String;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx_;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "UrlKey"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "token"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "ShowCloseButton"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startActivity(Landroid/content/Intent;)V

    .line 225
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->finish()V

    goto/16 :goto_0

    .line 226
    :cond_2
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v2, 0xcf

    if-ne v0, v2, :cond_3

    .line 227
    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->memo:Ljava/lang/String;

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$5;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$5;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    move-object v0, p0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 234
    :cond_3
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v1, 0xbf7

    if-eq v0, v1, :cond_4

    .line 235
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v1, 0xbf8

    if-eq v0, v1, :cond_4

    .line 236
    iget v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    const/16 v1, 0xbf9

    if-ne v0, v1, :cond_5

    .line 237
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ali/user/mobile/register/ui/AliuserRegisterExistUserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "mobile_for_sms"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "regionNo"

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->regionNo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "flag"

    iget v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->resultStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "direct_login"

    iget-boolean v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->directLogin:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "login_token"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->loginToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "memo"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->memo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "aliuser_h5url"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->h5Url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "same_user_info"

    iget-object v2, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->existUserInfo:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/ExistUserInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startActivity(Landroid/content/Intent;)V

    .line 238
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->finish()V

    goto/16 :goto_0

    .line 240
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;->memo:Ljava/lang/String;

    const/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected afterViews()V
    .locals 5

    .prologue
    .line 67
    invoke-super {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->afterViews()V

    .line 68
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mRegisterTitle:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$1;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->regionNo:Ljava/lang/String;

    const-string/jumbo v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNoTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "+86 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/ali/user/mobile/utils/StringUtil;->displayWithComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_0
    :goto_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 88
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->smsForMobileTipEx:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$color;->checkCodeStringColor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 90
    const/4 v2, 0x7

    const/16 v3, 0xa

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mSmsMobileTip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->smsendView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$2;-><init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->startAutoReadSms()V

    .line 104
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNoTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->regionNo:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected doVerifySms(Ljava/lang/String;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 185
    const-string/jumbo v0, "AliUserRegisterSMSExActivity"

    const-string/jumbo v1, "\u6821\u9a8c\u77ed\u4fe1\u6821\u9a8c\u7801"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/service/UserRegisterService;->setMobileNo(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/ali/user/mobile/service/UserRegisterService;->verifyMobileAndRegister(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->dismissProgress()V

    .line 192
    throw v0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 171
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->nextStep:I

    if-ne v0, v1, :cond_0

    .line 172
    const-string/jumbo v0, "UC-ZC-150512-13"

    const-string/jumbo v1, "zcsmsnext"

    const-string/jumbo v2, "RegisterSMS"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->showProgress(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->doVerifySms(Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 63
    return-void
.end method

.method protected sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 5

    .prologue
    .line 121
    const-string/jumbo v0, "AliUserRegisterSMSExActivity"

    const-string/jumbo v1, "\u53d1\u9001\u77ed\u4fe1\u6821\u9a8c\u7801"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_0
    const-string/jumbo v0, "UC-ZC-150512-12"

    const-string/jumbo v1, "zcsmsredo"

    const-string/jumbo v2, "RegisterSMS"

    iget-object v3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mobileNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mUserRegisterService:Lcom/ali/user/mobile/service/UserRegisterService;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mToken:Ljava/lang/String;

    const-string/jumbo v2, "register"

    invoke-interface {v0, v1, p1, v2}, Lcom/ali/user/mobile/service/UserRegisterService;->sendSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    move-result-object v0

    .line 125
    invoke-virtual {p0, v0, p3}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {p0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->dismissProgress()V

    .line 128
    throw v0
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 293
    const-string/jumbo v0, "20000009"

    iput-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->mAppId:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
