.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

.field final synthetic val$preVerifyRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->val$preVerifyRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$3;->val$preVerifyRes:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->afterMobileRegPreVerify(Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->access$201(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/RegPreVerifyRes;)V

    .line 129
    return-void
.end method
