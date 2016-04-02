.class public Lfi/iki/elonen/NanoHTTPD$HTTPSession;
.super Ljava/lang/Object;
.source "NanoHTTPD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HTTPSession"
.end annotation


# static fields
.field public static final BUFSIZE:I = 0x2000


# instance fields
.field private final inputStream:Ljava/io/InputStream;

.field private final outputStream:Ljava/io/OutputStream;

.field private final tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

.field final synthetic this$0:Lfi/iki/elonen/NanoHTTPD;


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD;Lfi/iki/elonen/NanoHTTPD$TempFileManager;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "tempFileManager"    # Lfi/iki/elonen/NanoHTTPD$TempFileManager;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .param p4, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 619
    iput-object p1, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    .line 621
    iput-object p3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    .line 622
    iput-object p4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    .line 623
    return-void
.end method

.method private decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .param p1, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 800
    .local p2, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "inLine":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 848
    :goto_0
    return-void

    .line 805
    :cond_0
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 806
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_1

    .line 807
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    invoke-static {v7, v8, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 808
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    .end local v0    # "inLine":Ljava/lang/String;
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v1

    .line 845
    .local v1, "ioe":Ljava/io/IOException;
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 846
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 811
    .end local v1    # "ioe":Ljava/io/IOException;
    .restart local v0    # "inLine":Ljava/lang/String;
    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_1
    :try_start_1
    const-string v7, "method"

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_2

    .line 814
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v8, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v9, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    invoke-static {v7, v8, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 815
    new-instance v7, Ljava/lang/InterruptedException;

    invoke-direct {v7}, Ljava/lang/InterruptedException;-><init>()V

    throw v7

    .line 818
    :cond_2
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 821
    .local v6, "uri":Ljava/lang/String;
    const/16 v7, 0x3f

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 822
    .local v4, "qmi":I
    if-ltz v4, :cond_4

    .line 823
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p3}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    .line 824
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 833
    :goto_1
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 834
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 835
    .local v2, "line":Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 836
    const/16 v7, 0x3a

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 837
    .local v3, "p":I
    if-ltz v3, :cond_3

    .line 838
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 840
    goto :goto_2

    .line 826
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "p":I
    :cond_4
    iget-object v7, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v7, v6}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 843
    :cond_5
    const-string v7, "uri"

    invoke-interface {p2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 22
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "fbuf"    # Ljava/nio/ByteBuffer;
    .param p3, "in"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/io/BufferedReader;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 856
    .local p4, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I

    move-result-object v4

    .line 857
    .local v4, "bpositions":[I
    const/4 v3, 0x1

    .line 858
    .local v3, "boundarycount":I
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 859
    .local v10, "mpline":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_d

    .line 860
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v19, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v20, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    invoke-static/range {v18 .. v20}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 862
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v3    # "boundarycount":I
    .end local v4    # "bpositions":[I
    .end local v10    # "mpline":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 923
    .local v8, "ioe":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v19, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SERVER INTERNAL ERROR: IOException: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 924
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18

    .line 864
    .end local v8    # "ioe":Ljava/io/IOException;
    .restart local v3    # "boundarycount":I
    .restart local v4    # "bpositions":[I
    .restart local v10    # "mpline":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 865
    :try_start_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 866
    .local v9, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 867
    :goto_1
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_3

    .line 868
    const/16 v18, 0x3a

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 869
    .local v12, "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 870
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 873
    goto :goto_1

    .line 874
    .end local v12    # "p":I
    :cond_3
    if-eqz v10, :cond_0

    .line 875
    const-string v18, "content-disposition"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 876
    .local v5, "contentDisposition":Ljava/lang/String;
    if-nez v5, :cond_4

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v19, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v20, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    invoke-static/range {v18 .. v20}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 878
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18

    .line 880
    :cond_4
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v18, "; "

    move-object/from16 v0, v18

    invoke-direct {v15, v5, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    .local v15, "st":Ljava/util/StringTokenizer;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 882
    .local v7, "disposition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    :goto_2
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 883
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    .line 884
    .local v16, "token":Ljava/lang/String;
    const/16 v18, 0x3d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 885
    .restart local v12    # "p":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_5

    .line 886
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 889
    .end local v12    # "p":I
    .end local v16    # "token":Ljava/lang/String;
    :cond_6
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 890
    .local v14, "pname":Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 892
    const-string v17, ""

    .line 893
    .local v17, "value":Ljava/lang/String;
    const-string v18, "content-type"

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_9

    .line 894
    :cond_7
    :goto_3
    if-eqz v10, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 895
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 896
    if-eqz v10, :cond_7

    .line 897
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 898
    .local v6, "d":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_8

    .line 899
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 901
    :cond_8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    add-int/lit8 v20, v6, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 906
    .end local v6    # "d":I
    :cond_9
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v3, v0, :cond_a

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v18, v0

    sget-object v19, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v20, "Error processing request"

    invoke-static/range {v18 .. v20}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 908
    new-instance v18, Ljava/lang/InterruptedException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/InterruptedException;-><init>()V

    throw v18

    .line 910
    :cond_a
    add-int/lit8 v18, v3, -0x2

    aget v18, v4, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I

    move-result v11

    .line 911
    .local v11, "offset":I
    add-int/lit8 v18, v3, -0x1

    aget v18, v4, v18

    sub-int v18, v18, v11

    add-int/lit8 v18, v18, -0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v18

    invoke-direct {v0, v1, v11, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v13

    .line 912
    .local v13, "path":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v18, "filename"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "value":Ljava/lang/String;
    check-cast v17, Ljava/lang/String;

    .line 914
    .restart local v17    # "value":Ljava/lang/String;
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 916
    :cond_b
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .line 917
    if-eqz v10, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 919
    .end local v11    # "offset":I
    .end local v13    # "path":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 926
    .end local v5    # "contentDisposition":Ljava/lang/String;
    .end local v7    # "disposition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "pname":Ljava/lang/String;
    .end local v15    # "st":Ljava/util/StringTokenizer;
    .end local v17    # "value":Ljava/lang/String;
    :cond_d
    return-void
.end method

.method private decodeParms(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "parms"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1020
    .local p2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1021
    const-string v3, "NanoHttpd.QUERY_STRING"

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :cond_0
    return-void

    .line 1025
    :cond_1
    const-string v3, "NanoHttpd.QUERY_STRING"

    invoke-interface {p2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "&"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1028
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 1029
    .local v0, "e":Ljava/lang/String;
    const/16 v3, 0x3d

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1030
    .local v1, "sep":I
    if-ltz v1, :cond_2

    .line 1031
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v3, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    invoke-virtual {v3, v0}, Lfi/iki/elonen/NanoHTTPD;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private extractContentLength(Ljava/util/Map;)J
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 782
    .local v2, "size":J
    const-string v4, "content-length"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 783
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 785
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    int-to-long v2, v4

    .line 790
    :cond_0
    :goto_0
    return-wide v2

    .line 786
    :catch_0
    move-exception v1

    .line 787
    .local v1, "ex":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method private findHeaderEnd([BI)I
    .locals 4
    .param p1, "buf"    # [B
    .param p2, "rlen"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 932
    const/4 v0, 0x0

    .line 933
    .local v0, "splitbyte":I
    :goto_0
    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_1

    .line 934
    aget-byte v1, p1, v0

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, 0x3

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    .line 935
    add-int/lit8 v1, v0, 0x4

    .line 939
    :goto_1
    return v1

    .line 937
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getTmpBucket()Ljava/io/RandomAccessFile;
    .locals 5

    .prologue
    .line 994
    :try_start_0
    iget-object v2, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v2}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile()Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v1

    .line 995
    .local v1, "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    new-instance v2, Ljava/io/RandomAccessFile;

    invoke-interface {v1}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    .end local v1    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :goto_0
    return-object v2

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 999
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 8
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 976
    const-string v2, ""

    .line 977
    .local v2, "path":Ljava/lang/String;
    if-lez p3, :cond_0

    .line 979
    :try_start_0
    iget-object v5, p0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v5}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->createTempFile()Lfi/iki/elonen/NanoHTTPD$TempFile;

    move-result-object v4

    .line 980
    .local v4, "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 981
    .local v3, "src":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-interface {v4}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 982
    .local v0, "dest":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    add-int v6, p2, p3

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 983
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 984
    invoke-interface {v4}, Lfi/iki/elonen/NanoHTTPD$TempFile;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 989
    .end local v0    # "dest":Ljava/nio/channels/FileChannel;
    .end local v3    # "src":Ljava/nio/ByteBuffer;
    .end local v4    # "tempFile":Lfi/iki/elonen/NanoHTTPD$TempFile;
    :cond_0
    :goto_0
    return-object v2

    .line 985
    :catch_0
    move-exception v1

    .line 986
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stripMultipartHeaders(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I

    .prologue
    const/16 v3, 0xd

    const/16 v2, 0xa

    .line 1007
    move v0, p2

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1008
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-ne v1, v2, :cond_1

    .line 1012
    :cond_0
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 1007
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBoundaryPositions(Ljava/nio/ByteBuffer;[B)[I
    .locals 7
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "boundary"    # [B

    .prologue
    .line 946
    const/4 v3, 0x0

    .line 947
    .local v3, "matchcount":I
    const/4 v1, -0x1

    .line 948
    .local v1, "matchbyte":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 949
    .local v2, "matchbytes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 950
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    aget-byte v6, p2, v3

    if-ne v5, v6, :cond_2

    .line 951
    if-nez v3, :cond_0

    .line 952
    move v1, v0

    .line 953
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 954
    array-length v5, p2

    if-ne v3, v5, :cond_1

    .line 955
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    const/4 v3, 0x0

    .line 957
    const/4 v1, -0x1

    .line 949
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 960
    :cond_2
    sub-int/2addr v0, v3

    .line 961
    const/4 v3, 0x0

    .line 962
    const/4 v1, -0x1

    goto :goto_1

    .line 965
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 966
    .local v4, "ret":[I
    const/4 v0, 0x0

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_4

    .line 967
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v0

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 969
    :cond_4
    return-object v4
.end method

.method public run()V
    .locals 34

    .prologue
    .line 627
    const/16 v25, 0x0

    .line 629
    .local v25, "randomAccessFile":Ljava/io/RandomAccessFile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 770
    if-eqz v25, :cond_0

    .line 772
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 776
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v3}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    .line 778
    :goto_1
    return-void

    .line 637
    :cond_1
    const/16 v3, 0x2000

    :try_start_2
    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 638
    .local v16, "buf":[B
    const/16 v30, 0x0

    .line 639
    .local v30, "splitbyte":I
    const/16 v27, 0x0

    .line 641
    .local v27, "rlen":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    const/4 v7, 0x0

    const/16 v8, 0x2000

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v26

    .line 642
    .local v26, "read":I
    :goto_2
    if-lez v26, :cond_2

    .line 643
    add-int v27, v27, v26

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->findHeaderEnd([BI)I

    move-result v30

    .line 645
    if-lez v30, :cond_4

    .line 652
    :cond_2
    new-instance v19, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-direct {v7, v0, v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 653
    .local v19, "hin":Ljava/io/BufferedReader;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v23, "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 655
    .local v11, "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 656
    .local v10, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 659
    .local v12, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v11, v10}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeHeader(Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 660
    const-string v3, "method"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lfi/iki/elonen/NanoHTTPD$Method;->lookup(Ljava/lang/String;)Lfi/iki/elonen/NanoHTTPD$Method;

    move-result-object v9

    .line 661
    .local v9, "method":Lfi/iki/elonen/NanoHTTPD$Method;
    if-nez v9, :cond_5

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v7, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v8, "BAD REQUEST: Syntax error."

    invoke-static {v3, v7, v8}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 663
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 761
    .end local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .end local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "buf":[B
    .end local v19    # "hin":Ljava/io/BufferedReader;
    .end local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "read":I
    .end local v27    # "rlen":I
    .end local v30    # "splitbyte":I
    :catch_0
    move-exception v20

    .line 763
    .local v20, "ioe":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v7, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "SERVER INTERNAL ERROR: IOException: "

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v7, v8}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 764
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 765
    :catch_1
    move-exception v3

    .line 770
    if-eqz v25, :cond_3

    .line 772
    :try_start_4
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 776
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v3}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_1

    .line 647
    .end local v20    # "ioe":Ljava/io/IOException;
    .restart local v16    # "buf":[B
    .restart local v26    # "read":I
    .restart local v27    # "rlen":I
    .restart local v30    # "splitbyte":I
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    move/from16 v0, v27

    rsub-int v7, v0, 0x2000

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v26

    goto/16 :goto_2

    .line 665
    .restart local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .restart local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "hin":Ljava/io/BufferedReader;
    .restart local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    const-string v3, "uri"

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 666
    .local v32, "uri":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->extractContentLength(Ljava/util/Map;)J

    move-result-wide v28

    .line 669
    .local v28, "size":J
    invoke-direct/range {p0 .. p0}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->getTmpBucket()Ljava/io/RandomAccessFile;

    move-result-object v25

    .line 670
    move/from16 v0, v30

    move/from16 v1, v27

    if-ge v0, v1, :cond_6

    .line 671
    sub-int v3, v27, v30

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 680
    :cond_6
    move/from16 v0, v30

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    .line 681
    sub-int v3, v27, v30

    add-int/lit8 v3, v3, 0x1

    int-to-long v7, v3

    sub-long v28, v28, v7

    .line 687
    :cond_7
    :goto_4
    const/16 v3, 0x200

    new-array v0, v3, [B

    move-object/from16 v16, v0

    .line 688
    :cond_8
    :goto_5
    if-ltz v27, :cond_c

    const-wide/16 v7, 0x0

    cmp-long v3, v28, v7

    if-lez v3, :cond_c

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    const/4 v7, 0x0

    const/16 v8, 0x200

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v27

    .line 690
    move/from16 v0, v27

    int-to-long v7, v0

    sub-long v28, v28, v7

    .line 691
    if-lez v27, :cond_8

    .line 692
    const/4 v3, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    move/from16 v2, v27

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 767
    .end local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .end local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "buf":[B
    .end local v19    # "hin":Ljava/io/BufferedReader;
    .end local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "read":I
    .end local v27    # "rlen":I
    .end local v28    # "size":J
    .end local v30    # "splitbyte":I
    .end local v32    # "uri":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 770
    if-eqz v25, :cond_9

    .line 772
    :try_start_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 776
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v3}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_1

    .line 682
    .restart local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .restart local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16    # "buf":[B
    .restart local v19    # "hin":Ljava/io/BufferedReader;
    .restart local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "read":I
    .restart local v27    # "rlen":I
    .restart local v28    # "size":J
    .restart local v30    # "splitbyte":I
    .restart local v32    # "uri":Ljava/lang/String;
    :cond_a
    if-eqz v30, :cond_b

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v3, v28, v7

    if-nez v3, :cond_7

    .line 683
    :cond_b
    const-wide/16 v28, 0x0

    goto :goto_4

    .line 697
    :cond_c
    :try_start_7
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v5

    .line 698
    .local v5, "fbuf":Ljava/nio/ByteBuffer;
    const-wide/16 v7, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 701
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 702
    .local v13, "bin":Ljava/io/InputStream;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 706
    .local v6, "in":Ljava/io/BufferedReader;
    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->POST:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v3, v9}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 707
    const-string v17, ""

    .line 708
    .local v17, "contentType":Ljava/lang/String;
    const-string v3, "content-type"

    invoke-interface {v10, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 710
    .local v18, "contentTypeHeader":Ljava/lang/String;
    const/16 v31, 0x0

    .line 711
    .local v31, "st":Ljava/util/StringTokenizer;
    if-eqz v18, :cond_d

    .line 712
    new-instance v31, Ljava/util/StringTokenizer;

    .end local v31    # "st":Ljava/util/StringTokenizer;
    const-string v3, ",; "

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    .restart local v31    # "st":Ljava/util/StringTokenizer;
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 714
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    .line 718
    :cond_d
    const-string v3, "multipart/form-data"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 720
    invoke-virtual/range {v31 .. v31}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_f

    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v7, Lfi/iki/elonen/NanoHTTPD$Response$Status;->BAD_REQUEST:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v8, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    invoke-static {v3, v7, v8}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 722
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 770
    .end local v5    # "fbuf":Ljava/nio/ByteBuffer;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .end local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "bin":Ljava/io/InputStream;
    .end local v16    # "buf":[B
    .end local v17    # "contentType":Ljava/lang/String;
    .end local v18    # "contentTypeHeader":Ljava/lang/String;
    .end local v19    # "hin":Ljava/io/BufferedReader;
    .end local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "read":I
    .end local v27    # "rlen":I
    .end local v28    # "size":J
    .end local v30    # "splitbyte":I
    .end local v31    # "st":Ljava/util/StringTokenizer;
    .end local v32    # "uri":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v25, :cond_e

    .line 772
    :try_start_8
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 776
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v7}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    throw v3

    .line 725
    .restart local v5    # "fbuf":Ljava/nio/ByteBuffer;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .restart local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "bin":Ljava/io/InputStream;
    .restart local v16    # "buf":[B
    .restart local v17    # "contentType":Ljava/lang/String;
    .restart local v18    # "contentTypeHeader":Ljava/lang/String;
    .restart local v19    # "hin":Ljava/io/BufferedReader;
    .restart local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v26    # "read":I
    .restart local v27    # "rlen":I
    .restart local v28    # "size":J
    .restart local v30    # "splitbyte":I
    .restart local v31    # "st":Ljava/util/StringTokenizer;
    .restart local v32    # "uri":Ljava/lang/String;
    :cond_f
    :try_start_9
    const-string v15, "boundary="

    .line 726
    .local v15, "boundaryStartString":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    add-int v14, v3, v7

    .line 727
    .local v14, "boundaryContentStart":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "boundary":Ljava/lang/String;
    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "\""

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 729
    const/4 v3, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v4, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_10
    move-object/from16 v3, p0

    move-object v7, v11

    move-object v8, v12

    .line 732
    invoke-direct/range {v3 .. v8}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeMultipartData(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/io/BufferedReader;Ljava/util/Map;Ljava/util/Map;)V

    .line 750
    .end local v4    # "boundary":Ljava/lang/String;
    .end local v14    # "boundaryContentStart":I
    .end local v15    # "boundaryStartString":Ljava/lang/String;
    .end local v17    # "contentType":Ljava/lang/String;
    .end local v18    # "contentTypeHeader":Ljava/lang/String;
    .end local v31    # "st":Ljava/util/StringTokenizer;
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->this$0:Lfi/iki/elonen/NanoHTTPD;

    move-object/from16 v8, v32

    invoke-virtual/range {v7 .. v12}, Lfi/iki/elonen/NanoHTTPD;->serve(Ljava/lang/String;Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lfi/iki/elonen/NanoHTTPD$Response;

    move-result-object v24

    .line 751
    .local v24, "r":Lfi/iki/elonen/NanoHTTPD$Response;
    if-nez v24, :cond_15

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    sget-object v7, Lfi/iki/elonen/NanoHTTPD$Response$Status;->INTERNAL_ERROR:Lfi/iki/elonen/NanoHTTPD$Response$Status;

    const-string v8, "SERVER INTERNAL ERROR: Serve() returned a null response."

    invoke-static {v3, v7, v8}, Lfi/iki/elonen/NanoHTTPD$Response;->error(Ljava/io/OutputStream;Lfi/iki/elonen/NanoHTTPD$Response$Status;Ljava/lang/String;)V

    .line 753
    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    .line 735
    .end local v24    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v17    # "contentType":Ljava/lang/String;
    .restart local v18    # "contentTypeHeader":Ljava/lang/String;
    .restart local v31    # "st":Ljava/util/StringTokenizer;
    :cond_12
    const-string v22, ""

    .line 736
    .local v22, "postLine":Ljava/lang/String;
    const/16 v3, 0x200

    new-array v0, v3, [C

    move-object/from16 v21, v0

    .line 737
    .local v21, "pbuf":[C
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v26

    .line 738
    :goto_9
    if-ltz v26, :cond_13

    const-string v3, "\r\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-static {v0, v7, v1}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 740
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v26

    goto :goto_9

    .line 742
    :cond_13
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 743
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->decodeParms(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8

    .line 745
    .end local v17    # "contentType":Ljava/lang/String;
    .end local v18    # "contentTypeHeader":Ljava/lang/String;
    .end local v21    # "pbuf":[C
    .end local v22    # "postLine":Ljava/lang/String;
    .end local v31    # "st":Ljava/util/StringTokenizer;
    :cond_14
    sget-object v3, Lfi/iki/elonen/NanoHTTPD$Method;->PUT:Lfi/iki/elonen/NanoHTTPD$Method;

    invoke-virtual {v3, v9}, Lfi/iki/elonen/NanoHTTPD$Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 746
    const-string v3, "content"

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8}, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->saveTmpFile(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 755
    .restart local v24    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    :cond_15
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Lfi/iki/elonen/NanoHTTPD$Response;->setRequestMethod(Lfi/iki/elonen/NanoHTTPD$Method;)V

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->outputStream:Ljava/io/OutputStream;

    move-object/from16 v0, v24

    # invokes: Lfi/iki/elonen/NanoHTTPD$Response;->send(Ljava/io/OutputStream;)V
    invoke-static {v0, v3}, Lfi/iki/elonen/NanoHTTPD$Response;->access$400(Lfi/iki/elonen/NanoHTTPD$Response;Ljava/io/OutputStream;)V

    .line 759
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 760
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 770
    if-eqz v25, :cond_16

    .line 772
    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 776
    :cond_16
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lfi/iki/elonen/NanoHTTPD$HTTPSession;->tempFileManager:Lfi/iki/elonen/NanoHTTPD$TempFileManager;

    invoke-interface {v3}, Lfi/iki/elonen/NanoHTTPD$TempFileManager;->clear()V

    goto/16 :goto_1

    .line 773
    .end local v5    # "fbuf":Ljava/nio/ByteBuffer;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .end local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "bin":Ljava/io/InputStream;
    .end local v16    # "buf":[B
    .end local v19    # "hin":Ljava/io/BufferedReader;
    .end local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    .end local v26    # "read":I
    .end local v27    # "rlen":I
    .end local v28    # "size":J
    .end local v30    # "splitbyte":I
    .end local v32    # "uri":Ljava/lang/String;
    :catch_3
    move-exception v3

    goto/16 :goto_0

    .restart local v5    # "fbuf":Ljava/nio/ByteBuffer;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .restart local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .restart local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v13    # "bin":Ljava/io/InputStream;
    .restart local v16    # "buf":[B
    .restart local v19    # "hin":Ljava/io/BufferedReader;
    .restart local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    .restart local v26    # "read":I
    .restart local v27    # "rlen":I
    .restart local v28    # "size":J
    .restart local v30    # "splitbyte":I
    .restart local v32    # "uri":Ljava/lang/String;
    :catch_4
    move-exception v3

    goto :goto_a

    .end local v5    # "fbuf":Ljava/nio/ByteBuffer;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v9    # "method":Lfi/iki/elonen/NanoHTTPD$Method;
    .end local v10    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "parms":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "bin":Ljava/io/InputStream;
    .end local v16    # "buf":[B
    .end local v19    # "hin":Ljava/io/BufferedReader;
    .end local v23    # "pre":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "r":Lfi/iki/elonen/NanoHTTPD$Response;
    .end local v26    # "read":I
    .end local v27    # "rlen":I
    .end local v28    # "size":J
    .end local v30    # "splitbyte":I
    .end local v32    # "uri":Ljava/lang/String;
    .restart local v20    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v3

    goto/16 :goto_3

    .end local v20    # "ioe":Ljava/io/IOException;
    :catch_6
    move-exception v3

    goto/16 :goto_6

    :catch_7
    move-exception v7

    goto/16 :goto_7
.end method
