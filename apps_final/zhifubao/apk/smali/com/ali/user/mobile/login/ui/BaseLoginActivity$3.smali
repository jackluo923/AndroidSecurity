.class Lcom/ali/user/mobile/login/ui/BaseLoginActivity$3;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:I

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iput p2, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$3;->a:I

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    iget v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$3;->a:I

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->setResult(I)V

    .line 116
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$3;->this$0:Lcom/ali/user/mobile/login/ui/BaseLoginActivity;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->finish()V

    .line 117
    return-void
.end method
