.class public final Lcom/alipay/mobile/quinox/bundle/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/bundle/e;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getOldResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":string/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/Throwable;I)V
    .locals 4

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFiles(Ljava/io/File;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v1, "mdap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/FileUtil;->deleteFilesWithExcludes(Ljava/io/File;Ljava/util/Set;)Z

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/alipay/mobile/quinox/bundle/e;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "No space left on device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "extract_failed_no_space"

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v0, "extract_failed_default"

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/bundle/e;->a(Lcom/alipay/mobile/quinox/LauncherApplication;Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-eqz v0, :cond_0

    new-instance v1, Lcom/alipay/mobile/quinox/bundle/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/quinox/bundle/f;-><init>(Lcom/alipay/mobile/quinox/bundle/e;Lcom/alipay/mobile/quinox/LauncherApplication;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/quinox/bundle/g;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/alipay/mobile/quinox/bundle/g;-><init>(Lcom/alipay/mobile/quinox/bundle/e;Landroid/content/Context;Lcom/alipay/mobile/quinox/LauncherApplication;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/bundle/e;->a:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
