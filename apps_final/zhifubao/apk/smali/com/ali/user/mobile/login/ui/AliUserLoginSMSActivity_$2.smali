.class Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;
.super Ljava/lang/Object;
.source "AliUserLoginSMSActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

.field final synthetic val$sms:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;->val$sms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$2;->val$sms:Ljava/lang/String;

    # invokes: Lcom/ali/user/mobile/sms/ui/SmsActivity;->OnAutoReadSms(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->access$101(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;)V

    .line 106
    return-void
.end method
