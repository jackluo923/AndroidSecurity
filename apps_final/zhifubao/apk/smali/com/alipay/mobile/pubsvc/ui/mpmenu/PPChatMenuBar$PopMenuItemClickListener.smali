.class Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;
.super Ljava/lang/Object;
.source "PPChatMenuBar.java"

# interfaces
.implements Lcom/alipay/mobile/pubsvc/ui/mpmenu/PopMenu$OnMenuItemClikListener;


# instance fields
.field private a:Lcom/alipay/publiccore/core/model/account/ButtonObject;

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;)V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;-><init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;Lcom/alipay/publiccore/core/model/account/ButtonObject;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;->a:Lcom/alipay/publiccore/core/model/account/ButtonObject;

    return-void
.end method


# virtual methods
.method public onMenuClicked(I)V
    .locals 3

    .prologue
    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;->a:Lcom/alipay/publiccore/core/model/account/ButtonObject;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;->a:Lcom/alipay/publiccore/core/model/account/ButtonObject;

    iget-object v0, v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->subButton:Ljava/util/List;

    .line 491
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 492
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    .line 493
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;
    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$5(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->c:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;
    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$5(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$OnMenuClickListener;->onMenuItemClick(Lcom/alipay/publiccore/core/model/account/ButtonObject;Z)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$PopMenuItemClickListener;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    # invokes: Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->a()V
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$4(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V

    .line 498
    :cond_1
    return-void
.end method
