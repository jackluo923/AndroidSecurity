.class Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$2;
.super Ljava/lang/Object;
.source "AliUserRegisterWebview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->goRegister()V

    .line 219
    return-void
.end method
