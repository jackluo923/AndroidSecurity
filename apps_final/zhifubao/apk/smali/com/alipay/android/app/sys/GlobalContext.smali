.class public Lcom/alipay/android/app/sys/GlobalContext;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/sys/GlobalContext;

.field private static b:Landroid/content/Context;

.field private static g:Z

.field private static h:Z

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static o:Ljava/lang/String;


# instance fields
.field private c:Lcom/alipay/android/app/IAppConfig;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private l:Z

.field private m:J

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/sys/GlobalContext;->g:Z

    sput-boolean v0, Lcom/alipay/android/app/sys/GlobalContext;->h:Z

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->l:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->m:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->n:J

    return-void
.end method

.method public static a()Lcom/alipay/android/app/sys/GlobalContext;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->a:Lcom/alipay/android/app/sys/GlobalContext;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/sys/GlobalContext;

    invoke-direct {v0}, Lcom/alipay/android/app/sys/GlobalContext;-><init>()V

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->a:Lcom/alipay/android/app/sys/GlobalContext;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->a:Lcom/alipay/android/app/sys/GlobalContext;

    return-object v0
.end method

.method private static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v2, ""

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    const-string/jumbo v2, "exit\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_1

    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/alipay/android/app/sys/GlobalContext;->o:Ljava/lang/String;

    return-void
.end method

.method public static f()Z
    .locals 8

    const/4 v7, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string/jumbo v1, " GlobalContext   isdeviceRooted  start "

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    sget-boolean v1, Lcom/alipay/android/app/sys/GlobalContext;->h:Z

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/sys/GlobalContext;->g:Z

    :goto_0
    return v0

    :cond_0
    sput-boolean v0, Lcom/alipay/android/app/sys/GlobalContext;->g:Z

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "/system/xbin/"

    aput-object v2, v1, v0

    const-string/jumbo v2, "/system/bin/"

    aput-object v2, v1, v6

    const-string/jumbo v2, "/system/sbin/"

    aput-object v2, v1, v3

    const-string/jumbo v2, "/sbin/"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "/vendor/bin/"

    aput-object v3, v1, v2

    :goto_1
    if-ge v0, v7, :cond_4

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "su"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "ls"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "-l"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lcom/alipay/android/app/sys/GlobalContext;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "root"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v3, v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/android/app/sys/GlobalContext;->g:Z

    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/android/app/sys/GlobalContext;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_4
    sput-boolean v6, Lcom/alipay/android/app/sys/GlobalContext;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " GlobalContext   isdeviceRooted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/alipay/android/app/sys/GlobalContext;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->a()V

    const-string/jumbo v0, " GlobalContext   isdeviceRooted  end "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->d(Ljava/lang/String;)V

    sget-boolean v0, Lcom/alipay/android/app/sys/GlobalContext;->g:Z

    goto/16 :goto_0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/util/BaseHelper;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "-1.-1"

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->k:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->o:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->d:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->n:J

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/sys/GlobalContext;->c:Lcom/alipay/android/app/IAppConfig;

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/sys/UserLocation;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->l:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->m:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/sys/GlobalContext;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()Lcom/alipay/android/app/IAppConfig;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->c:Lcom/alipay/android/app/IAppConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->c:Lcom/alipay/android/app/IAppConfig;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->c:Lcom/alipay/android/app/IAppConfig;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 11

    const/16 v10, 0x41

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->i:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/GlobalContext;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/sys/GlobalContext;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-array v5, v10, [C

    fill-array-data v5, :array_0

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    move v4, v3

    move v0, v3

    :goto_1
    if-ge v4, v7, :cond_3

    aget-char v8, v6, v4

    move v2, v3

    move v0, v3

    :goto_2
    if-ge v2, v10, :cond_2

    aget-char v9, v5, v2

    if-ne v8, v9, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x5cs
        0x3ds
    .end array-data
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/app/sys/GlobalContext;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->l:Z

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->l:Z

    return v0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/sys/GlobalContext;->n:J

    return-wide v0
.end method
