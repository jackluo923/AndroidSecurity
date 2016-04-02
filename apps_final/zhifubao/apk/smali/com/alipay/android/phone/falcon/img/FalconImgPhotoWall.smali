.class public Lcom/alipay/android/phone/falcon/img/FalconImgPhotoWall;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getByteFormat([B)I
    .locals 3

    if-nez p1, :cond_1

    const/16 v0, 0xa

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->judgeDataFormat([B)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "image/bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public combineImage(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/ByteArrayOutputStream;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v7

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v1

    invoke-static {p2}, Lcom/alipay/android/phone/falcon/img/dataFormat;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-static {p3}, Lcom/alipay/android/phone/falcon/img/dataFormat;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {p4}, Lcom/alipay/android/phone/falcon/img/dataFormat;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v4

    invoke-static {p5}, Lcom/alipay/android/phone/falcon/img/dataFormat;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v5

    invoke-static {p6}, Lcom/alipay/android/phone/falcon/img/dataFormat;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/falcon/img/FalconImgPhotoWall;->combineImage([B[B[B[B[B[B)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v7

    goto :goto_0
.end method

.method public combineImage([B[B[B[B[B[B)Ljava/io/ByteArrayOutputStream;
    .locals 20

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/alipay/android/phone/falcon/img/FalconImgPhotoWall;->getByteFormat([B)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgPhotoWall;->getByteFormat([B)I

    move-result v7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgPhotoWall;->getByteFormat([B)I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgPhotoWall;->getByteFormat([B)I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgPhotoWall;->getByteFormat([B)I

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgPhotoWall;->getByteFormat([B)I

    move-result v19

    const/16 v2, 0xa

    if-ne v2, v10, :cond_7

    move-object/from16 v8, p2

    :goto_1
    const/16 v2, 0xa

    if-ne v2, v13, :cond_6

    move-object/from16 v11, p2

    :goto_2
    const/16 v2, 0xa

    move/from16 v0, v16

    if-ne v2, v0, :cond_5

    move-object/from16 v14, p2

    :goto_3
    const/16 v2, 0xa

    move/from16 v0, v19

    if-ne v2, v0, :cond_4

    move-object/from16 v17, p2

    :goto_4
    if-ltz v4, :cond_2

    if-ltz v7, :cond_2

    if-ltz v10, :cond_2

    if-ltz v13, :cond_2

    if-ltz v16, :cond_2

    if-gez v19, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p2

    array-length v6, v0

    array-length v9, v8

    array-length v12, v11

    array-length v15, v14

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v19}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->combineImage([BII[BII[BII[BII[BII[BII)[B

    move-result-object v3

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v17, p6

    goto :goto_4

    :cond_5
    move-object/from16 v14, p5

    goto :goto_3

    :cond_6
    move-object/from16 v11, p4

    goto :goto_2

    :cond_7
    move-object/from16 v8, p3

    goto :goto_1
.end method
