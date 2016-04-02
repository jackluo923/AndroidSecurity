.class public Lmobi/monaca/framework/bootloader/LocalFileBootloader;
.super Ljava/lang/Object;
.source "LocalFileBootloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;
    }
.end annotation


# static fields
.field protected static final BOOTLOADER_FILES_PREFERENCE_NAME:Ljava/lang/String;

.field protected static final BOOTLOADER_PREFERENCE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field public static mShouldExtractAssets:Z


# instance fields
.field protected bootloaderPreferences:Lmobi/monaca/framework/bootloader/BootloaderPreferences;

.field protected context:Landroid/content/Context;

.field protected dataDirPath:Ljava/lang/String;

.field protected fail:Ljava/lang/Runnable;

.field protected success:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->BOOTLOADER_PREFERENCE_NAME:Ljava/lang/String;

    .line 30
    sget-object v0, Lmobi/monaca/framework/UserIdentifier;->identifier:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    sput-object v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->BOOTLOADER_FILES_PREFERENCE_NAME:Ljava/lang/String;

    .line 31
    const-class v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "success"    # Ljava/lang/Runnable;
    .param p3, "fail"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->success:Ljava/lang/Runnable;

    .line 43
    iput-object p3, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->fail:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Lmobi/monaca/framework/bootloader/BootloaderPreferences;

    invoke-direct {v0, p1}, Lmobi/monaca/framework/bootloader/BootloaderPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->bootloaderPreferences:Lmobi/monaca/framework/bootloader/BootloaderPreferences;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iput-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->dataDirPath:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getFullPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static join(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "elt":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 171
    .end local v1    # "elt":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 174
    const-string v4, ""

    .line 177
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static loadFileUsingBootloader(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    sget v2, Lmobi/monaca/framework/psedo/R$string;->data_dir_url:I

    invoke-static {v2}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "filePath":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "localAssetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 121
    :goto_1
    return-object v2

    .line 115
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "localAssetFile":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-static {v3}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    .restart local v0    # "filePath":Ljava/lang/String;
    .restart local v1    # "localAssetFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_1
.end method

.method public static needToUseLocalFileBootloader()Z
    .locals 2

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    sget v1, Lmobi/monaca/framework/psedo/R$string;->open_asset_regular_expression:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "newPath":Ljava/lang/String;
    sget-boolean v1, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->mShouldExtractAssets:Z

    if-eqz v1, :cond_0

    .line 105
    invoke-static {p0, p1}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->loadFileUsingBootloader(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    .line 107
    :cond_0
    invoke-static {}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->needToUseLocalFileBootloader()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-static {p0, v0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->loadFileUsingBootloader(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method public static setup(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "runner"    # Ljava/lang/Runnable;
    .param p2, "fail"    # Ljava/lang/Runnable;

    .prologue
    .line 68
    new-instance v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;

    invoke-direct {v0, p0, p1, p2}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->execute()V

    .line 69
    return-void
.end method


# virtual methods
.method protected aggregateAssetsFileList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v5, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 133
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->existAsset(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-static {v6}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->aggregateAssetsFileList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmobi/monaca/framework/util/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 144
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    return-void
.end method

.method protected clean()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->bootloaderPreferences:Lmobi/monaca/framework/bootloader/BootloaderPreferences;

    invoke-virtual {v0}, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->clear()V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmobi/monaca/framework/psedo/R$string;->relative_www_dir:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->cleanFiles(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method protected cleanFiles(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 225
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 226
    .local v1, "child":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->cleanFiles(Ljava/lang/String;)V

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "child":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 232
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return-void

    .line 230
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method protected copyAssetToLocal(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 194
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 196
    .local v0, "buffer":[B
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->slash:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 199
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 200
    .local v5, "output":Ljava/io/OutputStream;
    iget-object v6, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 202
    .local v3, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 203
    .local v4, "n":I
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 204
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 209
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "n":I
    .end local v5    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 207
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "n":I
    .restart local v5    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 208
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 214
    return-void

    .line 211
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "n":I
    .end local v5    # "output":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Lmobi/monaca/framework/bootloader/AbortException;

    invoke-direct {v6, v1}, Lmobi/monaca/framework/bootloader/AbortException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method protected execute()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;

    invoke-direct {v0, p0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;-><init>(Lmobi/monaca/framework/bootloader/LocalFileBootloader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask;->execute([Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method protected existAsset(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 182
    :try_start_0
    iget-object v2, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 183
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const/4 v2, 0x1

    .end local v1    # "stream":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 184
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getAppliationVersionCode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 57
    const-string v1, "0"

    goto :goto_0
.end method

.method protected getApplicationLocalFileList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v5, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lmobi/monaca/framework/psedo/R$string;->relative_www_dir:I

    invoke-static {v7}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 150
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lmobi/monaca/framework/psedo/R$string;->relative_www_dir:I

    invoke-static {v8}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5}, Lmobi/monaca/framework/bootloader/LocalFileUtil;->aggregateApplicationLocalFileList(Ljava/io/File;Ljava/util/ArrayList;)V

    .line 153
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 155
    .local v4, "start":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 160
    return-object v3
.end method

.method protected getAssetsFileList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget v1, Lmobi/monaca/framework/psedo/R$string;->www:I

    invoke-static {v1}, Lmobi/monaca/framework/MonacaApplication;->getStringFromResource(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->aggregateAssetsFileList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 86
    return-object v0
.end method

.method protected isAppVersionUpdated()Z
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->bootloaderPreferences:Lmobi/monaca/framework/bootloader/BootloaderPreferences;

    invoke-virtual {v1}, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->getAppVersionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->getAppliationVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 73
    .local v0, "updated":Z
    :goto_0
    return v0

    .line 72
    .end local v0    # "updated":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needsInitialization()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->isAppVersionUpdated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmobi/monaca/framework/bootloader/LocalFileBootloader;->bootloaderPreferences:Lmobi/monaca/framework/bootloader/BootloaderPreferences;

    invoke-virtual {v0}, Lmobi/monaca/framework/bootloader/BootloaderPreferences;->isAppPackageUpdated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
