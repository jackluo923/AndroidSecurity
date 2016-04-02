.class public Lcom/taobao/securityjni/PkgValidityCheck;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;


# static fields
.field public static FLAG_DEX_FILE:I

.field public static FLAG_DEX_MANIFEST:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/taobao/securityjni/PkgValidityCheck;->FLAG_DEX_MANIFEST:I

    const/4 v0, 0x1

    sput v0, Lcom/taobao/securityjni/PkgValidityCheck;->FLAG_DEX_FILE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs checkEnvAndFiles([Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/taobao/securityjni/GlobalInit;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/taobao/wireless/security/sdk/SecurityGuardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/wireless/security/sdk/SecurityGuardManager;->getPackageValidityCheckComp()Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/wireless/security/sdk/pkgvaliditycheck/IPkgValidityCheckComponent;->getDexHash(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPackageValid(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
