.class Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$1;
.super Ljava/lang/Object;
.source "AliUserRegisterWebview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview$1;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->exitDialog()V

    .line 66
    return-void
.end method
