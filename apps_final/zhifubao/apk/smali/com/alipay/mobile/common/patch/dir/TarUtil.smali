.class public Lcom/alipay/mobile/common/patch/dir/TarUtil;
.super Ljava/lang/Object;
.source "TarUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TarUtil"

.field public static failMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/patch/dir/TarUtil;->failMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 127
    :goto_0
    return v0

    .line 78
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 79
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->childOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 84
    goto :goto_0

    .line 89
    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v2, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;-><init>(Ljava/io/File;)V

    .line 91
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 92
    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 95
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move v0, v1

    .line 100
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 101
    aget-object v6, v5, v0

    .line 102
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 105
    :cond_4
    const-string/jumbo v6, ""

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v6, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-direct {v6, v5, v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2, v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->putNextEntry(Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;)V

    .line 110
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 111
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    const/16 v0, 0x800

    new-array v0, v0, [B

    .line 114
    :goto_3
    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 115
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 122
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    :goto_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->flush()V

    .line 118
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    goto :goto_1

    .line 121
    :cond_6
    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public static untar(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 23
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    const-string/jumbo v1, "tar path not exists!"

    .line 25
    sput-object v1, Lcom/alipay/mobile/common/patch/dir/TarUtil;->failMessage:Ljava/lang/String;

    .line 70
    :goto_0
    return v0

    .line 29
    :cond_0
    invoke-static {p1, v1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    const-string/jumbo v1, "failed to create untar folder."

    .line 31
    sput-object v1, Lcom/alipay/mobile/common/patch/dir/TarUtil;->failMessage:Ljava/lang/String;

    goto :goto_0

    .line 36
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    new-instance v2, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->getNextEntry()Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 42
    invoke-virtual {v3}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 46
    invoke-virtual {v3}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    invoke-static {v4}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    :cond_3
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v4, v3}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 50
    const/16 v3, 0x800

    new-array v3, v3, [B

    .line 56
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    :goto_2
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 59
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6, v5}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 62
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1

    .line 65
    :cond_5
    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 70
    goto :goto_0
.end method
