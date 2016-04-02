.class public Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;
.super Ljava/lang/Object;
.source "LinkStateManager.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinkState()Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    return-object v0
.end method

.method public static setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-eq p0, v0, :cond_0

    .line 40
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    sget-object p0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 42
    const-string/jumbo v0, "sync_link_LinkStateManager"

    const-string/jumbo v1, "setLinkState: [ Net Not Available ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-ne p0, v0, :cond_2

    .line 52
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    sput-object p0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 51
    const-string/jumbo v0, "sync_link_LinkStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyLinkState: [ linkState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0
.end method
