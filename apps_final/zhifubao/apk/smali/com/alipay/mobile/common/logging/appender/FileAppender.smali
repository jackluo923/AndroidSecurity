.class public Lcom/alipay/mobile/common/logging/appender/FileAppender;
.super Lcom/alipay/mobile/common/logging/appender/Appender;
.source "FileAppender.java"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/appender/Appender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b:Ljava/lang/String;

    const/16 v1, 0x3a

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->d()Ljava/io/File;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 45
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    .line 47
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Ljava/io/File;
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->c:Ljava/io/File;

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "mdap"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->a()Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->c:Ljava/io/File;

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/FileAppender;->c:Ljava/io/File;

    return-object v0
.end method
