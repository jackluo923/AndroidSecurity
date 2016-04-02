.class public Lcom/ta/utdid2/device/UTUtdid;
.super Ljava/lang/Object;


# static fields
.field static final UM_SETTINGS_STORAGE:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field static final UM_SETTINGS_STORAGE_NEW:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/ta/utdid2/device/UTUtdid;

.field private static final j:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Lcom/ta/utdid2/device/UTUtdidHelper;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private k:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    const-string/jumbo v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    const-string/jumbo v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->k:Ljava/util/regex/Pattern;

    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    sget-object v2, Lcom/ta/utdid2/device/UTUtdid;->j:Ljava/lang/String;

    const-string/jumbo v3, "Alvin2"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v2, ".DataStorage"

    const-string/jumbo v3, "ContextData"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    new-instance v0, Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdidHelper;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    const-string/jumbo v0, "K_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    const-string/jumbo v0, "D_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "UTDID"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "EI"

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v2, "SI"

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v4, "DID"

    invoke-virtual {v2, v4}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v2, v0

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    new-instance v3, Lcom/ta/utdid2/device/Device;

    invoke-direct {v3}, Lcom/ta/utdid2/device/Device;-><init>()V

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/Device;->setImei(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/ta/utdid2/device/Device;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/ta/utdid2/device/Device;->setUtdid(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/ta/utdid2/device/Device;->setDeviceId(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/ta/utdid2/device/Device;->setCreateTimestamp(J)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "UTDID"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "EI"

    invoke-virtual {v3}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "SI"

    invoke-virtual {v3}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "DID"

    invoke-virtual {v3}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v3}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "S"

    invoke-static {v3}, Lcom/ta/utdid2/device/UTUtdid;->getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_5
    return-void
.end method

.method private final a()[B
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v2, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string/jumbo v2, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    const-string/jumbo v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v3}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v3, v0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v0, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
    .locals 5

    if-eqz p0, :cond_0

    const-string/jumbo v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_1

    sget-object v1, Lcom/ta/utdid2/device/UTUtdid;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/device/UTUtdid;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->c:Lcom/ta/utdid2/device/UTUtdid;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "mqBRboGZkQPcAkyk"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v4, Lcom/ta/utdid2/device/UTUtdidHelper2;

    invoke-direct {v4}, Lcom/ta/utdid2/device/UTUtdidHelper2;-><init>()V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v5, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "dxCRMxhQkdGePGnp"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    move v2, v0

    :cond_4
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->i:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v3, "UTDID"

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    :goto_2
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v1, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_5

    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->d(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->c(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->h:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v4, v3}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v0, v3}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->d(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_a
    :try_start_3
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->a()[B

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->e:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->pack([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->d(Ljava/lang/String;)V

    :cond_b
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->b(Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->d:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    move-object v0, v1

    goto/16 :goto_0

    :cond_e
    move-object v0, v3

    goto/16 :goto_1
.end method
