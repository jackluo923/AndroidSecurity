.class public Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;
.super Lcom/alipay/mobile/common/logging/appender/FileAppender;
.source "ExternalFileAppender.java"


# static fields
.field private static b:I


# instance fields
.field private c:Ljava/io/File;

.field private final d:J

.field private final e:J

.field private f:Ljava/lang/StringBuilder;

.field private g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/high16 v0, 0x1e00000

    sput v0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;JJ)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/logging/appender/FileAppender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/lang/StringBuilder;

    .line 36
    new-instance v0, Lcom/alipay/mobile/common/logging/appender/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/appender/a;-><init>(Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/util/Comparator;

    .line 45
    iput-wide p3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->d:J

    .line 46
    iput-wide p5, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->e:J

    .line 47
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a()Lcom/alipay/mobile/common/logging/util/HybridEncryption;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\r\n"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "[seed]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "[seed]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a(Ljava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private f()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 149
    if-nez v5, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->e:J

    sub-long v7, v1, v3

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->e:J

    add-long v9, v1, v3

    .line 161
    array-length v11, v6

    move v4, v0

    :goto_1
    if-ge v4, v11, :cond_5

    aget-object v12, v6, v4

    .line 162
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 163
    const-wide/16 v2, 0x0

    .line 167
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v13, "_"

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x0

    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 171
    :goto_2
    cmp-long v3, v1, v7

    if-ltz v3, :cond_3

    cmp-long v1, v1, v9

    if-lez v1, :cond_4

    .line 172
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "cleanExpiresFile:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " too old"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 168
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    move-wide v1, v2

    goto :goto_2

    .line 178
    :cond_5
    invoke-static {v5}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/io/File;)J

    move-result-wide v1

    sget v3, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 179
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->g:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 182
    :goto_3
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 183
    aget-object v2, v1, v0

    .line 184
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "cleanExpiresFile:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " too large"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method protected final a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->e()V

    .line 90
    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/alipay/mobile/common/logging/appender/FileAppender;->c()V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Appender flush\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->e()V

    .line 99
    return-void
.end method

.method protected final d()Ljava/io/File;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->d:J

    div-long/2addr v3, v5

    iget-wide v5, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->d:J

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3a

    const/16 v4, 0x2d

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "checkAndRollFile:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 64
    if-nez v3, :cond_2

    .line 80
    :cond_1
    :goto_0
    return-object v0

    .line 69
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->f()V

    .line 72
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "mounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v7, v1

    mul-long v4, v7, v5

    const-wide/32 v6, 0x100000

    div-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c:Ljava/io/File;

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/ExternalFileAppender;->c:Ljava/io/File;

    goto :goto_0

    .line 72
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method
