.class public Lcom/alipay/mobile/apk/common/ZPackageManager;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/apk/common/ZPackageManager;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPackageArchiveInfo(Ljava/lang/String;I)Lcom/alipay/mobile/apk/common/ZPackageInfo;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/apk/common/ZPackageInfo;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/apk/common/ZPackageInfo;-><init>(Landroid/content/pm/PackageInfo;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/apk/common/ZPackageInfo;->setArchiveFilePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/apk/common/ZPackageManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method
