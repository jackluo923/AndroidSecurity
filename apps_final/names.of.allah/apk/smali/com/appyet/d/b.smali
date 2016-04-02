.class public final Lcom/appyet/d/b;
.super Ljava/lang/Object;


# direct methods
.method public static a([B)Ljava/lang/String;
    .locals 9

    const/16 v8, 0xff

    const/16 v7, 0xfe

    const/4 v1, 0x0

    if-eqz p0, :cond_16

    :try_start_0
    new-instance v4, Lorg/a/a/c;

    invoke-direct {v4}, Lorg/a/a/c;-><init>()V

    array-length v2, p0

    iget-boolean v0, v4, Lorg/a/a/c;->b:Z

    if-nez v0, :cond_2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, v4, Lorg/a/a/c;->d:Z

    :cond_0
    iget-boolean v0, v4, Lorg/a/a/c;->c:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, v4, Lorg/a/a/c;->c:Z

    const/4 v0, 0x3

    if-le v2, v0, :cond_7

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_0
    iget-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, v4, Lorg/a/a/c;->b:Z

    :cond_2
    :goto_1
    iget-boolean v0, v4, Lorg/a/a/c;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    iput-boolean v0, v4, Lorg/a/a/c;->b:Z

    iget-object v0, v4, Lorg/a/a/c;->i:Lorg/a/a/a;

    if-eqz v0, :cond_3

    iget-object v0, v4, Lorg/a/a/c;->i:Lorg/a/a/a;

    iget-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    :cond_3
    :goto_2
    iget-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v4}, Lorg/a/a/c;->a()V

    :goto_3
    return-object v0

    :sswitch_0
    const/16 v0, 0xbb

    if-ne v3, v0, :cond_1

    const/16 v0, 0xbf

    if-ne v5, v0, :cond_1

    sget-object v0, Lorg/a/a/b;->u:Ljava/lang/String;

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :sswitch_1
    if-ne v3, v8, :cond_4

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    sget-object v0, Lorg/a/a/b;->A:Ljava/lang/String;

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-ne v3, v8, :cond_1

    sget-object v0, Lorg/a/a/b;->v:Ljava/lang/String;

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    if-nez v3, :cond_5

    if-ne v5, v7, :cond_5

    if-ne v6, v8, :cond_5

    sget-object v0, Lorg/a/a/b;->x:Ljava/lang/String;

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-nez v3, :cond_1

    if-ne v5, v8, :cond_1

    if-ne v6, v7, :cond_1

    sget-object v0, Lorg/a/a/b;->B:Ljava/lang/String;

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    if-ne v3, v7, :cond_6

    if-nez v5, :cond_6

    if-nez v6, :cond_6

    sget-object v0, Lorg/a/a/b;->y:Ljava/lang/String;

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto :goto_0

    :cond_6
    if-ne v3, v7, :cond_1

    sget-object v0, Lorg/a/a/b;->w:Ljava/lang/String;

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto :goto_0

    :cond_7
    add-int/lit8 v3, v2, 0x0

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_f

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_c

    const/16 v6, 0xa0

    if-eq v5, v6, :cond_c

    iget-object v5, v4, Lorg/a/a/c;->a:Lorg/a/a/d;

    sget-object v6, Lorg/a/a/d;->c:Lorg/a/a/d;

    if-eq v5, v6, :cond_b

    sget-object v5, Lorg/a/a/d;->c:Lorg/a/a/d;

    iput-object v5, v4, Lorg/a/a/c;->a:Lorg/a/a/d;

    iget-object v5, v4, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    :cond_8
    iget-object v5, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    if-nez v5, :cond_9

    iget-object v5, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    const/4 v6, 0x0

    new-instance v7, Lorg/a/a/a/k;

    invoke-direct {v7}, Lorg/a/a/a/k;-><init>()V

    aput-object v7, v5, v6

    :cond_9
    iget-object v5, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    if-nez v5, :cond_a

    iget-object v5, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    const/4 v6, 0x1

    new-instance v7, Lorg/a/a/a/l;

    invoke-direct {v7}, Lorg/a/a/a/l;-><init>()V

    aput-object v7, v5, v6

    :cond_a
    iget-object v5, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-nez v5, :cond_b

    iget-object v5, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    const/4 v6, 0x2

    new-instance v7, Lorg/a/a/a/j;

    invoke-direct {v7}, Lorg/a/a/a/j;-><init>()V

    aput-object v7, v5, v6

    :cond_b
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    iget-object v6, v4, Lorg/a/a/c;->a:Lorg/a/a/d;

    sget-object v7, Lorg/a/a/d;->a:Lorg/a/a/d;

    if-ne v6, v7, :cond_e

    const/16 v6, 0x1b

    if-eq v5, v6, :cond_d

    const/16 v6, 0x7b

    if-ne v5, v6, :cond_e

    iget-byte v5, v4, Lorg/a/a/c;->e:B

    const/16 v6, 0x7e

    if-ne v5, v6, :cond_e

    :cond_d
    sget-object v5, Lorg/a/a/d;->b:Lorg/a/a/d;

    iput-object v5, v4, Lorg/a/a/c;->a:Lorg/a/a/d;

    :cond_e
    aget-byte v5, p0, v0

    iput-byte v5, v4, Lorg/a/a/c;->e:B

    goto :goto_5

    :cond_f
    iget-object v0, v4, Lorg/a/a/c;->a:Lorg/a/a/d;

    sget-object v3, Lorg/a/a/d;->b:Lorg/a/a/d;

    if-ne v0, v3, :cond_11

    iget-object v0, v4, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    if-nez v0, :cond_10

    new-instance v0, Lorg/a/a/a/g;

    invoke-direct {v0}, Lorg/a/a/a/g;-><init>()V

    iput-object v0, v4, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    :cond_10
    iget-object v0, v4, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    invoke-virtual {v0, p0, v2}, Lorg/a/a/a/b;->a([BI)Lorg/a/a/a/c;

    move-result-object v0

    sget-object v2, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, v4, Lorg/a/a/c;->b:Z

    iget-object v0, v4, Lorg/a/a/c;->h:Lorg/a/a/a/b;

    invoke-virtual {v0}, Lorg/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    iget-object v0, v4, Lorg/a/a/c;->a:Lorg/a/a/d;

    sget-object v3, Lorg/a/a/d;->c:Lorg/a/a/d;

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_6
    iget-object v3, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    aget-object v3, v3, v0

    invoke-virtual {v3, p0, v2}, Lorg/a/a/a/b;->a([BI)Lorg/a/a/a/c;

    move-result-object v3

    sget-object v5, Lorg/a/a/a/c;->b:Lorg/a/a/a/c;

    if-ne v3, v5, :cond_12

    const/4 v2, 0x1

    iput-boolean v2, v4, Lorg/a/a/c;->b:Z

    iget-object v2, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lorg/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_13
    iget-object v0, v4, Lorg/a/a/c;->a:Lorg/a/a/d;

    sget-object v2, Lorg/a/a/d;->c:Lorg/a/a/d;

    if-ne v0, v2, :cond_15

    const/4 v3, 0x0

    move v0, v1

    :goto_7
    iget-object v2, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    array-length v2, v2

    if-ge v1, v2, :cond_14

    iget-object v2, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/a/a/a/b;->b()F

    move-result v2

    cmpl-float v5, v2, v3

    if-lez v5, :cond_17

    move v0, v1

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_7

    :cond_14
    const v1, 0x3e4ccccd    # 0.2f

    cmpl-float v1, v3, v1

    if-lez v1, :cond_3

    iget-object v1, v4, Lorg/a/a/c;->g:[Lorg/a/a/a/b;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/a/a/a/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    iget-object v0, v4, Lorg/a/a/c;->i:Lorg/a/a/a;

    if-eqz v0, :cond_3

    iget-object v0, v4, Lorg/a/a/c;->i:Lorg/a/a/a;

    iget-object v0, v4, Lorg/a/a/c;->f:Ljava/lang/String;

    goto/16 :goto_2

    :cond_15
    iget-object v0, v4, Lorg/a/a/c;->a:Lorg/a/a/d;

    sget-object v0, Lorg/a/a/d;->b:Lorg/a/a/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_17
    move v2, v3

    goto :goto_8

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xef -> :sswitch_0
        0xfe -> :sswitch_1
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :goto_0
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    const/4 v0, 0x0

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/appyet/d/d;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
