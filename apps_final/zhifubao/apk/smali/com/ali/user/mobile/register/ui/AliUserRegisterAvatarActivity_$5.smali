.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_$5;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->getCountryCode()V
    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;->access$401(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity_;)V

    .line 157
    return-void
.end method
