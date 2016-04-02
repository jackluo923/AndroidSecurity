.class Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;
.super Ljava/lang/Object;
.source "AlipayUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;->this$0:Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginBtn:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    return-void
.end method
