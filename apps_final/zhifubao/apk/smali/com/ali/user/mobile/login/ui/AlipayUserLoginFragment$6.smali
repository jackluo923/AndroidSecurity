.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iput-boolean p2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;->a:Z

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;->a:Z

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginBtn:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
