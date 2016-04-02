.class public Lcom/alipay/mobile/apk/common/ZActivityInfo;
.super Landroid/content/pm/ActivityInfo;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method


# virtual methods
.method public getArchiveFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/apk/common/ZActivityInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setArchiveFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/apk/common/ZActivityInfo;->a:Ljava/lang/String;

    return-void
.end method
