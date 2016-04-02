.class public Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;
.super Ljava/io/OutputStream;
.source "TarOutputStream.java"


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private b:J

.field private c:J

.field private d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 28
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->a:Ljava/io/OutputStream;

    .line 29
    iput-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->b:J

    .line 30
    iput-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 34
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 36
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 38
    if-eqz p2, :cond_0

    cmp-long v3, v1, v4

    if-lez v3, :cond_0

    .line 39
    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 41
    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->a:Ljava/io/OutputStream;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->a:Ljava/io/OutputStream;

    .line 23
    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->b:J

    .line 24
    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    .line 25
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->closeCurrentEntry()V

    .line 47
    const/16 v0, 0x400

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->write([B)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 49
    return-void
.end method

.method protected closeCurrentEntry()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 96
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The current entry["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] of size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] has not been fully written."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->pad()V

    .line 107
    :cond_1
    return-void
.end method

.method protected pad()V
    .locals 4

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 111
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->b:J

    const-wide/16 v2, 0x200

    rem-long/2addr v0, v2

    long-to-int v0, v0

    .line 113
    if-lez v0, :cond_0

    .line 114
    rsub-int v0, v0, 0x200

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->write([B)V

    .line 117
    :cond_0
    return-void
.end method

.method public putNextEntry(Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->closeCurrentEntry()V

    .line 85
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 86
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->writeEntryHeader([B)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->write([B)V

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    .line 91
    return-void
.end method

.method public write(I)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 54
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->b:J

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    if-eqz v0, :cond_0

    .line 57
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    .line 59
    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 6

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "The current entry["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] size["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->getSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] is smaller than the bytes["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] being written."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 75
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->b:J

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->d:Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;

    if-eqz v0, :cond_1

    .line 78
    iget-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarOutputStream;->c:J

    .line 80
    :cond_1
    return-void
.end method
