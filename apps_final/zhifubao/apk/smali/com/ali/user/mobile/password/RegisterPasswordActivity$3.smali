.class Lcom/ali/user/mobile/password/RegisterPasswordActivity$3;
.super Ljava/lang/Object;
.source "RegisterPasswordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/password/RegisterPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/password/RegisterPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$3;->this$0:Lcom/ali/user/mobile/password/RegisterPasswordActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$3;->this$0:Lcom/ali/user/mobile/password/RegisterPasswordActivity;

    # invokes: Lcom/ali/user/mobile/password/RegisterPasswordActivity;->goLogin()V
    invoke-static {v0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->access$5(Lcom/ali/user/mobile/password/RegisterPasswordActivity;)V

    .line 138
    iget-object v0, p0, Lcom/ali/user/mobile/password/RegisterPasswordActivity$3;->this$0:Lcom/ali/user/mobile/password/RegisterPasswordActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/password/RegisterPasswordActivity;->finish()V

    .line 139
    return-void
.end method
