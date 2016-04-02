.class public final Lcom/google/zxing/client/android/book/SearchBookContentsActivity;
.super Landroid/app/Activity;
.source "SearchBookContentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;
    }
.end annotation


# static fields
.field private static final GT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final LT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final QUOTE_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final QUOT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_PATTERN:Ljava/util/regex/Pattern;

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private final buttonListener:Landroid/view/View$OnClickListener;

.field private headerView:Landroid/widget/TextView;

.field private isbn:Ljava/lang/String;

.field private final keyListener:Landroid/view/View$OnKeyListener;

.field private networkTask:Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;

.field private queryButton:Landroid/widget/Button;

.field private queryTextView:Landroid/widget/EditText;

.field private resultListView:Landroid/widget/ListView;

.field private final taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG:Ljava/lang/String;

    .line 60
    const-string v0, "\\<.*?\\>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "&lt;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->LT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "&gt;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->GT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    .line 63
    const-string v0, "&#39;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOTE_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    .line 64
    const-string v0, "&quot;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->buttonListener:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$2;

    invoke-direct {v0, p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$2;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->keyListener:Landroid/view/View$OnKeyListener;

    .line 75
    new-instance v0, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;

    invoke-direct {v0}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iput-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->launchSearch()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->GT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOTE_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->QUOT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/zxing/FakeR;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/book/SearchBookContentsActivity;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->TAG_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->LT_ENTITY_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private launchSearch()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 162
    iget-object v2, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 164
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkTask:Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;

    .line 165
    .local v0, "oldTask":Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, v7}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->cancel(Z)Z

    .line 168
    :cond_0
    new-instance v2, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;

    invoke-direct {v2, p0, v8}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;-><init>(Lcom/google/zxing/client/android/book/SearchBookContentsActivity;Lcom/google/zxing/client/android/book/SearchBookContentsActivity$1;)V

    iput-object v2, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkTask:Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;

    .line 169
    iget-object v2, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkTask:Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v6

    iget-object v5, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 170
    iget-object v2, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    sget-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "string"

    const-string v5, "msg_sbc_searching_book"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 171
    iget-object v2, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    iget-object v2, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 173
    iget-object v2, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 175
    .end local v0    # "oldTask":Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;
    :cond_1
    return-void
.end method


# virtual methods
.method getISBN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    new-instance v3, Lcom/google/zxing/FakeR;

    invoke-direct {v3, p0}, Lcom/google/zxing/FakeR;-><init>(Landroid/app/Activity;)V

    sput-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    .line 109
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 110
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 112
    invoke-virtual {p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 113
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.zxing.client.android.SEARCH_BOOK_CONTENTS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->finish()V

    .line 143
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v3, "ISBN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    .line 119
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/zxing/client/android/LocaleManager;->isBookSearchUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 120
    sget-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "string"

    const-string v5, "sbc_name"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    :goto_1
    sget-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "layout"

    const-string v5, "search_book_contents"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->setContentView(I)V

    .line 126
    sget-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "id"

    const-string v5, "query_text_view"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    .line 128
    const-string v3, "QUERY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "initialQuery":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    :cond_2
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->keyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 135
    sget-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "id"

    const-string v5, "query_button"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;

    .line 136
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->buttonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "id"

    const-string v5, "result_list_view"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    .line 139
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 140
    .local v0, "factory":Landroid/view/LayoutInflater;
    sget-object v3, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v4, "layout"

    const-string v5, "search_book_contents_header"

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    .line 142
    iget-object v3, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->resultListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->headerView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "factory":Landroid/view/LayoutInflater;
    .end local v1    # "initialQuery":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v5, "string"

    const-string v6, "sbc_name"

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ISBN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->isbn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkTask:Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;

    .line 154
    .local v0, "oldTask":Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;
    if-eqz v0, :cond_0

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;->cancel(Z)Z

    .line 156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->networkTask:Lcom/google/zxing/client/android/book/SearchBookContentsActivity$NetworkTask;

    .line 158
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 159
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/google/zxing/client/android/book/SearchBookContentsActivity;->queryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 149
    return-void
.end method
