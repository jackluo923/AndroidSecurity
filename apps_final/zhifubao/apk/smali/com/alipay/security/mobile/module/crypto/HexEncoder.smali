.class public Lcom/alipay/security/mobile/module/crypto/HexEncoder;
.super Ljava/lang/Object;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->encodingTable:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    invoke-virtual {p0}, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->initialiseDecodingTable()V

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v3, v1

    :goto_0
    if-lez v3, :cond_0

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-ge v0, v3, :cond_3

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aget-byte v4, v4, v1

    :goto_3
    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->a(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v5, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v0, v5, v0

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    return v2
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 5

    const/4 v0, 0x0

    add-int v1, p2, p3

    move v3, v1

    :goto_0
    if-le v3, p2, :cond_0

    add-int/lit8 v1, v3, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-static {v1}, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->a(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_0

    :cond_0
    move v2, v0

    move v0, p2

    :goto_1
    if-ge v0, v3, :cond_3

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_1

    aget-byte v0, p1, v1

    int-to-char v0, v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->a(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    aget-byte v1, v4, v1

    :goto_3
    if-ge v0, v3, :cond_2

    aget-byte v4, p1, v0

    int-to-char v4, v4

    invoke-static {v4}, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->a(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v4, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    aget-byte v0, v4, v0

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p4, v0}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, p2

    goto :goto_1

    :cond_3
    return v2
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 4

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v3, v1, 0x4

    aget-byte v2, v2, v3

    invoke-virtual {p4, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->encodingTable:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v2, v1

    invoke-virtual {p4, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p3, 0x2

    return v0
.end method

.method protected initialiseDecodingTable()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v1, 0x41

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v3, 0x61

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v1, 0x42

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v1, 0x43

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v1, 0x44

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v1, 0x45

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v3, 0x65

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v1, 0x46

    iget-object v2, p0, Lcom/alipay/security/mobile/module/crypto/HexEncoder;->decodingTable:[B

    const/16 v3, 0x66

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    return-void
.end method
