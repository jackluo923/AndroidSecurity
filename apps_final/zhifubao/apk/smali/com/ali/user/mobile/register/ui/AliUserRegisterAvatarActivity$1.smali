.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Lcom/ali/user/mobile/register/RegionChoice$RegionCallback;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const/16 v1, 0xbb8

    invoke-virtual {v0, p2, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 252
    return-void
.end method

.method public onSelect(Lcom/ali/user/mobile/register/RegionInfo;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-static {v0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/ali/user/mobile/register/RegionInfo;)V

    .line 246
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a(Lcom/ali/user/mobile/register/RegionInfo;)V
    invoke-static {v0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Lcom/ali/user/mobile/register/RegionInfo;)V

    .line 247
    return-void
.end method

.method public postRpc()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->dismissProgress()V

    .line 241
    return-void
.end method

.method public preRpc()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->showProgress(Ljava/lang/String;)V

    .line 236
    return-void
.end method
