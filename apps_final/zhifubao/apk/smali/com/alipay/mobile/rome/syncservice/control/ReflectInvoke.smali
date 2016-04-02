.class public Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;
.super Ljava/lang/Object;
.source "ReflectInvoke.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sync_service_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const-class v1, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;->a:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;->a:Ljava/lang/String;

    const-string/jumbo v1, "init: [ ReflectInvoke init ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/control/ReflectInvoke;->a:Ljava/lang/String;

    const-string/jumbo v1, "init: [ ReflectInvoke init ] [ not mmtp link ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncservice/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter;->init()V

    .line 26
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/control/LongLinkControlCenter2;->init()V

    goto :goto_0
.end method
