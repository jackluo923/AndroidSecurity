.class public Lorg/ksoap2/transport/HttpTransportSE;
.super Lorg/ksoap2/transport/Transport;
.source "HttpTransportSE.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "contentLength"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "contentLength"    # I

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method private getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    :try_start_0
    check-cast p1, Ljava/util/zip/GZIPInputStream;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local p1    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object p1

    .line 296
    .restart local p1    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    goto :goto_0
.end method

.method private readDebug(Ljava/io/InputStream;ILjava/io/File;)Ljava/io/InputStream;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "contentLength"    # I
    .param p3, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x100

    const/4 v4, 0x0

    .line 263
    if-eqz p3, :cond_1

    .line 264
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 270
    .end local p2    # "contentLength":I
    .local v0, "bos":Ljava/io/OutputStream;
    :goto_0
    new-array v1, v5, [B

    .line 273
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {p1, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 274
    .local v2, "rd":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 280
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 281
    instance-of v3, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_0

    .line 282
    check-cast v0, Ljava/io/ByteArrayOutputStream;

    .end local v0    # "bos":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 284
    :cond_0
    const/4 v0, 0x0

    .line 285
    .restart local v0    # "bos":Ljava/io/OutputStream;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 287
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v3

    .line 267
    .end local v0    # "bos":Ljava/io/OutputStream;
    .end local v1    # "buf":[B
    .end local v2    # "rd":I
    .restart local p2    # "contentLength":I
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    if-lez p2, :cond_2

    .end local p2    # "contentLength":I
    :goto_2
    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .restart local v0    # "bos":Ljava/io/OutputStream;
    goto :goto_0

    .end local v0    # "bos":Ljava/io/OutputStream;
    .restart local p2    # "contentLength":I
    :cond_2
    const/high16 p2, 0x40000

    goto :goto_2

    .line 277
    .end local p2    # "contentLength":I
    .restart local v0    # "bos":Ljava/io/OutputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "rd":I
    :cond_3
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method


# virtual methods
.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p3, "headers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;Ljava/io/File;)Ljava/util/List;
    .locals 18
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .param p3, "headers"    # Ljava/util/List;
    .param p4, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const-string p1, "\"\""

    .line 144
    :cond_0
    const-string v15, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Lorg/ksoap2/transport/HttpTransportSE;->createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B

    move-result-object v12

    .line 146
    .local v12, "requestData":[B
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v12}, Ljava/lang/String;-><init>([B)V

    :goto_0
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    .line 147
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lorg/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;

    move-result-object v3

    .line 151
    .local v3, "connection":Lorg/ksoap2/transport/ServiceConnection;
    const-string v15, "User-Agent"

    const-string v16, "ksoap2-android/2.6.0+"

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p2

    iget v15, v0, Lorg/ksoap2/SoapEnvelope;->version:I

    const/16 v16, 0x78

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 156
    const-string v15, "SOAPAction"

    move-object/from16 v0, p1

    invoke-interface {v3, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    move-object/from16 v0, p2

    iget v15, v0, Lorg/ksoap2/SoapEnvelope;->version:I

    const/16 v16, 0x78

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 160
    const-string v15, "Content-Type"

    const-string v16, "application/soap+xml;charset=utf-8"

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_1
    const-string v15, "Connection"

    const-string v16, "close"

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v15, "Accept-Encoding"

    const-string v16, "gzip"

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v15, "Content-Length"

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    array-length v0, v12

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    array-length v15, v12

    invoke-interface {v3, v15}, Lorg/ksoap2/transport/ServiceConnection;->setFixedLengthStreamingMode(I)V

    .line 171
    if-eqz p3, :cond_4

    .line 172
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_4

    .line 173
    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ksoap2/HeaderProperty;

    .line 174
    .local v7, "hp":Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v7}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 146
    .end local v3    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    .end local v7    # "hp":Lorg/ksoap2/HeaderProperty;
    .end local v8    # "i":I
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 162
    .restart local v3    # "connection":Lorg/ksoap2/transport/ServiceConnection;
    :cond_3
    const-string v15, "Content-Type"

    const-string v16, "text/xml;charset=utf-8"

    move-object/from16 v0, v16

    invoke-interface {v3, v15, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_4
    const-string v15, "POST"

    invoke-interface {v3, v15}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 179
    invoke-interface {v3}, Lorg/ksoap2/transport/ServiceConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 181
    .local v11, "os":Ljava/io/OutputStream;
    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v11, v12, v15, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 182
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 183
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 184
    const/4 v12, 0x0

    .line 186
    const/4 v13, 0x0

    .line 187
    .local v13, "retHeaders":Ljava/util/List;
    const/4 v2, 0x0

    .line 188
    .local v2, "buf":[B
    const/16 v4, 0x2000

    .line 189
    .local v4, "contentLength":I
    const/4 v6, 0x0

    .line 193
    .local v6, "gZippedContent":Z
    :try_start_0
    invoke-interface {v3}, Lorg/ksoap2/transport/ServiceConnection;->getResponseCode()I

    move-result v14

    .line 194
    .local v14, "status":I
    const/16 v15, 0xc8

    if-eq v14, v15, :cond_6

    .line 195
    new-instance v15, Ljava/io/IOException;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "HTTP request failed, HTTP status: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v14    # "status":I
    :catch_0
    move-exception v5

    .line 232
    .local v5, "e":Ljava/io/IOException;
    if-eqz v6, :cond_d

    .line 233
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v9

    .line 239
    .local v9, "is":Ljava/io/InputStream;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v15, :cond_5

    if-eqz v9, :cond_5

    .line 241
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v9, v4, v1}, Lorg/ksoap2/transport/HttpTransportSE;->readDebug(Ljava/io/InputStream;ILjava/io/File;)Ljava/io/InputStream;

    .line 245
    :cond_5
    invoke-interface {v3}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 246
    throw v5

    .line 198
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v14    # "status":I
    :cond_6
    :try_start_1
    invoke-interface {v3}, Lorg/ksoap2/transport/ServiceConnection;->getResponseProperties()Ljava/util/List;

    move-result-object v13

    .line 199
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_a

    .line 200
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ksoap2/HeaderProperty;

    .line 202
    .restart local v7    # "hp":Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v7}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_8

    .line 199
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 207
    :cond_8
    invoke-virtual {v7}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string v16, "content-length"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 208
    invoke-virtual {v7}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    if-eqz v15, :cond_9

    .line 210
    :try_start_2
    invoke-virtual {v7}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 219
    :cond_9
    :goto_5
    :try_start_3
    invoke-virtual {v7}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v15

    const-string v16, "Content-Encoding"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-virtual {v7}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v15

    const-string v16, "gzip"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 221
    const/4 v6, 0x1

    .line 225
    .end local v7    # "hp":Lorg/ksoap2/HeaderProperty;
    :cond_a
    if-eqz v6, :cond_c

    .line 226
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 249
    .restart local v9    # "is":Ljava/io/InputStream;
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    if-eqz v15, :cond_b

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v9, v4, v1}, Lorg/ksoap2/transport/HttpTransportSE;->readDebug(Ljava/io/InputStream;ILjava/io/File;)Ljava/io/InputStream;

    move-result-object v9

    .line 253
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9}, Lorg/ksoap2/transport/HttpTransportSE;->parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V

    .line 256
    const/4 v11, 0x0

    .line 257
    const/4 v2, 0x0

    .line 258
    return-object v13

    .line 211
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v7    # "hp":Lorg/ksoap2/HeaderProperty;
    :catch_1
    move-exception v10

    .line 212
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    const/16 v4, 0x2000

    goto :goto_5

    .line 229
    .end local v7    # "hp":Lorg/ksoap2/HeaderProperty;
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :cond_c
    :try_start_4
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v9, v15, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 236
    .end local v8    # "i":I
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v14    # "status":I
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_d
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-interface {v3}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v9, v15, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .restart local v9    # "is":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .locals 1
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lorg/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    .line 112
    return-void
.end method

.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lorg/ksoap2/transport/HttpTransportSE;->proxy:Ljava/net/Proxy;

    iget-object v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    iget v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->timeout:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    return-object v0
.end method
