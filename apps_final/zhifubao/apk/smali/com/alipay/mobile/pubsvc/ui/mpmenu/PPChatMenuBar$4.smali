.class Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;
.super Ljava/lang/Object;
.source "PPChatMenuBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    # invokes: Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$4(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->h:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$3(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearAnimation()V

    .line 185
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$4;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$2(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Z)V

    .line 174
    return-void
.end method
