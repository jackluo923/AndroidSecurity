.class public abstract Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;
.super Landroid/os/AsyncTask;
.source "SupplementalInfoRetriever.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SupplementalInfo"


# instance fields
.field private final historyManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/zxing/client/android/history/HistoryManager;",
            ">;"
        }
    .end annotation
.end field

.field private final newContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field private final newHistories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final textViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lcom/google/zxing/client/android/history/HistoryManager;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->textViewRef:Ljava/lang/ref/WeakReference;

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->historyManagerRef:Ljava/lang/ref/WeakReference;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->newContents:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->newHistories:Ljava/util/List;

    .line 74
    return-void
.end method

.method public static maybeInvokeRetrieval(Landroid/widget/TextView;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V
    .locals 6
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "result"    # Lcom/google/zxing/client/result/ParsedResult;
    .param p2, "historyManager"    # Lcom/google/zxing/client/android/history/HistoryManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 50
    new-instance v3, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;

    invoke-direct {v3}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v3}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    .line 51
    .local v2, "taskExec":Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;
    instance-of v3, p1, Lcom/google/zxing/client/result/URIParsedResult;

    if-eqz v3, :cond_1

    .line 52
    new-instance v4, Lcom/google/zxing/client/android/result/supplement/URIResultInfoRetriever;

    move-object v3, p1

    check-cast v3, Lcom/google/zxing/client/result/URIParsedResult;

    invoke-direct {v4, p0, v3, p2, p3}, Lcom/google/zxing/client/android/result/supplement/URIResultInfoRetriever;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/result/URIParsedResult;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 53
    new-instance v3, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;

    check-cast p1, Lcom/google/zxing/client/result/URIParsedResult;

    .end local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    invoke-direct {v3, p0, p1, p2}, Lcom/google/zxing/client/android/result/supplement/TitleRetriever;-><init>(Landroid/widget/TextView;Lcom/google/zxing/client/result/URIParsedResult;Lcom/google/zxing/client/android/history/HistoryManager;)V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    :cond_1
    instance-of v3, p1, Lcom/google/zxing/client/result/ProductParsedResult;

    if-eqz v3, :cond_2

    .line 55
    check-cast p1, Lcom/google/zxing/client/result/ProductParsedResult;

    .end local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ProductParsedResult;->getProductID()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "productID":Ljava/lang/String;
    new-instance v3, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;

    invoke-direct {v3, p0, v1, p2, p3}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;-><init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    .end local v1    # "productID":Ljava/lang/String;
    .restart local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    :cond_2
    instance-of v3, p1, Lcom/google/zxing/client/result/ISBNParsedResult;

    if-eqz v3, :cond_0

    .line 58
    check-cast p1, Lcom/google/zxing/client/result/ISBNParsedResult;

    .end local p1    # "result":Lcom/google/zxing/client/result/ParsedResult;
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ISBNParsedResult;->getISBN()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "isbn":Ljava/lang/String;
    new-instance v3, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/google/zxing/client/android/result/supplement/ProductResultInfoRetriever;-><init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 60
    new-instance v3, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;

    invoke-direct {v3, p0, v0, p2, p3}, Lcom/google/zxing/client/android/result/supplement/BookResultInfoRetriever;-><init>(Landroid/widget/TextView;Ljava/lang/String;Lcom/google/zxing/client/android/history/HistoryManager;Landroid/content/Context;)V

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method final append(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "itemID"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "newTexts"    # [Ljava/lang/String;
    .param p4, "linkURL"    # Ljava/lang/String;

    .prologue
    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v9, "newTextCombined":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 115
    .local v7, "linkStart":I
    const/4 v3, 0x1

    .line 116
    .local v3, "first":Z
    move-object/from16 v1, p3

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v8, v1, v4

    .line 117
    .local v8, "newText":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/4 v3, 0x0

    .line 116
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const-string v10, " ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 127
    .end local v8    # "newText":Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 129
    .local v6, "linkEnd":I
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 130
    .restart local v8    # "newText":Ljava/lang/String;
    new-instance v2, Landroid/text/SpannableString;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    .local v2, "content":Landroid/text/Spannable;
    if-eqz p4, :cond_4

    .line 134
    const-string v10, "HTTP://"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 135
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 139
    :cond_3
    :goto_2
    new-instance v10, Landroid/text/style/URLSpan;

    move-object/from16 v0, p4

    invoke-direct {v10, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x21

    invoke-interface {v2, v10, v7, v6, v11}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 142
    :cond_4
    iget-object v10, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->newContents:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v10, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->newHistories:Ljava/util/List;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void

    .line 136
    :cond_5
    const-string v10, "HTTPS://"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x5

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_2
.end method

.method public final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->retrieveSupplementalInfo()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "SupplementalInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 7
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 88
    iget-object v5, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->textViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 89
    .local v4, "textView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 90
    iget-object v5, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->newContents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    .line 91
    .local v0, "content":Landroid/text/Spannable;
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 93
    .end local v0    # "content":Landroid/text/Spannable;
    :cond_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 95
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v5, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->historyManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/history/HistoryManager;

    .line 96
    .local v1, "historyManager":Lcom/google/zxing/client/android/history/HistoryManager;
    if-eqz v1, :cond_2

    .line 97
    iget-object v5, p0, Lcom/google/zxing/client/android/result/supplement/SupplementalInfoRetriever;->newHistories:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 98
    .local v3, "text":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v1, v5, v6}, Lcom/google/zxing/client/android/history/HistoryManager;->addHistoryItemDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "text":[Ljava/lang/String;
    :cond_2
    return-void
.end method

.method abstract retrieveSupplementalInfo()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
