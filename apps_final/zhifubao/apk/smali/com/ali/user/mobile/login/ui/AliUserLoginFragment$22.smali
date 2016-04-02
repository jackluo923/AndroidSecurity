.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 890
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const-class v1, Lcom/ali/user/mobile/login/ui/AliUserLoginSetLoginPasswordActivity_;

    const v2, 0x8000

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;->a:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->startActivityForResult(Ljava/lang/Class;ILcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 891
    return-void
.end method
