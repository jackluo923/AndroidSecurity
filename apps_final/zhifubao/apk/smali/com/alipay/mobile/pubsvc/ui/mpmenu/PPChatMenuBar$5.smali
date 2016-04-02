.class Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$5;
.super Ljava/lang/Object;
.source "PPChatMenuBar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$5;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$5;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->dismissPopMenu()V

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
