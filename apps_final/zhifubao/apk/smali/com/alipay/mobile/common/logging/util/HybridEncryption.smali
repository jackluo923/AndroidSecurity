.class public Lcom/alipay/mobile/common/logging/util/HybridEncryption;
.super Ljava/lang/Object;
.source "HybridEncryption.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/lang/String;

.field private d:[B

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alipay/mobile/common/logging/util/AESUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/util/RSAUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/util/Base64;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/util/LoggingUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/util/MD5Util;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->e:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->c:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/common/logging/util/HybridEncryption;
    .locals 2

    .prologue
    .line 57
    const-class v0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a:Lcom/alipay/mobile/common/logging/util/HybridEncryption;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit v1

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 43
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_1
    return-object v0

    .line 39
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "setting.logging.encryption.pubkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/AESUtil;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/RSAUtil;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->e:Ljava/lang/String;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 71
    :cond_1
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->d:[B

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/AESUtil;->a([B[B)[B

    move-result-object v1

    .line 75
    new-instance v0, Landroid/util/Pair;

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/Base64;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
