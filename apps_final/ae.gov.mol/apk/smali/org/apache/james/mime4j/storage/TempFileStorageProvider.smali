.class public Lorg/apache/james/mime4j/storage/TempFileStorageProvider;
.super Lorg/apache/james/mime4j/storage/AbstractStorageProvider;
.source "TempFileStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;,
        Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;
    }
.end annotation


# static fields
.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "m4j"


# instance fields
.field private final directory:Ljava/io/File;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "m4j"

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    .line 67
    const-string v0, "m4j"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/james/mime4j/storage/AbstractStorageProvider;-><init>()V

    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid prefix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->prefix:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->suffix:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->directory:Ljava/io/File;

    .line 101
    return-void
.end method


# virtual methods
.method public createStorageOutputStream()Lorg/apache/james/mime4j/storage/StorageOutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->prefix:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->suffix:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider;->directory:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 105
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 107
    new-instance v1, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorageOutputStream;-><init>(Ljava/io/File;)V

    return-object v1
.end method
