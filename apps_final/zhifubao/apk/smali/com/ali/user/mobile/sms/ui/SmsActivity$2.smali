.class Lcom/ali/user/mobile/sms/ui/SmsActivity$2;
.super Ljava/lang/Object;
.source "SmsActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/OnSendCallback;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/sms/ui/SmsActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/sms/ui/SmsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity$2;->this$0:Lcom/ali/user/mobile/sms/ui/SmsActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity$2;->this$0:Lcom/ali/user/mobile/sms/ui/SmsActivity;

    iget-object v0, v0, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mCheckCodeInputBox:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity$2;->this$0:Lcom/ali/user/mobile/sms/ui/SmsActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->stopAutoReadSms()V

    .line 142
    iget-object v0, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity$2;->this$0:Lcom/ali/user/mobile/sms/ui/SmsActivity;

    iget-object v1, p0, Lcom/ali/user/mobile/sms/ui/SmsActivity$2;->this$0:Lcom/ali/user/mobile/sms/ui/SmsActivity;

    iget-object v1, v1, Lcom/ali/user/mobile/sms/ui/SmsActivity;->mobileNo:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2, p1}, Lcom/ali/user/mobile/sms/ui/SmsActivity;->sendSmsInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    .line 143
    return-void
.end method
