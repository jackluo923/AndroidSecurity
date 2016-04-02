.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;->a:Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->dismiss()V

    .line 526
    const-string/jumbo v0, "https://csmobile.alipay.com/router.htm?scene=app_authcenter&__webview_options__=showTitleBar%3DYES%26showToolBar%3DNO%26showOptionMenu%3DNO"

    invoke-static {v0}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$12;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-string/jumbo v1, "UC-LOG-150512-08"

    const-string/jumbo v2, "loginusual"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->writeOpenkLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method
