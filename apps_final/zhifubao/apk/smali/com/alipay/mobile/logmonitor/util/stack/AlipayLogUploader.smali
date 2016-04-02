.class public Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;
.super Ljava/lang/Object;
.source "AlipayLogUploader.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->f:Z

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    .line 30
    iput-wide p2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->b:J

    .line 31
    iput-wide p4, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->c:J

    .line 32
    iput-object p6, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->e:Ljava/lang/String;

    .line 34
    iput-boolean p8, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->f:Z

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;)Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 53
    if-eqz v4, :cond_1

    move v0, v1

    .line 54
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 56
    :try_start_0
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 57
    iget-wide v7, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->b:J

    cmp-long v7, v5, v7

    if-ltz v7, :cond_0

    iget-wide v7, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->c:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_0

    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 59
    aget-object v5, v4, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/logmonitor/util/MiscUtils;->a()Ljava/lang/String;

    move-result-object v4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "ExtDataTunnel"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, "files"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 79
    :try_start_1
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 80
    iget-wide v7, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->b:J

    cmp-long v7, v5, v7

    if-ltz v7, :cond_2

    iget-wide v7, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->c:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 82
    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 92
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v0, :cond_4

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "@("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 148
    :cond_4
    :goto_4
    return-void

    .line 101
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ".zip"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 103
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "ExtDataTunnel"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "files"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 110
    :try_start_2
    invoke-static {v2, v1}, Lcom/alipay/mobile/logmonitor/util/upload/ZipToFile;->a(Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_8

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v1, :cond_4

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v9, v0}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 111
    :catch_0
    move-exception v0

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    if-eqz v1, :cond_7

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v2}, Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;->a(ILjava/lang/String;)V

    .line 116
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "upload"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 126
    :cond_8
    new-instance v0, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;

    iget-object v2, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/logmonitor/util/UploadConstants;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->a:Landroid/content/Context;

    new-instance v4, Lcom/alipay/mobile/logmonitor/util/stack/a;

    invoke-direct {v4, p0, v1}, Lcom/alipay/mobile/logmonitor/util/stack/a;-><init>(Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/alipay/mobile/logmonitor/util/upload/UploadCallback;)V

    .line 145
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Ljava/lang/String;)V

    .line 146
    iget-boolean v1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->f:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/logmonitor/util/upload/HttpUpload;->a(Z)V

    .line 147
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4

    :catch_1
    move-exception v5

    goto/16 :goto_3

    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public final a(Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/util/stack/AlipayLogUploader;->g:Lcom/alipay/mobile/logmonitor/util/stack/TaskCallBack;

    .line 156
    return-void
.end method
