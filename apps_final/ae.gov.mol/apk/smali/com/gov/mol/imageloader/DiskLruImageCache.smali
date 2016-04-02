.class public Lcom/gov/mol/imageloader/DiskLruImageCache;
.super Ljava/lang/Object;
.source "DiskLruImageCache.java"


# static fields
.field private static final APP_VERSION:I = 0x1

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field private static final VALUE_COUNT:I = 0x1


# instance fields
.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mDiskCache:Lcom/gov/mol/disklrucache/DiskLruCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;
    .param p3, "diskCacheSize"    # I
    .param p4, "compressFormat"    # Landroid/graphics/Bitmap$CompressFormat;
    .param p5, "quality"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v2, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 29
    const/16 v2, 0x46

    iput v2, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mCompressQuality:I

    .line 45
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/gov/mol/imageloader/DiskLruImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 46
    .local v0, "diskCacheDir":Ljava/io/File;
    const/4 v2, 0x1

    .line 47
    const/4 v3, 0x1

    int-to-long v4, p3

    .line 46
    invoke-static {v0, v2, v3, v4, v5}, Lcom/gov/mol/disklrucache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/gov/mol/disklrucache/DiskLruCache;

    move-result-object v2

    iput-object v2, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mDiskCache:Lcom/gov/mol/disklrucache/DiskLruCache;

    .line 48
    iput-object p4, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 49
    iput p5, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mCompressQuality:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "diskCacheDir":Ljava/io/File;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 88
    .local v1, "isSDPresent":Z
    if-eqz v1, :cond_0

    .line 89
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "cachePath":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2

    .line 92
    .end local v0    # "cachePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "cachePath":Ljava/lang/String;
    goto :goto_0
.end method

.method private writeBitmapToFile(Landroid/graphics/Bitmap;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)Z
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "editor"    # Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    .line 68
    const/16 v3, 0x2000

    .line 67
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v0    # "out":Ljava/io/OutputStream;
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v2, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mCompressQuality:I

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 69
    :cond_0
    return v2

    .line 70
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    .line 71
    :goto_0
    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 74
    :cond_1
    throw v2

    .line 70
    .end local v0    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v0    # "out":Ljava/io/OutputStream;
    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mDiskCache:Lcom/gov/mol/disklrucache/DiskLruCache;

    invoke-virtual {v1}, Lcom/gov/mol/disklrucache/DiskLruCache;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "contained":Z
    const/4 v2, 0x0

    .line 170
    .local v2, "snapshot":Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;
    :try_start_0
    iget-object v3, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mDiskCache:Lcom/gov/mol/disklrucache/DiskLruCache;

    invoke-virtual {v3, p1}, Lcom/gov/mol/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 171
    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 175
    :goto_0
    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 180
    :cond_0
    :goto_1
    return v0

    .line 171
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    if-eqz v2, :cond_0

    .line 176
    invoke-virtual {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;->close()V

    goto :goto_1

    .line 174
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 175
    if-eqz v2, :cond_2

    .line 176
    invoke-virtual {v2}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 178
    :cond_2
    throw v3
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 139
    .local v4, "snapshot":Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;
    :try_start_0
    iget-object v5, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mDiskCache:Lcom/gov/mol/disklrucache/DiskLruCache;

    invoke-virtual {v5, p1}, Lcom/gov/mol/disklrucache/DiskLruCache;->get(Ljava/lang/String;)Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 140
    if-nez v4, :cond_1

    .line 151
    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {v4}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 141
    :cond_0
    const/4 v5, 0x0

    .line 156
    :goto_0
    return-object v5

    .line 143
    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v5}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    .line 144
    .local v3, "in":Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 145
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v5, 0x2000

    invoke-direct {v1, v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 146
    .local v1, "buffIn":Ljava/io/BufferedInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 151
    .end local v1    # "buffIn":Ljava/io/BufferedInputStream;
    :cond_2
    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {v4}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;->close()V

    .end local v3    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_1
    move-object v5, v0

    .line 156
    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {v4}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;->close()V

    goto :goto_1

    .line 150
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 151
    if-eqz v4, :cond_4

    .line 152
    invoke-virtual {v4}, Lcom/gov/mol/disklrucache/DiskLruCache$Snapshot;->close()V

    .line 154
    :cond_4
    throw v5
.end method

.method public getCacheFolder()Ljava/io/File;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mDiskCache:Lcom/gov/mol/disklrucache/DiskLruCache;

    invoke-virtual {v0}, Lcom/gov/mol/disklrucache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/graphics/Bitmap;

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "editor":Lcom/gov/mol/disklrucache/DiskLruCache$Editor;
    :try_start_0
    iget-object v2, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mDiskCache:Lcom/gov/mol/disklrucache/DiskLruCache;

    invoke-virtual {v2, p1}, Lcom/gov/mol/disklrucache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/gov/mol/disklrucache/DiskLruCache$Editor;

    move-result-object v1

    .line 107
    if-nez v1, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/gov/mol/imageloader/DiskLruImageCache;->writeBitmapToFile(Landroid/graphics/Bitmap;Lcom/gov/mol/disklrucache/DiskLruCache$Editor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/gov/mol/imageloader/DiskLruImageCache;->mDiskCache:Lcom/gov/mol/disklrucache/DiskLruCache;

    invoke-virtual {v2}, Lcom/gov/mol/disklrucache/DiskLruCache;->flush()V

    .line 113
    invoke-virtual {v1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 120
    :try_start_1
    invoke-virtual {v1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v2

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/gov/mol/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
