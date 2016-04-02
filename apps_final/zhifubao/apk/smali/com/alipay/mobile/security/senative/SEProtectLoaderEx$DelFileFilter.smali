.class Lcom/alipay/mobile/security/senative/SEProtectLoaderEx$DelFileFilter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field condition:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx$DelFileFilter;->this$0:Lcom/alipay/mobile/security/senative/SEProtectLoaderEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx$DelFileFilter;->condition:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx$DelFileFilter;->condition:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/senative/SEProtectLoaderEx$DelFileFilter;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
