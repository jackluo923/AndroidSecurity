.class Ljp/innovationplus/ipp/client/_HttpRequestTask;
.super Landroid/os/AsyncTask;
.source "_HttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;",
        "Ljava/lang/Integer;",
        "Ljp/innovationplus/ipp/client/_ResultParam;",
        ">;"
    }
.end annotation


# instance fields
.field private callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field debugMessage:Z

.field private resultClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    .local p1, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p1, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->resultClass:Ljava/lang/Class;

    .line 55
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    invoke-virtual {p0, p1}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->doInBackground([Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;)Ljp/innovationplus/ipp/client/_ResultParam;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;)Ljp/innovationplus/ipp/client/_ResultParam;
    .locals 13
    .param p1, "params"    # [Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;

    .prologue
    .local p0, "this":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    const/4 v12, 0x0

    .line 77
    aget-object v9, p1, v12

    iget-object v9, v9, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "methodType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 79
    .local v2, "errorCode":I
    const-string v9, "PUT"

    if-eq v4, v9, :cond_0

    const-string v9, "POST"

    if-ne v4, v9, :cond_2

    .line 81
    :cond_0
    new-instance v3, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 82
    .local v3, "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-virtual {v3}, Lorg/codehaus/jackson/map/ObjectMapper;->getSerializationConfig()Lorg/codehaus/jackson/map/SerializationConfig;

    move-result-object v0

    .line 83
    .local v0, "config":Lorg/codehaus/jackson/map/SerializationConfig;
    sget-object v9, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->NON_NULL:Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    invoke-virtual {v0, v9}, Lorg/codehaus/jackson/map/SerializationConfig;->setSerializationInclusion(Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)V

    .line 84
    invoke-virtual {v3, v0}, Lorg/codehaus/jackson/map/ObjectMapper;->setSerializationConfig(Lorg/codehaus/jackson/map/SerializationConfig;)Lorg/codehaus/jackson/map/ObjectMapper;

    .line 87
    const/4 v5, 0x0

    .line 89
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    iget-boolean v9, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v9, :cond_1

    .line 90
    const-string v9, "IPPKit"

    const-string v10, "write POST/PUT JSON object."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1
    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget-object v9, v9, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 93
    const/4 v9, 0x0

    aget-object v9, p1, v9

    iget-object v9, v9, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->postData:Ljava/lang/Object;

    invoke-virtual {v3, v5, v9}, Lorg/codehaus/jackson/map/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eqz v5, :cond_2

    .line 123
    :try_start_1
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 131
    .end local v0    # "config":Lorg/codehaus/jackson/map/SerializationConfig;
    .end local v3    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    .end local v5    # "out":Ljava/io/OutputStream;
    :cond_2
    :goto_0
    if-ltz v2, :cond_5

    .line 132
    const/4 v6, 0x0

    .line 134
    .local v6, "responseCode":I
    const/4 v9, 0x0

    :try_start_2
    aget-object v9, p1, v9

    iget-object v9, v9, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-result v6

    .line 145
    :goto_1
    div-int/lit8 v9, v6, 0x64

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    div-int/lit8 v9, v6, 0x64

    const/4 v10, 0x5

    if-ne v9, v10, :cond_4

    .line 146
    :cond_3
    neg-int v2, v6

    .line 149
    :cond_4
    iget-boolean v9, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v9, :cond_5

    .line 150
    const-string v9, "IPPKit"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ResponseCode="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", errCode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v6    # "responseCode":I
    :cond_5
    const/4 v7, 0x0

    .line 156
    .local v7, "result":Ljava/lang/String;
    if-ltz v2, :cond_6

    .line 158
    const/4 v9, 0x0

    :try_start_3
    aget-object v9, p1, v9

    iget-object v9, v9, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 166
    aget-object v9, p1, v12

    if-eqz v9, :cond_6

    .line 167
    aget-object v9, p1, v12

    iget-object v9, v9, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    :cond_6
    :goto_2
    new-instance v8, Ljp/innovationplus/ipp/client/_ResultParam;

    invoke-direct {v8}, Ljp/innovationplus/ipp/client/_ResultParam;-><init>()V

    .line 174
    .local v8, "resultparam":Ljp/innovationplus/ipp/client/_ResultParam;
    iput-object v7, v8, Ljp/innovationplus/ipp/client/_ResultParam;->response:Ljava/lang/String;

    .line 175
    iput v2, v8, Ljp/innovationplus/ipp/client/_ResultParam;->errorCode:I

    .line 176
    return-object v8

    .line 96
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "resultparam":Ljp/innovationplus/ipp/client/_ResultParam;
    .restart local v0    # "config":Lorg/codehaus/jackson/map/SerializationConfig;
    .restart local v3    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Lorg/codehaus/jackson/JsonGenerationException;
    :try_start_4
    iget-boolean v9, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v9, :cond_7

    .line 99
    const-string v9, "IPPKit"

    const-string v10, "JsonGenerationException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerationException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    :cond_7
    const/16 v2, -0x3ec

    .line 121
    if-eqz v5, :cond_2

    .line 123
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 125
    :catch_1
    move-exception v9

    goto :goto_0

    .line 104
    .end local v1    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :catch_2
    move-exception v1

    .line 106
    .local v1, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :try_start_6
    iget-boolean v9, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v9, :cond_8

    .line 107
    const-string v9, "IPPKit"

    const-string v10, "JsonMappingException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 110
    :cond_8
    const/16 v2, -0x3ed

    .line 121
    if-eqz v5, :cond_2

    .line 123
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 125
    :catch_3
    move-exception v9

    goto/16 :goto_0

    .line 112
    .end local v1    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_4
    move-exception v1

    .line 114
    .local v1, "e":Ljava/io/IOException;
    :try_start_8
    iget-boolean v9, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v9, :cond_9

    .line 115
    const-string v9, "IPPKit"

    const-string v10, "IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 118
    :cond_9
    const/16 v2, -0x3ee

    .line 121
    if-eqz v5, :cond_2

    .line 123
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 125
    :catch_5
    move-exception v9

    goto/16 :goto_0

    .line 120
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 121
    if-eqz v5, :cond_a

    .line 123
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 127
    :cond_a
    :goto_3
    throw v9

    .line 136
    .end local v0    # "config":Lorg/codehaus/jackson/map/SerializationConfig;
    .end local v3    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "responseCode":I
    :catch_6
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    iget-boolean v9, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v9, :cond_b

    .line 139
    const-string v9, "IPPKit"

    const-string v10, "IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 142
    :cond_b
    const/16 v2, -0x3ef

    goto/16 :goto_1

    .line 160
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "responseCode":I
    .restart local v7    # "result":Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 161
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_b
    iget-boolean v9, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v9, :cond_c

    .line 162
    const-string v9, "IPPKit"

    const-string v10, "IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 163
    :cond_c
    const/16 v2, -0x3ef

    .line 166
    aget-object v9, p1, v12

    if-eqz v9, :cond_6

    .line 167
    aget-object v9, p1, v12

    iget-object v9, v9, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_2

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    .line 166
    aget-object v10, p1, v12

    if-eqz v10, :cond_d

    .line 167
    aget-object v10, p1, v12

    iget-object v10, v10, Ljp/innovationplus/ipp/client/_HttpURLConnectionParam;->httpUrlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 169
    :cond_d
    throw v9

    .line 125
    .end local v7    # "result":Ljava/lang/String;
    .restart local v0    # "config":Lorg/codehaus/jackson/map/SerializationConfig;
    .restart local v3    # "mapper":Lorg/codehaus/jackson/map/ObjectMapper;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_8
    move-exception v10

    goto :goto_3

    :catch_9
    move-exception v9

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljp/innovationplus/ipp/client/_ResultParam;

    invoke-virtual {p0, p1}, Ljp/innovationplus/ipp/client/_HttpRequestTask;->onPostExecute(Ljp/innovationplus/ipp/client/_ResultParam;)V

    return-void
.end method

.method protected onPostExecute(Ljp/innovationplus/ipp/client/_ResultParam;)V
    .locals 12
    .param p1, "resultparam"    # Ljp/innovationplus/ipp/client/_ResultParam;

    .prologue
    .local p0, "this":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    const/16 v11, -0x3e7

    .line 187
    if-nez p1, :cond_1

    .line 188
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    if-eqz v6, :cond_0

    .line 189
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    invoke-interface {v6, v11}, Ljp/innovationplus/ipp/core/IPPQueryCallback;->ippDidError(I)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget v6, p1, Ljp/innovationplus/ipp/client/_ResultParam;->errorCode:I

    if-gez v6, :cond_2

    .line 195
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    if-eqz v6, :cond_0

    .line 196
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    iget v7, p1, Ljp/innovationplus/ipp/client/_ResultParam;->errorCode:I

    invoke-interface {v6, v7}, Ljp/innovationplus/ipp/core/IPPQueryCallback;->ippDidError(I)V

    goto :goto_0

    .line 200
    :cond_2
    iget-boolean v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v6, :cond_3

    .line 201
    const-string v6, "IPPKit"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Responce : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p1, Ljp/innovationplus/ipp/client/_ResultParam;->response:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_3
    new-instance v3, Lorg/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v3}, Lorg/codehaus/jackson/map/ObjectMapper;-><init>()V

    .line 205
    .local v3, "om":Lorg/codehaus/jackson/map/ObjectMapper;
    invoke-static {}, Lorg/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lorg/codehaus/jackson/map/type/TypeFactory;

    move-result-object v6

    const-class v7, Ljp/innovationplus/ipp/core/IPPQueryResult;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    iget-object v10, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->resultClass:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/codehaus/jackson/map/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lorg/codehaus/jackson/type/JavaType;

    move-result-object v5

    .line 206
    .local v5, "type":Lorg/codehaus/jackson/type/JavaType;
    const-string v6, "IPPKit"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "TYPE : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v4, 0x0

    .line 210
    .local v4, "result":Ljp/innovationplus/ipp/core/IPPQueryResult;, "Ljp/innovationplus/ipp/core/IPPQueryResult<TT;>;"
    iget-boolean v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v6, :cond_4

    .line 211
    const-string v6, "IPPKit"

    const-string v7, "convert to JSON object."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_4
    const/4 v2, 0x0

    .line 214
    .local v2, "errorCode":I
    :try_start_0
    iget-object v6, p1, Ljp/innovationplus/ipp/client/_ResultParam;->response:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Lorg/codehaus/jackson/type/JavaType;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljp/innovationplus/ipp/core/IPPQueryResult;

    move-object v4, v0
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonGenerationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 242
    :goto_1
    if-gez v2, :cond_8

    .line 243
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    if-eqz v6, :cond_0

    .line 244
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    invoke-interface {v6, v2}, Ljp/innovationplus/ipp/core/IPPQueryCallback;->ippDidError(I)V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Lorg/codehaus/jackson/JsonGenerationException;
    iget-boolean v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v6, :cond_5

    .line 219
    const-string v6, "IPPKit"

    const-string v7, "JsonGenerationException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonGenerationException;->printStackTrace()V

    .line 222
    :cond_5
    const/16 v2, -0x3ec

    goto :goto_1

    .line 224
    .end local v1    # "e":Lorg/codehaus/jackson/JsonGenerationException;
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Lorg/codehaus/jackson/map/JsonMappingException;
    iget-boolean v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v6, :cond_6

    .line 227
    const-string v6, "IPPKit"

    const-string v7, "JsonMappingException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {v1}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V

    .line 230
    :cond_6
    const/16 v2, -0x3ed

    goto :goto_1

    .line 232
    .end local v1    # "e":Lorg/codehaus/jackson/map/JsonMappingException;
    :catch_2
    move-exception v1

    .line 234
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->debugMessage:Z

    if-eqz v6, :cond_7

    .line 235
    const-string v6, "IPPKit"

    const-string v7, "IOException"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 238
    :cond_7
    const/16 v2, -0x3ee

    goto :goto_1

    .line 249
    .end local v1    # "e":Ljava/io/IOException;
    :cond_8
    if-nez v4, :cond_9

    .line 250
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    if-eqz v6, :cond_0

    .line 251
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    invoke-interface {v6, v11}, Ljp/innovationplus/ipp/core/IPPQueryCallback;->ippDidError(I)V

    goto/16 :goto_0

    .line 256
    :cond_9
    invoke-virtual {v4}, Ljp/innovationplus/ipp/core/IPPQueryResult;->getResultCode()I

    move-result v6

    if-gez v6, :cond_a

    .line 257
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    if-eqz v6, :cond_0

    .line 258
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    invoke-virtual {v4}, Ljp/innovationplus/ipp/core/IPPQueryResult;->getResultCode()I

    move-result v7

    invoke-interface {v6, v7}, Ljp/innovationplus/ipp/core/IPPQueryCallback;->ippDidError(I)V

    goto/16 :goto_0

    .line 263
    :cond_a
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    if-eqz v6, :cond_0

    .line 264
    iget-object v6, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    invoke-virtual {v4}, Ljp/innovationplus/ipp/core/IPPQueryResult;->getResult()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljp/innovationplus/ipp/core/IPPQueryCallback;->ippDidFinishLoading(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public setOnCallBack(Ljp/innovationplus/ipp/core/IPPQueryCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/innovationplus/ipp/core/IPPQueryCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Ljp/innovationplus/ipp/client/_HttpRequestTask;, "Ljp/innovationplus/ipp/client/_HttpRequestTask<TT;>;"
    .local p1, "callback":Ljp/innovationplus/ipp/core/IPPQueryCallback;, "Ljp/innovationplus/ipp/core/IPPQueryCallback<TT;>;"
    iput-object p1, p0, Ljp/innovationplus/ipp/client/_HttpRequestTask;->callbacktask:Ljp/innovationplus/ipp/core/IPPQueryCallback;

    .line 66
    return-void
.end method
