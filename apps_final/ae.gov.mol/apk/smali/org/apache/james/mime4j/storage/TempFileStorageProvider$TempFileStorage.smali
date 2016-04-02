.class final Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;
.super Ljava/lang/Object;
.source "TempFileStorageProvider.java"

# interfaces
.implements Lorg/apache/james/mime4j/storage/Storage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/storage/TempFileStorageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TempFileStorage"
.end annotation


# static fields
.field private static final filesToDelete:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->filesToDelete:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    .line 147
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 5

    .prologue
    .line 158
    sget-object v3, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->filesToDelete:Ljava/util/Set;

    monitor-enter v3

    .line 159
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 160
    sget-object v2, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->filesToDelete:Ljava/util/Set;

    iget-object v4, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    .line 164
    :cond_0
    sget-object v2, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->filesToDelete:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 165
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 167
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 171
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "storage has been deleted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/apache/james/mime4j/storage/TempFileStorageProvider$TempFileStorage;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
