.class Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$11;
.super Ljava/lang/Object;
.source "AliUserRegisterAvatarActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$11;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity$11;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->closeInputMethod(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;->access$8(Lcom/ali/user/mobile/register/ui/AliUserRegisterAvatarActivity;Landroid/view/View;)V

    .line 953
    const/4 v0, 0x0

    return v0
.end method
