.class Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;
.super Ljava/lang/Object;
.source "AliUserLoginSMSActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

.field final synthetic val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

.field final synthetic val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;->val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$1;->val$resultCallback:Lcom/alipay/mobile/commonui/widget/SendResultCallback;

    # invokes: Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->afterSendSms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->access$001(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V

    .line 92
    return-void
.end method
