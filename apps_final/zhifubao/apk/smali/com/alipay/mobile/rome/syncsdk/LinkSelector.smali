.class public Lcom/alipay/mobile/rome/syncsdk/LinkSelector;
.super Ljava/lang/Object;
.source "LinkSelector.java"


# static fields
.field public static final LINK_TYPE_MMTP:Ljava/lang/String; = "mmtp"

.field public static final LINK_TYPE_SSL:Ljava/lang/String; = "ssl"

.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string/jumbo v0, "ssl"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->b:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinkType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 31
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->b:Z

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "sync_link_LinkSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getLinkType: isInited true[ linkType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    .line 44
    :goto_0
    return-object v0

    .line 36
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->isMmtpSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    const-string/jumbo v0, "mmtp"

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    .line 40
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->b:Z

    .line 42
    const-string/jumbo v0, "sync_link_LinkSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getLinkType: [ linkType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtiLink;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->a:Ljava/lang/String;

    goto :goto_0
.end method
