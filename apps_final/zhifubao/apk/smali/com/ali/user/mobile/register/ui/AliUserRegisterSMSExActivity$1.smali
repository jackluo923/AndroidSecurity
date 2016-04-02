.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$1;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->closeInputMethod(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->access$4(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    invoke-static {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->access$5(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V

    .line 73
    return-void
.end method
