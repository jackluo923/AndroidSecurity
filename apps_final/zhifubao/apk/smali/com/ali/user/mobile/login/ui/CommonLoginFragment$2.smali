.class Lcom/ali/user/mobile/login/ui/CommonLoginFragment$2;
.super Ljava/lang/Object;
.source "CommonLoginFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/CommonLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/CommonLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$2;->this$0:Lcom/ali/user/mobile/login/ui/CommonLoginFragment;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x5

    if-ne v0, p2, :cond_0

    .line 205
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment$2;->this$0:Lcom/ali/user/mobile/login/ui/CommonLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/CommonLoginFragment;->mPasswordInputBox:Lcom/ali/user/mobile/ui/widget/AUInputBox;

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/AUInputBox;->requestFocus()Z

    .line 206
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
