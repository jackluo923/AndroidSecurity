.class public Lcom/alipay/mobile/common/patch/dir/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static childCount(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 175
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 178
    array-length v0, v1

    goto :goto_0
.end method

.method public static childOf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 158
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static cleanPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    :goto_0
    return-object p0

    .line 186
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->copy(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 288
    :cond_1
    :goto_0
    return v0

    .line 236
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 241
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 242
    goto :goto_0

    .line 246
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    if-nez p2, :cond_5

    move v0, v1

    .line 248
    goto :goto_0

    .line 250
    :cond_5
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/lang/String;)Z

    .line 253
    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 254
    goto :goto_0

    .line 257
    :cond_7
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 263
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    const/16 v4, 0x4000

    :try_start_1
    new-array v4, v4, [B

    .line 273
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    .line 274
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 283
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    move v0, v1

    .line 286
    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 266
    goto :goto_0

    .line 276
    :cond_8
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 283
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 284
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 281
    :catchall_0
    move-exception v0

    .line 282
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 283
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 286
    :goto_3
    throw v0

    .line 284
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public static create(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->create(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static create(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    const/4 v0, 0x1

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    .line 40
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static delete(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return v1

    .line 114
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 120
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 121
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    or-int/2addr v1, v0

    .line 125
    goto :goto_0
.end method

.method public static delete(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    .line 105
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static exists(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static exists(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 129
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    .line 132
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static fileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 298
    :goto_0
    return-object v0

    .line 296
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    if-nez p0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v0, ""

    .line 317
    :goto_0
    return-object v0

    .line 313
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 314
    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 315
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 317
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    const/4 p0, 0x0

    .line 375
    :cond_0
    :goto_0
    return-object p0

    .line 371
    :cond_1
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 372
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 373
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileStem(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 387
    :goto_0
    return-object v0

    .line 383
    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 384
    if-lez v0, :cond_1

    .line 385
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getLastModified(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 463
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    .line 467
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 469
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 470
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 471
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    if-nez p0, :cond_0

    .line 322
    const-string/jumbo v0, "*/*"

    .line 325
    :goto_0
    return-object v0

    .line 324
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const-string/jumbo v0, "*/*"

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 334
    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string/jumbo v0, "*/*"

    goto :goto_0
.end method

.method public static getParent(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    const/4 v0, 0x0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 146
    :goto_0
    return-object v0

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->cleanPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->getParent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 392
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-object v0

    .line 396
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 398
    const/16 v3, 0x5000

    if-gt v2, v3, :cond_0

    .line 402
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 403
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 406
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 408
    :goto_1
    const/4 v4, -0x1

    const/4 v5, 0x0

    const/16 v6, 0x400

    invoke-virtual {v2, v1, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 410
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 415
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 412
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 413
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 414
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public static isFile(Ljava/io/File;)Z
    .locals 1

    .prologue
    .line 353
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 343
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 344
    if-nez v0, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    .line 348
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFolder(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 358
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    .line 359
    if-nez v0, :cond_0

    .line 360
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    .line 363
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0
.end method

.method public static mkdirs(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->mkdirs(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static mkdirs(Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFolder(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    if-nez p1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/io/File;)Z

    .line 62
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_1
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->move(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static move(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    if-eqz p2, :cond_0

    .line 86
    invoke-static {p1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->delete(Ljava/lang/String;)Z

    .line 91
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v0, 0x4000

    .line 442
    if-nez p0, :cond_0

    .line 443
    const/4 v0, 0x0

    .line 459
    :goto_0
    return-object v0

    .line 446
    :cond_0
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 447
    new-array v2, v0, [B

    .line 450
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 451
    :goto_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 452
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 453
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 458
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static final read(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 422
    .line 425
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :try_start_1
    invoke-static {v1}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->read(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 430
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 438
    :cond_0
    :goto_0
    return-object v0

    .line 430
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    .line 432
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 435
    :catch_1
    move-exception v1

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_1

    .line 432
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 435
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 430
    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static size(Ljava/io/File;)J
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 203
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-wide v0

    .line 208
    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->isFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 214
    if-eqz v5, :cond_0

    array-length v2, v5

    if-eqz v2, :cond_0

    .line 218
    array-length v6, v5

    .line 219
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_0

    .line 220
    aget-object v3, v5, v2

    .line 221
    invoke-static {v3}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->size(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v3, v0

    .line 219
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_1
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 195
    if-nez p0, :cond_0

    .line 196
    const-wide/16 v0, 0x0

    .line 199
    :goto_0
    return-wide v0

    .line 198
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-static {v0}, Lcom/alipay/mobile/common/patch/dir/FileUtil;->size(Ljava/io/File;)J

    move-result-wide v0

    goto :goto_0
.end method
