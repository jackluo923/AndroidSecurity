.class public final Lcom/facebook/NativeAppCallAttachmentStore;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"

# interfaces
.implements Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;


# static fields
.field static final ATTACHMENTS_DIR_NAME:Ljava/lang/String; = "com.facebook.NativeAppCallAttachmentStore.files"

.field private static final TAG:Ljava/lang/String;

.field private static attachmentsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const-class v1, Lcom/facebook/NativeAppCallAttachmentStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.facebook.NativeAppCallAttachmentStore.files"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    .line 134
    :cond_0
    sget-object v0, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "imageAttachments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    const-string v7, "context"

    invoke-static {p1, v7}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-string v7, "callId"

    invoke-static {p2, v7}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    const-string v8, "imageAttachments"

    invoke-static {v7, v8}, Lcom/facebook/internal/Validate;->containsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 60
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    const-string v8, "imageAttachments"

    invoke-static {v7, v8}, Lcom/facebook/internal/Validate;->containsNoNullOrEmpty(Ljava/util/Collection;Ljava/lang/String;)V

    .line 62
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 101
    :cond_0
    return-void

    .line 67
    :cond_1
    sget-object v7, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v7, :cond_2

    .line 68
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallAttachmentStore;->cleanupAllAttachments(Landroid/content/Context;)V

    .line 71
    :cond_2
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallAttachmentStore;->ensureAttachmentsDirectoryExists(Landroid/content/Context;)Ljava/io/File;

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v5, "filesToCleanup":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 77
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "attachmentName":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 80
    .local v0, "attachment":Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    invoke-virtual {p0, p2, v1, v8}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v4

    .line 81
    .local v4, "file":Ljava/io/File;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v6, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "attachment":Landroid/graphics/Bitmap;
    .end local v1    # "attachmentName":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    .line 91
    .local v3, "exception":Ljava/io/IOException;
    sget-object v7, Lcom/facebook/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Got unexpected exception:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 99
    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 86
    .end local v3    # "exception":Ljava/io/IOException;
    .restart local v0    # "attachment":Landroid/graphics/Bitmap;
    .restart local v1    # "attachmentName":Ljava/lang/String;
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    .line 87
    :try_start_3
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 88
    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 92
    .end local v0    # "attachment":Landroid/graphics/Bitmap;
    .end local v1    # "attachmentName":Ljava/lang/String;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "exception":Ljava/io/IOException;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 94
    .restart local v4    # "file":Ljava/io/File;
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 95
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method cleanupAllAttachments(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    invoke-static {p1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 172
    return-void
.end method

.method public cleanupAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callId"    # Ljava/util/UUID;

    .prologue
    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v0

    .line 111
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 112
    return-void
.end method

.method ensureAttachmentsDirectoryExists(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-static {p1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 139
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 140
    return-object v0
.end method

.method getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    .locals 5
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "attachmentName"    # Ljava/lang/String;
    .param p3, "createDirs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-virtual {p0, p1, p3}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v0

    .line 157
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 164
    :goto_0
    return-object v2

    .line 162
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "UTF-8"

    invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;
    .locals 3
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "create"    # Z

    .prologue
    .line 144
    sget-object v1, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v1, :cond_1

    .line 145
    const/4 v0, 0x0

    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/facebook/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .local v0, "dir":Ljava/io/File;
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "attachmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    if-nez p1, :cond_1

    .line 118
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 122
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
.end method
