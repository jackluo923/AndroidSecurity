.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$2;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->closeInputMethod(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;Landroid/view/View;)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
