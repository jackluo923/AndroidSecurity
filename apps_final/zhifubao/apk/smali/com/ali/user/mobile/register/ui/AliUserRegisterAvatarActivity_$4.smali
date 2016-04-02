.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

.field final synthetic val$checkCode:Ljava/lang/String;

.field final synthetic val$securityId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;->val$checkCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;->val$securityId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;->val$checkCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$4;->val$securityId:Ljava/lang/String;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->doMobileRegPreVerify(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->access$301(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method
