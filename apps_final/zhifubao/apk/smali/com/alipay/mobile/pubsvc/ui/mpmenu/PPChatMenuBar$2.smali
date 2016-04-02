.class Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;
.super Ljava/lang/Object;
.source "PPChatMenuBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 105
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 106
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    aget v1, v6, v2

    int-to-float v1, v1

    add-float v7, v0, v1

    .line 108
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    aget v1, v6, v4

    int-to-float v1, v1

    add-float v8, v0, v1

    .line 111
    const/4 v3, 0x0

    move v1, v2

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->d:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$1(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move-object v0, v3

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 142
    :goto_1
    return v2

    .line 113
    :cond_1
    aput v2, v6, v2

    .line 114
    aput v2, v6, v4

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    # getter for: Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->d:Ljava/util/List;
    invoke-static {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$1(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 116
    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 118
    aget v5, v6, v2

    .line 119
    aget v9, v6, v4

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 123
    int-to-float v12, v5

    cmpl-float v12, v7, v12

    if-lez v12, :cond_2

    add-int/2addr v5, v10

    int-to-float v5, v5

    cmpg-float v5, v7, v5

    if-gez v5, :cond_2

    int-to-float v5, v9

    cmpl-float v5, v8, v5

    if-lez v5, :cond_2

    add-int v5, v9, v11

    int-to-float v5, v5

    cmpg-float v5, v8, v5

    if-gez v5, :cond_2

    move v5, v4

    .line 124
    :goto_2
    if-nez v5, :cond_0

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v5, v2

    .line 123
    goto :goto_2

    :sswitch_0
    move v2, v4

    .line 132
    goto :goto_1

    .line 136
    :sswitch_1
    if-eqz v0, :cond_3

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-static {v1, v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->access$0(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Landroid/view/View;)V

    goto :goto_1

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$2;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->dismissPopMenu()V

    goto :goto_1

    .line 129
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_1
    .end sparse-switch
.end method
