.class Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;
.super Ljava/lang/Object;
.source "AliUserLoginSMSActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

.field final synthetic val$ackCode:Ljava/lang/String;

.field final synthetic val$mobile:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iput-object p2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;->val$mobile:Ljava/lang/String;

    iput-object p3, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;->val$ackCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;->val$mobile:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_$4;->val$ackCode:Ljava/lang/String;

    # invokes: Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity;->verifySms(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;->access$301(Lcom/ali/user/mobile/login/ui/AliUserLoginSMSActivity_;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method
