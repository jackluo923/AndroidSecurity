.class Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$6;
.super Ljava/lang/Object;
.source "PPChatMenuBar.java"

# interfaces
.implements Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnPopwinDismissListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopwinDismiss()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$6(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;I)V

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$6;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$2(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Z)V

    .line 332
    return-void
.end method
