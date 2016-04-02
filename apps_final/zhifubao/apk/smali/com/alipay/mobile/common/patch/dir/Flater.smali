.class public Lcom/alipay/mobile/common/patch/dir/Flater;
.super Ljava/lang/Object;
.source "Flater.java"


# static fields
.field private static final a:Ljava/nio/charset/Charset;

.field private static final b:Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/nio/charset/Charset;

    .line 80
    new-instance v0, Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;-><init>(Lcom/alipay/mobile/common/patch/dir/Flater$1;)V

    sput-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->b:Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;

    return-void

    .line 24
    :cond_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 140
    const/4 v2, 0x0

    .line 143
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    .line 147
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 149
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 150
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    if-eqz v1, :cond_0

    .line 162
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 169
    :cond_0
    :goto_2
    return-void

    .line 160
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 164
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 160
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 162
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 166
    :cond_2
    :goto_4
    throw v0

    .line 164
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 160
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 156
    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static a(Ljava/io/File;Ljava/io/OutputStream;I)V
    .locals 7

    .prologue
    const/16 v6, 0x2f

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 85
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/patch/dir/Flater;->b:Lcom/alipay/mobile/common/patch/dir/Flater$FlatComparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 90
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 91
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    if-eq v3, v6, :cond_1

    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/alipay/mobile/common/patch/dir/Flater;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 95
    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 101
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 91
    :cond_2
    const/16 v1, 0x2f

    :try_start_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 98
    :cond_3
    :try_start_3
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 105
    :cond_4
    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 320
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 321
    invoke-static {v4}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;)Z

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 329
    :goto_1
    return v0

    .line 327
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static packFolderToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 35
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x0

    .line 46
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    .line 51
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 52
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    invoke-static {v1, v2, v5}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 57
    :catch_1
    move-exception v1

    move-object v2, v3

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    if-eqz v2, :cond_0

    .line 64
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 66
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v3, :cond_2

    .line 64
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 68
    :cond_2
    :goto_4
    throw v0

    .line 66
    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 62
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 57
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static unpackFileToFolder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 182
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x0

    .line 310
    :goto_0
    return v0

    .line 188
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    .line 191
    const/4 v4, 0x0

    .line 194
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 199
    invoke-static {v7}, Lcom/alipay/mobile/common/patch/dir/Flater;->a(Ljava/io/File;)Z

    move-result v2

    .line 201
    if-nez v2, :cond_4

    .line 202
    const/4 v0, 0x0

    goto :goto_0

    .line 206
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 207
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/16 v0, 0x400

    :try_start_1
    new-array v8, v0, [C

    .line 210
    const/4 v5, 0x0

    .line 211
    const/4 v3, 0x1

    .line 212
    const-wide/16 v0, 0x0

    .line 213
    const/4 v2, 0x0

    .line 216
    :cond_5
    :goto_1
    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 218
    if-ltz v9, :cond_c

    .line 219
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-lez v10, :cond_8

    .line 223
    int-to-long v10, v2

    cmp-long v10, v10, v0

    if-gtz v10, :cond_5

    .line 224
    invoke-virtual {v4, v9}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    add-int/lit8 v2, v2, 0x1

    .line 227
    int-to-long v9, v2

    cmp-long v9, v9, v0

    if-nez v9, :cond_5

    .line 228
    const/4 v3, 0x1

    .line 229
    const-wide/16 v0, 0x0

    .line 230
    const/4 v2, 0x0

    .line 233
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 290
    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 292
    if-eqz v1, :cond_6

    .line 297
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 304
    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 306
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 310
    :cond_7
    :goto_4
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :cond_8
    int-to-char v9, v9

    .line 245
    if-eqz v9, :cond_9

    .line 246
    :try_start_7
    aput-char v9, v8, v5

    .line 248
    add-int/lit8 v5, v5, 0x1

    .line 249
    goto :goto_1

    .line 252
    :cond_9
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v8, v10, v5}, Ljava/lang/String;-><init>([CII)V

    .line 254
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_5

    .line 255
    if-eqz v3, :cond_b

    .line 259
    add-int/lit8 v5, v5, -0x1

    .line 260
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x2f

    if-ne v5, v9, :cond_a

    .line 264
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 285
    :goto_5
    const/4 v5, 0x0

    .line 286
    goto :goto_1

    .line 267
    :cond_a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 268
    const/4 v3, 0x0

    move-object v4, v5

    .line 271
    goto :goto_5

    .line 273
    :cond_b
    :try_start_8
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v0

    goto :goto_5

    .line 275
    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 279
    const/4 v3, 0x1

    .line 280
    const-wide/16 v0, 0x0

    .line 281
    const/4 v2, 0x0

    goto :goto_5

    .line 288
    :cond_c
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 304
    :goto_6
    if-eqz v4, :cond_d

    .line 306
    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 310
    :cond_d
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 299
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 308
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 299
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 308
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 295
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_8
    if-eqz v6, :cond_e

    .line 297
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 304
    :cond_e
    :goto_9
    if-eqz v4, :cond_f

    .line 306
    :try_start_d
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 310
    :cond_f
    :goto_a
    throw v0

    .line 299
    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 308
    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 295
    :catchall_1
    move-exception v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v6, v1

    goto :goto_8

    .line 290
    :catch_9
    move-exception v0

    goto/16 :goto_2
.end method
