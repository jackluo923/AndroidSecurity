.class final Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "PPChatMenuBar.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/publiccore/core/model/account/ButtonObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;->this$0:Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 443
    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;->a:Ljava/util/List;

    .line 444
    invoke-virtual {p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;->b:Landroid/view/LayoutInflater;

    .line 445
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 459
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 464
    if-nez p2, :cond_0

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;->b:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$layout;->pub_popmenu_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 467
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/pubsvc/ui/mpmenu/PPChatMenuBar$MyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;

    move-object v1, v2

    .line 468
    check-cast v1, Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alipay/publiccore/core/model/account/ButtonObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    return-object v2

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method
