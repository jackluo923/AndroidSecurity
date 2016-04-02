.class public Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;
.super Lcom/alipay/mobile/common/logging/appender/FileAppender;
.source "MdapFileAppender.java"


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:I

.field private f:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mdap"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/appender/FileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    .line 17
    iput-boolean v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Z

    .line 18
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:Z

    .line 21
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 29
    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:Z

    .line 31
    return-void
.end method


# virtual methods
.method protected final a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Z

    if-eqz v0, :cond_0

    .line 37
    iput-boolean v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->c:Z

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b()Landroid/content/Context;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const-string/jumbo v1, "\\$\\$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    .line 57
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;)Z

    .line 60
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I

    iget v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 62
    iput v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    .line 65
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e()V

    .line 67
    iput v3, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I

    .line 69
    :cond_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-super {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->c()V

    .line 96
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    if-lez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Mdap Appender flush\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a(Ljava/lang/String;)Z

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->f:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 103
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I

    iget v1, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I

    .line 104
    iput v2, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->e:I

    .line 106
    :cond_1
    return-void
.end method

.method protected final e()V
    .locals 6

    .prologue
    .line 81
    iget v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I

    if-lez v0, :cond_1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->d()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/io/File;Ljava/io/File;)V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->b:I

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a:Lcom/alipay/mobile/common/logging/LogContextImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/MdapFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->upload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
