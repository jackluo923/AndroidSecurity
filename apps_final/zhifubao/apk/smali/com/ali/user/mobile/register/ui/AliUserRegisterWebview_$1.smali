.class Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$1;
.super Ljava/lang/Object;
.source "AliUserRegisterWebview_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;

.field final synthetic val$email:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$1;->val$email:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$1;->val$email:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->afterEmailRegister(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->access$001(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/EmailActivateRes;)V

    .line 85
    return-void
.end method
