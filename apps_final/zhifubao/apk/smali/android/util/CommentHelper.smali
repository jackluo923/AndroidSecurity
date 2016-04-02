.class public Landroid/util/CommentHelper;
.super Ljava/lang/Object;
.source "CommentHelper.java"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([BI)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v2, 0x0

    .line 61
    const/4 v0, 0x0

    .line 62
    new-array v5, v8, [B

    fill-array-data v5, :array_0

    .line 63
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 65
    add-int/lit8 v1, v1, -0x16

    move v4, v1

    :goto_0
    if-gez v4, :cond_0

    .line 87
    :goto_1
    return-object v0

    .line 66
    :cond_0
    const/4 v1, 0x1

    move v3, v2

    .line 67
    :goto_2
    if-lt v3, v8, :cond_1

    .line 73
    :goto_3
    if-eqz v1, :cond_5

    .line 75
    add-int/lit8 v0, v4, 0x14

    aget-byte v1, p0, v0

    .line 76
    add-int/lit8 v0, v4, 0x15

    aget-byte v0, p0, v0

    .line 78
    if-ltz v1, :cond_3

    .line 79
    :goto_4
    if-ltz v0, :cond_4

    :goto_5
    mul-int/lit16 v0, v0, 0x100

    .line 78
    add-int/2addr v1, v0

    .line 82
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v2, v4, 0x16

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>([BII)V

    goto :goto_1

    .line 68
    :cond_1
    add-int v6, v4, v3

    aget-byte v6, p0, v6

    aget-byte v7, v5, v3

    if-eq v6, v7, :cond_2

    move v1, v2

    .line 70
    goto :goto_3

    .line 67
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 78
    :cond_3
    add-int/lit16 v1, v1, 0x100

    goto :goto_4

    .line 79
    :cond_4
    add-int/lit16 v0, v0, 0x100

    goto :goto_5

    .line 65
    :cond_5
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_0

    .line 62
    nop

    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method public static extractZipComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 26
    sget-object v1, Landroid/util/CommentHelper;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    sget-object v0, Landroid/util/CommentHelper;->a:Ljava/lang/String;

    .line 57
    :goto_0
    return-object v0

    .line 29
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v3, v2

    .line 35
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const v1, 0x19000

    :try_start_1
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v1, v1, [B

    .line 38
    array-length v4, v1

    sub-int/2addr v3, v4

    .line 39
    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    .line 41
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 43
    invoke-static {v1, v3}, Landroid/util/CommentHelper;->a([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 48
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 56
    :cond_2
    :goto_1
    sput-object v0, Landroid/util/CommentHelper;->a:Ljava/lang/String;

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    if-eqz v2, :cond_2

    .line 50
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 51
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 48
    :goto_3
    if-eqz v2, :cond_3

    .line 50
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 54
    :cond_3
    :goto_4
    throw v0

    .line 51
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 47
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 45
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static getValueForKey(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    const-string/jumbo v0, "channelId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    :cond_0
    return-object v0
.end method
