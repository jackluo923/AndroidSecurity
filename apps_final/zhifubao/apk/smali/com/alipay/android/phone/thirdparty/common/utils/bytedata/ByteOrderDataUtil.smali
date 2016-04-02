.class public Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;
.super Ljava/lang/Object;


# static fields
.field static BUF_INT:[B = null

.field static BUF_LONG:[B = null

.field static BUF_SHORT:[B = null

.field static BUF_STRING:[B = null

.field static final EIGHT:I = 0x8

.field static final FOUR:I = 0x4

.field static final ONE:I = 0x1

.field static final TWO:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_SHORT:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    const/16 v0, 0x7f

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_STRING:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBoolean(Ljava/io/BufferedInputStream;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static readByte(Ljava/io/BufferedInputStream;)B
    .locals 1

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static readDouble(Ljava/io/BufferedInputStream;)D
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getDouble([B)D

    move-result-wide v0

    return-wide v0
.end method

.method public static readFloat(Ljava/io/BufferedInputStream;)F
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getFloat([B)F

    move-result v0

    return v0
.end method

.method public static readInt(Ljava/io/BufferedInputStream;)I
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getInt([B)I

    move-result v0

    return v0
.end method

.method public static readLong(Ljava/io/BufferedInputStream;)J
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getLong([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static readShort(Ljava/io/BufferedInputStream;)S
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_SHORT:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedInputStream;->read([B)I

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_SHORT:[B

    invoke-static {v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->getShort([B)S

    move-result v0

    return v0
.end method

.method public static readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_STRING:[B

    array-length v0, v0

    if-le v1, v0, :cond_1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_STRING:[B

    invoke-virtual {p0, v0, v4, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_STRING:[B

    const-string/jumbo v3, "utf-8"

    invoke-direct {v0, v2, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static readStringArray(Ljava/io/BufferedInputStream;)[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-static {p0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->readString(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static writeBoolean(Ljava/io/BufferedOutputStream;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeByte(Ljava/io/BufferedOutputStream;B)V
    .locals 0

    invoke-virtual {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public static writeDouble(Ljava/io/BufferedOutputStream;D)V
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    invoke-static {p1, p2, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putDouble(D[B)V

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public static writeFloat(Ljava/io/BufferedOutputStream;F)V
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putFloat(F[B)V

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public static writeInt(Ljava/io/BufferedOutputStream;I)V
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putInt(I[B)V

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_INT:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public static writeLong(Ljava/io/BufferedOutputStream;J)V
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    invoke-static {p1, p2, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putLong(J[B)V

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_LONG:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public static writeShort(Ljava/io/BufferedOutputStream;S)V
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_SHORT:[B

    invoke-static {p1, v0}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderValues;->putShort(S[B)V

    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->BUF_SHORT:[B

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public static writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeStringArray(Ljava/io/BufferedOutputStream;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    :cond_1
    return-void

    :cond_2
    array-length v1, p1

    invoke-virtual {p0, v1}, Ljava/io/BufferedOutputStream;->write(I)V

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-static {p0, v1}, Lcom/alipay/android/phone/thirdparty/common/utils/bytedata/ByteOrderDataUtil;->writeString(Ljava/io/BufferedOutputStream;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
