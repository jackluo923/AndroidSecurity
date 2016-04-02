.class Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$1;
.super Ljava/lang/Object;
.source "AliUserLoginSetSixPasswordActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity$1;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;

    iput-boolean p2, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginSetSixPasswordActivity;->optionStatus:Z

    .line 86
    return-void
.end method
