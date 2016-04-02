.class public final Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;
.super Ljava/lang/Object;


# static fields
.field public static final STREAM_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "StreamUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSafely(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "StreamUtils"

    const-string/jumbo v1, "closeSafely(Closeable): null == closeable."

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StreamUtils"

    const-string/jumbo v2, "closeSafely(Closeable): Exception occur."

    invoke-static {v1, v2, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static streamToBytes(Ljava/io/InputStream;)[B
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "StreamUtils"

    const-string/jumbo v2, "streamToBytes(InputStream): null == is"

    invoke-static {v1, v2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x2000

    :try_start_0
    new-array v0, v0, [B

    :goto_1
    const/4 v2, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "StreamUtils"

    const-string/jumbo v3, "streamToBytes(InputStream) Exception occur."

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :goto_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static streamToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v0, "StreamUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "streamToFile(InputStream, File["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]): null == is || null == file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "StreamUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "streamToFile(InputStream, File["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]): parent dir already exist, no need to call mkdirs()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_2
    if-eqz v1, :cond_6

    const-string/jumbo v0, "StreamUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "streamToFile(InputStream, File["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]): failed to delete exist file."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    const-string/jumbo v0, "StreamUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "streamToFile(InputStream, File["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]): target file don\'t exist, no need to delete it."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->streamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_3
    invoke-static {v1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    const-string/jumbo v1, "StreamUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "streamToFile(InputStream, File["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]): Exception occur."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "StreamUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "streamToFile(InputStream, File["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]): failed to make parent dir."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static streamToStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x2000

    :try_start_0
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "StreamUtils"

    const-string/jumbo v3, "streamToStream(InputStream, OutputStream): Exception occur."

    invoke-static {v2, v3, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :goto_1
    return v0

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static streamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->streamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static streamToString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "StreamUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "streamToString(InputStream, String["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]): null == is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v3, 0x2000

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "StreamUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "streamToString(InputStream, String["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]) Exception occur."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/StreamUtil;->closeSafely(Ljava/io/Closeable;)V

    throw v0
.end method
