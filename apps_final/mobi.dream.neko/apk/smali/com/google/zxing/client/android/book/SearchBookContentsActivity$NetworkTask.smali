.class final Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;
.super Landroid/os/AsyncTask;
.source "SearchBookContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/book/SearchBookContentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;
    .param p2, "x1"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    return-void
.end method

.method private handleSearchResults(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v12, 0x0

    .line 222
    :try_start_0
    const-string v6, "number_of_results"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, "count":I
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$400(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$300()Lcom/google/zxing/FakeR;

    move-result-object v9

    const-string v10, "string"

    const-string v11, "msg_sbc_results"

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    if-lez v0, :cond_1

    .line 225
    const-string v6, "search_results"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 226
    .local v3, "results":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$500(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsResult;->setQuery(Ljava/lang/String;)V

    .line 227
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/book/SearchBookContentsResult;>;"
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 229
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->parseResult(Lorg/json/JSONObject;)Lcom/google/zxing/client/android/book/SearchBookContentsResult;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 231
    :cond_0
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$700(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/google/zxing/client/android/book/BrowseBookListener;

    iget-object v8, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-direct {v7, v8, v2}, Lcom/google/zxing/client/android/book/BrowseBookListener;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$700(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/ListView;

    move-result-object v6

    new-instance v7, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;

    iget-object v8, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-direct {v7, v8, v2}, Lcom/google/zxing/client/android/book/SearchBookContentsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    .end local v0    # "count":I
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/book/SearchBookContentsResult;>;"
    .end local v3    # "results":Lorg/json/JSONArray;
    .end local v5    # "x":I
    :goto_1
    return-void

    .line 234
    .restart local v0    # "count":I
    :cond_1
    const-string v6, "searchable"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "searchable":Ljava/lang/String;
    const-string v6, "false"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$400(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/TextView;

    move-result-object v6

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$300()Lcom/google/zxing/FakeR;

    move-result-object v7

    const-string v8, "string"

    const-string v9, "msg_sbc_book_not_searchable"

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 238
    :cond_2
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$700(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/ListView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 240
    .end local v0    # "count":I
    .end local v4    # "searchable":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Lorg/json/JSONException;
    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Bad JSON from book search"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;
    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$700(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$400(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/TextView;

    move-result-object v6

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$300()Lcom/google/zxing/FakeR;

    move-result-object v7

    const-string v8, "string"

    const-string v9, "msg_sbc_failed"

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private parseResult(Lorg/json/JSONObject;)Lcom/google/zxing/client/android/book/SearchBookContentsResult;
    .locals 10
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 250
    :try_start_0
    const-string v5, "page_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "pageId":Ljava/lang/String;
    const-string v5, "page_number"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "pageNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$300()Lcom/google/zxing/FakeR;

    move-result-object v7

    const-string v8, "string"

    const-string v9, "msg_sbc_page"

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    :goto_0
    const-string v5, "snippet_text"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, "snippet":Ljava/lang/String;
    const/4 v4, 0x1

    .line 262
    .local v4, "valid":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 263
    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$800()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->LT_ENTITY_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$900()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->GT_ENTITY_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$1000()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOTE_ENTITY_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$1100()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOT_ENTITY_PATTERN:Ljava/util/regex/Pattern;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$1200()Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    :goto_1
    new-instance v5, Lcom/google/zxing/client/android/book/SearchBookContentsResult;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/zxing/client/android/book/SearchBookContentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    .end local v1    # "pageId":Ljava/lang/String;
    .end local v2    # "pageNumber":Ljava/lang/String;
    .end local v3    # "snippet":Ljava/lang/String;
    .end local v4    # "valid":Z
    :goto_2
    return-object v5

    .line 256
    .restart local v1    # "pageId":Ljava/lang/String;
    .restart local v2    # "pageNumber":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$300()Lcom/google/zxing/FakeR;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "msg_sbc_unknown_page"

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 269
    .restart local v3    # "snippet":Ljava/lang/String;
    .restart local v4    # "valid":Z
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$300()Lcom/google/zxing/FakeR;

    move-result-object v7

    const-string v8, "string"

    const-string v9, "msg_sbc_snippet_unavailable"

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 270
    const/4 v4, 0x0

    goto :goto_1

    .line 273
    .end local v1    # "pageId":Ljava/lang/String;
    .end local v2    # "pageNumber":Ljava/lang/String;
    .end local v3    # "snippet":Ljava/lang/String;
    .end local v4    # "valid":Z
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Lcom/google/zxing/client/android/book/SearchBookContentsResult;

    iget-object v6, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$300()Lcom/google/zxing/FakeR;

    move-result-object v7

    const-string v8, "string"

    const-string v9, "msg_sbc_no_page_returned"

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/zxing/client/android/book/SearchBookContentsResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 177
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 11
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 185
    const/4 v8, 0x0

    :try_start_0
    aget-object v5, p1, v8

    .line 186
    .local v5, "theQuery":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v4, p1, v8

    .line 188
    .local v4, "theIsbn":Ljava/lang/String;
    invoke-static {v4}, Lcom/google/zxing/client/android/LocaleManager;->isBookSearchUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 189
    const/16 v8, 0x3d

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 190
    .local v1, "equals":I
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 191
    .local v7, "volumeId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://www.google.com/books?id="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "&jscmd=SearchWithinVolume2&q="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    .end local v1    # "equals":I
    .end local v7    # "volumeId":Ljava/lang/String;
    .local v6, "uri":Ljava/lang/String;
    :goto_0
    sget-object v8, Lcom/google/zxing/client/android/HttpHelper$ContentType;->JSON:Lcom/google/zxing/client/android/HttpHelper$ContentType;

    invoke-static {v6, v8}, Lcom/google/zxing/client/android/HttpHelper;->downloadViaHttp(Ljava/lang/String;Lcom/google/zxing/client/android/HttpHelper$ContentType;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 196
    .local v0, "content":Ljava/lang/CharSequence;
    new-instance v8, Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .end local v0    # "content":Ljava/lang/CharSequence;
    .end local v4    # "theIsbn":Ljava/lang/String;
    .end local v5    # "theQuery":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :goto_1
    return-object v8

    .line 193
    .restart local v4    # "theIsbn":Ljava/lang/String;
    .restart local v5    # "theQuery":Ljava/lang/String;
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://www.google.com/books?vid=isbn"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "&jscmd=SearchWithinVolume2&q="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .restart local v6    # "uri":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v4    # "theIsbn":Ljava/lang/String;
    .end local v5    # "theQuery":Ljava/lang/String;
    .end local v6    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "ioe":Ljava/io/IOException;
    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Error accessing book search"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 199
    goto :goto_1

    .line 200
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 201
    .local v3, "je":Lorg/json/JSONException;
    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$200()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Error accessing book search"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v9

    .line 202
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 177
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->onPostExecute(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected onPostExecute(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    .line 208
    if-nez p1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$400(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/TextView;

    move-result-object v0

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;
    invoke-static {}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$300()Lcom/google/zxing/FakeR;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "msg_sbc_failed"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 213
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$500(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$500(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 215
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->this$0:Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    # getter for: Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->access$600(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    return-void

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->handleSearchResults(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
