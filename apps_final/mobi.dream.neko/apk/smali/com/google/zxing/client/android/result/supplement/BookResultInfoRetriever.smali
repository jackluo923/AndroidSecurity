.class final Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;
.super Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
.source "BookResultInfoRetriever.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final isbn:Ljava/lang/String;

.field private final source:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isbn"    # Ljava/lang/String;
    .param p3, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1, p3}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/history/HistoryManager;)V

    .line 48
    iput-object p2, p0, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->isbn:Ljava/lang/String;

    .line 49
    const-string v0, "string"

    const-string v1, "msg_google_books"

    invoke-static {p4, v0, v1}, Lcom/google/zxing/FakeR;->getId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->source:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->context:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method retrieveSupplementalInfo()V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "https://www.googleapis.com/books/v1/volumes?q=isbn:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->isbn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/google/zxing/client/android/HttpHelper$ContentType;->JSON:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 59
    .local v11, "contents":Ljava/lang/CharSequence;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v22

    if-nez v22, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v6, 0x0

    .line 69
    .local v6, "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :try_start_0
    new-instance v22, Lorg/json/JSONTokener;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/json/JSONObject;

    .line 70
    .local v20, "topLevel":Lorg/json/JSONObject;
    const-string v22, "items"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 71
    .local v16, "items":Lorg/json/JSONArray;
    if-eqz v16, :cond_0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_0

    .line 75
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/json/JSONObject;

    const-string v23, "volumeInfo"

    invoke-virtual/range {v22 .. v23}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 76
    .local v21, "volumeInfo":Lorg/json/JSONObject;
    if-eqz v21, :cond_0

    .line 80
    const-string v22, "title"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 81
    .local v19, "title":Ljava/lang/String;
    const-string v22, "pageCount"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 83
    .local v18, "pages":Ljava/lang/String;
    const-string v22, "authors"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 84
    .local v8, "authorsArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_3

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v22

    if-nez v22, :cond_3

    .line 85
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v6    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local v7, "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-ge v14, v0, :cond_2

    .line 87
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 91
    .end local v7    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v8    # "authorsArray":Lorg/json/JSONArray;
    .end local v14    # "i":I
    .end local v16    # "items":Lorg/json/JSONArray;
    .end local v18    # "pages":Ljava/lang/String;
    .end local v19    # "title":Ljava/lang/String;
    .end local v20    # "topLevel":Lorg/json/JSONObject;
    .end local v21    # "volumeInfo":Lorg/json/JSONObject;
    .restart local v6    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :catch_0
    move-exception v12

    .line 92
    .local v12, "e":Lorg/json/JSONException;
    :goto_2
    new-instance v22, Ljava/io/IOException;

    invoke-virtual {v12}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .end local v6    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v7    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v8    # "authorsArray":Lorg/json/JSONArray;
    .restart local v14    # "i":I
    .restart local v16    # "items":Lorg/json/JSONArray;
    .restart local v18    # "pages":Ljava/lang/String;
    .restart local v19    # "title":Ljava/lang/String;
    .restart local v20    # "topLevel":Lorg/json/JSONObject;
    .restart local v21    # "volumeInfo":Lorg/json/JSONObject;
    :cond_2
    move-object v6, v7

    .line 95
    .end local v7    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v14    # "i":I
    .restart local v6    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v17, "newTexts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v19, :cond_4

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_4

    .line 98
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_4
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_7

    .line 102
    const/4 v13, 0x1

    .line 103
    .local v13, "first":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v9, "authorsText":Ljava/lang/StringBuilder;
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 105
    .local v5, "author":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 106
    const/4 v13, 0x0

    .line 110
    :goto_4
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 108
    :cond_5
    const-string v22, ", "

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 112
    .end local v5    # "author":Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v9    # "authorsText":Ljava/lang/StringBuilder;
    .end local v13    # "first":Z
    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_7
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_8

    .line 116
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "pp."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "http://www.google."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->context:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/google/zxing/client/android/LocaleManager;->getBookSearchCountryTLD(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/search?tbm=bks&source=zxing&q="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "baseBookUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->isbn:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->source:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/String;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->isbn:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;->append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 91
    .end local v6    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v10    # "baseBookUri":Ljava/lang/String;
    .end local v17    # "newTexts":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v7    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v14    # "i":I
    :catch_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v6    # "authors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    goto/16 :goto_2
.end method
