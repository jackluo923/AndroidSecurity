.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$18;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$18;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$18;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "95188"

    # invokes: Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->callPhoneNum(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->access$2(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Ljava/lang/String;)V

    .line 856
    return-void
.end method
