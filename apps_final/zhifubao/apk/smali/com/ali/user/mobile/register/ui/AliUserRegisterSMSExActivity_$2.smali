.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

.field final synthetic val$response:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->val$response:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_$2;->val$response:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->afterVerifySms(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;->access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegStatusRes;)V

    .line 109
    return-void
.end method
