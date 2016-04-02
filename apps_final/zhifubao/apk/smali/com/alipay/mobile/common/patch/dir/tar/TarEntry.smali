.class public Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;
.super Ljava/lang/Object;
.source "TarEntry.java"


# instance fields
.field protected file:Ljava/io/File;

.field protected header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    .line 14
    new-instance v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    invoke-direct {v0}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    .line 20
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->extractTarHeader(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->parseTarHeader([B)V

    .line 26
    return-void
.end method


# virtual methods
.method public computeCheckSum([B)J
    .locals 5

    .prologue
    .line 144
    const-wide/16 v1, 0x0

    .line 146
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 147
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-wide v1
.end method

.method public equals(Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;)Z
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public extractTarHeader(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->createHeader(Ljava/lang/String;JJZ)Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    .line 141
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupId:I

    return v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    return-object v0
.end method

.method public getModTime()Ljava/util/Date;
    .locals 5

    .prologue
    .line 105
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-wide v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->modTime:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v2, v2, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-wide v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->size:J

    return-wide v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userId:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDescendent(Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;)Z
    .locals 2

    .prologue
    .line 38
    iget-object v0, p1, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-byte v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkFlag:B

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    .line 130
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseTarHeader([B)V
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0xc

    const/16 v4, 0x64

    const/16 v3, 0x8

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/4 v1, 0x0

    invoke-static {p1, v1, v4}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    invoke-static {p1, v4, v3}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->mode:I

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x6c

    invoke-static {p1, v1, v3}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userId:I

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x74

    invoke-static {p1, v1, v3}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupId:I

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x7c

    invoke-static {p1, v1, v5}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->parseOctal([BII)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->size:J

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x88

    invoke-static {p1, v1, v5}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->parseOctal([BII)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->modTime:J

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x94

    invoke-static {p1, v1, v3}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->checkSum:I

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x9c

    aget-byte v1, p1, v1

    iput-byte v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkFlag:B

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x9d

    invoke-static {p1, v1, v4}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x101

    invoke-static {p1, v1, v3}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->magic:Ljava/lang/StringBuffer;

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x109

    invoke-static {p1, v1, v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x129

    invoke-static {p1, v1, v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x149

    invoke-static {p1, v1, v3}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->devMajor:I

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x151

    invoke-static {p1, v1, v3}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->parseOctal([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->devMinor:I

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const/16 v1, 0x159

    const/16 v2, 0x9b

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->parseName([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    .line 256
    return-void
.end method

.method public setGroupId(I)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iput p1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupId:I

    .line 73
    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    .line 89
    return-void
.end method

.method public setIds(II)V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->setUserId(I)V

    .line 93
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->setGroupId(I)V

    .line 94
    return-void
.end method

.method public setModTime(J)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->modTime:J

    .line 98
    return-void
.end method

.method public setModTime(Ljava/util/Date;)V
    .locals 5

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->modTime:J

    .line 102
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    .line 57
    return-void
.end method

.method public setSize(J)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iput-wide p1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->size:J

    .line 118
    return-void
.end method

.method public setUserId(I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iput p1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userId:I

    .line 65
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    .line 81
    return-void
.end method

.method public writeEntryHeader([B)V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/16 v7, 0xc

    const/16 v5, 0x20

    const/4 v2, 0x0

    const/16 v6, 0x8

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v0, v0, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->name:Ljava/lang/StringBuffer;

    invoke-static {v0, p1, v2, v8}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 158
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->mode:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0, v6}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userId:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0, v6}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupId:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0, v6}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-wide v3, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->size:J

    .line 167
    invoke-static {v3, v4, p1, v0, v7}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getLongOctalBytes(J[BII)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-wide v3, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->modTime:J

    invoke-static {v3, v4, p1, v0, v7}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getLongOctalBytes(J[BII)I

    move-result v3

    move v0, v2

    move v1, v3

    .line 173
    :goto_0
    if-ge v0, v6, :cond_0

    .line 174
    add-int/lit8 v4, v1, 0x1

    aput-byte v5, p1, v1

    .line 173
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_0

    .line 177
    :cond_0
    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-byte v4, v4, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkFlag:B

    aput-byte v4, p1, v1

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->linkName:Ljava/lang/StringBuffer;

    invoke-static {v1, p1, v0, v8}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->magic:Ljava/lang/StringBuffer;

    invoke-static {v1, p1, v0, v6}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->userName:Ljava/lang/StringBuffer;

    invoke-static {v1, p1, v0, v5}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->groupName:Ljava/lang/StringBuffer;

    invoke-static {v1, p1, v0, v5}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->devMajor:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0, v6}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->devMinor:I

    int-to-long v4, v1

    invoke-static {v4, v5, p1, v0, v6}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getOctalBytes(J[BII)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->header:Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;

    iget-object v1, v1, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->namePrefix:Ljava/lang/StringBuffer;

    const/16 v4, 0x9b

    invoke-static {v1, p1, v0, v4}, Lcom/alipay/mobile/common/patch/dir/tar/TarHeader;->getNameBytes(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    .line 194
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 195
    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_1

    .line 198
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/patch/dir/tar/TarEntry;->computeCheckSum([B)J

    move-result-wide v0

    .line 200
    invoke-static {v0, v1, p1, v3, v6}, Lcom/alipay/mobile/common/patch/dir/tar/Octal;->getCheckSumOctalBytes(J[BII)I

    .line 202
    return-void
.end method
