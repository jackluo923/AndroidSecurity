.class public final Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;


# instance fields
.field private a:Lcom/taobao/wireless/security/adapter/h/a;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/taobao/wireless/security/adapter/h/a;

    invoke-direct {v0, p1}, Lcom/taobao/wireless/security/adapter/h/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/a;->a:Lcom/taobao/wireless/security/adapter/h/a;

    return-void
.end method


# virtual methods
.method public final varargs checkEnvAndFiles([Ljava/lang/String;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/a;->a:Lcom/taobao/wireless/security/adapter/h/a;

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/h/a;->a([Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/PkgValidityCheckDefine;->FLAG_DEX_FILE:I

    if-eq v0, p3, :cond_0

    sget v0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/PkgValidityCheckDefine;->FLAG_DEX_MANIFEST:I

    if-eq v0, p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/a;->a:Lcom/taobao/wireless/security/adapter/h/a;

    invoke-static {p1, p2, p3}, Lcom/taobao/wireless/security/adapter/h/a;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final isPackageValid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/a;->a:Lcom/taobao/wireless/security/adapter/h/a;

    invoke-static {p1}, Lcom/taobao/wireless/security/adapter/h/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
