.class Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;
.super Ljava/lang/Object;
.source "AliUserLoginSMSActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

.field final synthetic val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$3;->val$smsGwRes:Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;

    # invokes: Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->afterVerifySms(Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->access$201(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Lcom/alipay/aliusergw/biz/shared/processer/sms/SmsGwRes;)V

    .line 120
    return-void
.end method
