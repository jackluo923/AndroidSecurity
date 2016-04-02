.class final Lcom/alipay/mobile/security/gesture/ui/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/gesture/ui/ae;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/gesture/ui/ae;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/ui/af;->a:Lcom/alipay/mobile/security/gesture/ui/ae;

    iput-object p2, p0, Lcom/alipay/mobile/security/gesture/ui/af;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->a:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Lcom/alipay/mobile/security/gesture/ui/ae;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->a:Lcom/alipay/mobile/security/gesture/ui/ae;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Lcom/alipay/mobile/security/gesture/ui/ae;Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->a:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Lcom/alipay/mobile/security/gesture/ui/ae;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->b:Ljava/util/List;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->a:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->b(Lcom/alipay/mobile/security/gesture/ui/ae;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->a:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    if-eqz v0, :cond_3

    new-instance v3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;

    invoke-direct {v3}, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;-><init>()V

    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->appId:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iput-object v4, v3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->on:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/security/gesture/data/ConfigItemData;->view:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/ui/af;->a:Lcom/alipay/mobile/security/gesture/ui/ae;

    invoke-static {v0}, Lcom/alipay/mobile/security/gesture/ui/ae;->a(Lcom/alipay/mobile/security/gesture/ui/ae;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
