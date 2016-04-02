.class Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$4;
.super Ljava/lang/Object;
.source "AliUserRegisterSMSExActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/RegisterUtil;->goRegistActivity(Landroid/app/Activity;Z)V

    .line 153
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity$4;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterSMSExActivity;->finish()V

    .line 154
    return-void
.end method
