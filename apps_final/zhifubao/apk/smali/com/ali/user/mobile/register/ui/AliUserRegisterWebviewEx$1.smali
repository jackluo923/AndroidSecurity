.class Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx$1;
.super Ljava/lang/Object;
.source "AliUserRegisterWebviewEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->goRegister()V

    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebviewEx;->finish()V

    .line 52
    return-void
.end method
