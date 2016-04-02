.class Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;
.super Landroid/os/Handler;
.source "EditAvatarActivity.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    # getter for: Lcom/ali/user/mobile/avatar/EditAvatarActivity;->i:Z
    invoke-static {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->access$4(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    # getter for: Lcom/ali/user/mobile/avatar/EditAvatarActivity;->h:Z
    invoke-static {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->access$5(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    # getter for: Lcom/ali/user/mobile/avatar/EditAvatarActivity;->g:Z
    invoke-static {v0}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->access$6(Lcom/ali/user/mobile/avatar/EditAvatarActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/ali/user/mobile/avatar/EditAvatarActivity$1;->this$0:Lcom/ali/user/mobile/avatar/EditAvatarActivity;

    const-string/jumbo v1, "\u8bf7\u68c0\u67e5\u201c\u652f\u4ed8\u5b9d\u94b1\u5305\u201d\u662f\u5426\u88ab\u7cfb\u7edf\u6216\u662f\u6743\u9650\u7ba1\u7406\u8f6f\u4ef6\u7981\u6b62\u4f7f\u7528\u6444\u50cf\u5934"

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/avatar/EditAvatarActivity;->toast(Ljava/lang/String;I)V

    .line 106
    :cond_0
    return-void
.end method
