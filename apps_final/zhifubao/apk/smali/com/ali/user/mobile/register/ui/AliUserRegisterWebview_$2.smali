.class Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$2;
.super Ljava/lang/Object;
.source "AliUserRegisterWebview_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;

    iput-object p2, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$2;->this$0:Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;

    iget-object v1, p0, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_$2;->val$url:Ljava/lang/String;

    # invokes: Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview;->doEmailRegister(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;->access$101(Lcom/ali/user/mobile/register/ui/AliUserRegisterWebview_;Ljava/lang/String;)V

    .line 99
    return-void
.end method
