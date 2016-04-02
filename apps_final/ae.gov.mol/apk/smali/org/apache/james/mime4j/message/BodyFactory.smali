.class public Lorg/apache/james/mime4j/message/BodyFactory;
.super Ljava/lang/Object;
.source "BodyFactory.java"


# static fields
.field private static final FALLBACK_CHARSET:Ljava/nio/charset/Charset;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/james/mime4j/message/BodyFactory;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    .line 41
    sget-object v0, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/storage/StorageProvider;)V
    .locals 0
    .param p1, "storageProvider"    # Lorg/apache/james/mime4j/storage/StorageProvider;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    invoke-static {}, Lorg/apache/james/mime4j/storage/DefaultStorageProvider;->getInstance()Lorg/apache/james/mime4j/storage/StorageProvider;

    move-result-object p1

    .line 65
    :cond_0
    iput-object p1, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    .line 66
    return-void
.end method

.method private static toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;
    .locals 4
    .param p0, "mimeCharset"    # Ljava/lang/String;
    .param p1, "forEncoding"    # Z

    .prologue
    .line 282
    invoke-static {p0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 284
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIME charset \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "corresponding Java charset. Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 288
    :cond_0
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    .line 307
    :goto_0
    return-object v1

    .line 291
    :cond_1
    if-eqz p1, :cond_3

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isEncodingSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 292
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIME charset \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not support encoding. Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 296
    :cond_2
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 299
    :cond_3
    if-nez p1, :cond_5

    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 300
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIME charset \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not support decoding. Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 304
    :cond_4
    sget-object v1, Lorg/apache/james/mime4j/message/BodyFactory;->FALLBACK_CHARSET:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 307
    :cond_5
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public binaryBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/message/BinaryBody;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 92
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v1, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    .line 93
    .local v0, "storage":Lorg/apache/james/mime4j/storage/Storage;
    new-instance v1, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    new-instance v2, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v1
.end method

.method public binaryBody(Lorg/apache/james/mime4j/storage/Storage;)Lorg/apache/james/mime4j/message/BinaryBody;
    .locals 2
    .param p1, "storage"    # Lorg/apache/james/mime4j/storage/Storage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 116
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/message/StorageBinaryBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/message/StorageBinaryBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;)V

    return-object v0
.end method

.method public getStorageProvider()Lorg/apache/james/mime4j/storage/StorageProvider;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    return-object v0
.end method

.method public textBody(Ljava/io/InputStream;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 137
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v1, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v0

    .line 138
    .local v0, "storage":Lorg/apache/james/mime4j/storage/Storage;
    new-instance v1, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v2, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    sget-object v3, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public textBody(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "mimeCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 164
    :cond_0
    if-nez p2, :cond_1

    .line 165
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 167
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/message/BodyFactory;->storageProvider:Lorg/apache/james/mime4j/storage/StorageProvider;

    invoke-interface {v2, p1}, Lorg/apache/james/mime4j/storage/StorageProvider;->store(Ljava/io/InputStream;)Lorg/apache/james/mime4j/storage/Storage;

    move-result-object v1

    .line 168
    .local v1, "storage":Lorg/apache/james/mime4j/storage/Storage;
    const/4 v2, 0x0

    invoke-static {p2, v2}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 169
    .local v0, "charset":Ljava/nio/charset/Charset;
    new-instance v2, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v3, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v3, v1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v2, v3, v0}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v2
.end method

.method public textBody(Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 252
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/message/StringTextBody;

    sget-object v1, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public textBody(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mimeCharset"    # Ljava/lang/String;

    .prologue
    .line 272
    if-nez p1, :cond_0

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 274
    :cond_0
    if-nez p2, :cond_1

    .line 275
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 277
    :cond_1
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 278
    .local v0, "charset":Ljava/nio/charset/Charset;
    new-instance v1, Lorg/apache/james/mime4j/message/StringTextBody;

    invoke-direct {v1, p1, v0}, Lorg/apache/james/mime4j/message/StringTextBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-object v1
.end method

.method public textBody(Lorg/apache/james/mime4j/storage/Storage;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 3
    .param p1, "storage"    # Lorg/apache/james/mime4j/storage/Storage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 196
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v1, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v1, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    sget-object v2, Lorg/apache/james/mime4j/util/CharsetUtil;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public textBody(Lorg/apache/james/mime4j/storage/Storage;Ljava/lang/String;)Lorg/apache/james/mime4j/message/TextBody;
    .locals 3
    .param p1, "storage"    # Lorg/apache/james/mime4j/storage/Storage;
    .param p2, "mimeCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 229
    :cond_0
    if-nez p2, :cond_1

    .line 230
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 232
    :cond_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lorg/apache/james/mime4j/message/BodyFactory;->toJavaCharset(Ljava/lang/String;Z)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 233
    .local v0, "charset":Ljava/nio/charset/Charset;
    new-instance v1, Lorg/apache/james/mime4j/message/StorageTextBody;

    new-instance v2, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;

    invoke-direct {v2, p1}, Lorg/apache/james/mime4j/storage/MultiReferenceStorage;-><init>(Lorg/apache/james/mime4j/storage/Storage;)V

    invoke-direct {v1, v2, v0}, Lorg/apache/james/mime4j/message/StorageTextBody;-><init>(Lorg/apache/james/mime4j/storage/MultiReferenceStorage;Ljava/nio/charset/Charset;)V

    return-object v1
.end method
