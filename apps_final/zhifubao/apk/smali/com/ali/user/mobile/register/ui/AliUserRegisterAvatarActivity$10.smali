.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$10;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$10;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$10;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->closeInputMethod(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$8(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Landroid/view/View;)V

    .line 687
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$10;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->a()V
    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$9(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V

    .line 688
    return-void
.end method
