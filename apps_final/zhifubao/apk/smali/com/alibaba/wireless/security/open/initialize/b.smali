.class public final Lcom/alibaba/wireless/security/open/initialize/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Z

.field private static volatile d:I

.field private static e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile f:Z

.field private static volatile g:Z


# instance fields
.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/wireless/security/open/initialize/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/initialize/b;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/lang/Object;

    sput-boolean v1, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    sput v1, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v1, Lcom/alibaba/wireless/security/open/initialize/b;->f:Z

    sput-boolean v1, Lcom/alibaba/wireless/security/open/initialize/b;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->h:Ljava/lang/String;

    new-instance v0, Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-direct {v0, p0}, Lcom/alibaba/wireless/security/open/initialize/a;-><init>(Lcom/alibaba/wireless/security/open/initialize/b;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    return-void
.end method

.method static a(Landroid/content/ContextWrapper;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/data/data/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private declared-synchronized a(Landroid/content/ContextWrapper;Ljava/lang/String;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v2, 0x20000000

    const/4 v3, 0x1

    monitor-enter p0

    if-nez p2, :cond_4

    :try_start_0
    sget v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eq v0, v3, :cond_0

    sget v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2

    sget v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_2

    sget-object v0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->b(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    invoke-direct {p0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->c(Landroid/content/ContextWrapper;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_3

    sget v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    or-int/2addr v0, v2

    sput v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    sget v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    or-int/2addr v0, v4

    sput v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "libsecuritysdk-2.7.43.so"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/wireless/security/open/initialize/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    sget v1, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    if-eqz v1, :cond_6

    sget v1, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_7

    :cond_6
    invoke-direct {p0, v0}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    sget v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    :cond_7
    :goto_1
    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    sget-object v0, Lcom/alibaba/wireless/security/open/initialize/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_9
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 4

    const/16 v0, 0x1000

    new-array v3, v0, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/16 v2, 0x1000

    :try_start_1
    invoke-virtual {p0, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v0, 0x0

    const/16 v2, 0x1000

    invoke-virtual {p0, v3, v0, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_3
    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->g:Z

    if-nez v0, :cond_6

    sget-object v1, Lcom/alibaba/wireless/security/open/initialize/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->g:Z

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/taobao/wireless/security/adapter/b/d;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/alibaba/wireless/security/open/a;->a(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/c;->a()Lcom/alibaba/wireless/security/open/initialize/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/c;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/c;->a()Lcom/alibaba/wireless/security/open/initialize/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wireless/security/open/initialize/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "securitysdk-2.7.43"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Z

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/ContextWrapper;Ljava/lang/String;)V

    :cond_2
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    new-instance v2, Landroid/content/ContextWrapper;

    invoke-direct {v2, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/alibaba/wireless/security/open/initialize/a;->a(Landroid/content/ContextWrapper;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->g:Z

    if-nez v0, :cond_5

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x6b

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    sget v2, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/alibaba/wireless/security/open/initialize/b;->d:I

    instance-of v2, v0, Lcom/alibaba/wireless/security/open/SecException;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/alibaba/wireless/security/open/SecException;

    check-cast v0, Lcom/alibaba/wireless/security/open/SecException;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->getErrorCode()I

    move-result v0

    invoke-direct {v2, v0}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v2

    :cond_3
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x67

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_4
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v2, 0x6a

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->g:Z

    return v0
.end method

.method private static a(Landroid/content/Context;Z)Z
    .locals 3

    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    if-nez v0, :cond_3

    sget-object v1, Lcom/alibaba/wireless/security/open/initialize/b;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->g:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/taobao/wireless/security/adapter/f/a;

    invoke-direct {v0, p0}, Lcom/taobao/wireless/security/adapter/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/taobao/wireless/security/adapter/f/a;->a(Z)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    add-int/lit8 v2, v2, 0x64

    invoke-direct {v0, v2}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    invoke-static {p0}, Lcom/alibaba/wireless/security/open/a;->a(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/a;->a()Lcom/alibaba/wireless/security/open/umid/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/umid/a;->a()V

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    sget-boolean v0, Lcom/alibaba/wireless/security/open/initialize/b;->c:Z

    return v0
.end method

.method private a(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/wireless/security/open/initialize/b;->h:Ljava/lang/String;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/wireless/security/open/initialize/b;->f:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/ContextWrapper;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/io/File;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    return v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/initialize/a;->b(Landroid/content/ContextWrapper;)Lcom/alibaba/wireless/security/open/initialize/b$a;

    move-result-object v0

    iget-boolean v3, v0, Lcom/alibaba/wireless/security/open/initialize/b$a;->b:Z

    if-eqz v3, :cond_6

    new-instance v5, Ljava/io/File;

    iget-object v0, v0, Lcom/alibaba/wireless/security/open/initialize/b$a;->a:Ljava/io/File;

    const-string/jumbo v3, "libsecuritysdk-2.7.43.so"

    invoke-direct {v5, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v3, Ljava/util/zip/ZipFile;

    const/4 v0, 0x1

    invoke-direct {v3, v4, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lib/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "libsecuritysdk-2.7.43.so"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v6, "armeabi-v7a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lib/armeabi/libsecuritysdk-2.7.43.so"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    move v0, v2

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    move v0, v2

    goto/16 :goto_1

    :cond_7
    :try_start_4
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Ljava/io/InputStream;Ljava/io/File;)V

    :goto_4
    invoke-direct {p0, v5}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v1, :cond_8

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v3, v1

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_9

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_9
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :goto_6
    move v0, v2

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v3, v1

    :goto_7
    if-eqz v1, :cond_a

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    throw v0

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :cond_b
    move-object v3, v1

    goto :goto_4
.end method

.method private c(Landroid/content/ContextWrapper;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v1, p1}, Lcom/alibaba/wireless/security/open/initialize/a;->b(Landroid/content/ContextWrapper;)Lcom/alibaba/wireless/security/open/initialize/b$a;

    move-result-object v1

    iget-boolean v3, v1, Lcom/alibaba/wireless/security/open/initialize/b$a;->b:Z

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/alibaba/wireless/security/open/initialize/b$a;->a:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v5, "armeabi-v7a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "armeabi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v4, "armeabi/libsecuritysdk-2.7.43.so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "libsecuritysdk-2.7.43.so"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Ljava/io/InputStream;Ljava/io/File;)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_1
    throw v0

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p3}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/Context;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/wireless/security/open/initialize/c;->a()Lcom/alibaba/wireless/security/open/initialize/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/c;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final initialize(Landroid/content/Context;)I
    .locals 2

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    if-nez p1, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_0
    sget-object v1, Lcom/taobao/wireless/security/adapter/b/b;->a:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/taobao/wireless/security/adapter/b/b;->a:Landroid/content/Context;

    :cond_1
    iget-object v0, v0, Lcom/alibaba/wireless/security/open/initialize/a;->a:Lcom/alibaba/wireless/security/open/initialize/b;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->loadLibrarySync(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final initializeAsync(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/wireless/security/open/initialize/b;->loadLibraryAsync(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/SecException;->printStackTrace()V

    goto :goto_0
.end method

.method public final isSoValid(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final loadLibraryAsync(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/wireless/security/open/initialize/b;->loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized loadLibraryAsync(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/open/initialize/a;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/wireless/security/open/initialize/a$a;

    iget-object v2, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    new-instance v3, Landroid/content/ContextWrapper;

    invoke-direct {v3, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/alibaba/wireless/security/open/initialize/a$a;-><init>(Lcom/alibaba/wireless/security/open/initialize/a;Landroid/content/ContextWrapper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final loadLibrarySync(Landroid/content/Context;)I
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/alibaba/wireless/security/open/SecException;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/alibaba/wireless/security/open/SecException;-><init>(I)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/wireless/security/open/initialize/b;->loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final loadLibrarySync(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/wireless/security/open/initialize/b;->a(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final registerInitFinishListener(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/initialize/a;->a(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V

    return-void
.end method

.method public final unregisterInitFinishListener(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/open/initialize/b;->i:Lcom/alibaba/wireless/security/open/initialize/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/open/initialize/a;->b(Lcom/alibaba/wireless/security/open/initialize/IInitializeComponent$IInitFinishListener;)V

    return-void
.end method
