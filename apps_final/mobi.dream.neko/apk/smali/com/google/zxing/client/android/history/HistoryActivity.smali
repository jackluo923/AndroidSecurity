.class public final Lcom/google/zxing/client/android/history/HistoryActivity;
.super Landroid/app/ListActivity;
.source "HistoryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static fakeR:Lcom/google/zxing/FakeR;


# instance fields
.field private adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

.field private historyManager:Lcom/google/zxing/client/android/history/HistoryManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/zxing/client/android/history/HistoryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/history/HistoryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/zxing/client/android/history/HistoryActivity;)Lcom/google/zxing/client/android/history/HistoryManager;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/history/HistoryActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    return-object v0
.end method

.method private reloadHistoryItems()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 68
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/history/HistoryManager;->buildHistoryItems()Ljava/util/List;

    move-result-object v2

    .line 69
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/client/android/history/HistoryItem;>;"
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->clear()V

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/history/HistoryItem;

    .line 71
    .local v1, "item":Lcom/google/zxing/client/android/history/HistoryItem;
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v3, v1}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    .end local v1    # "item":Lcom/google/zxing/client/android/history/HistoryItem;
    :cond_0
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    new-instance v4, Lcom/google/zxing/client/android/history/HistoryItem;

    invoke-direct {v4, v5, v5, v5}, Lcom/google/zxing/client/android/history/HistoryItem;-><init>(Lcom/google/zxing/Result;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->add(Ljava/lang/Object;)V

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 100
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 101
    .local v0, "position":I
    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/history/HistoryManager;->deleteHistoryItem(I)V

    .line 102
    invoke-direct {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->reloadHistoryItems()V

    .line 103
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v1, Lcom/google/zxing/FakeR;

    invoke-direct {v1, p0}, Lcom/google/zxing/FakeR;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    .line 54
    new-instance v1, Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/history/HistoryManager;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    .line 55
    new-instance v1, Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-direct {v1, p0}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    .line 56
    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {p0, v1}, Lcom/google/zxing/client/android/history/HistoryActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 58
    .local v0, "listview":Landroid/widget/ListView;
    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/history/HistoryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 92
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3    # "menuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 93
    .local v0, "position":I
    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v1, v0}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/history/HistoryItem;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/history/HistoryItem;->getResult()Lcom/google/zxing/Result;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v3, "string"

    const-string v4, "history_clear_one_history_text"

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v0, v0, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 96
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/history/HistoryManager;->hasHistoryItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 110
    .local v0, "menuInflater":Landroid/view/MenuInflater;
    sget-object v1, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v2, "menu"

    const-string v3, "history"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 112
    .end local v0    # "menuInflater":Landroid/view/MenuInflater;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 80
    iget-object v1, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->adapter:Lcom/google/zxing/client/android/history/HistoryItemAdapter;

    invoke-virtual {v1, p3}, Lcom/google/zxing/client/android/history/HistoryItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/client/android/history/HistoryItem;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/history/HistoryItem;->getResult()Lcom/google/zxing/Result;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/zxing/client/android/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ITEM_NUMBER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/zxing/client/android/history/HistoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->finish()V

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    .line 118
    .local v5, "itemId":I
    sget-object v8, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "id"

    const-string v10, "menu_history_send"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v5, v8, :cond_1

    .line 119
    iget-object v8, p0, Lcom/google/zxing/client/android/history/HistoryActivity;->historyManager:Lcom/google/zxing/client/android/history/HistoryManager;

    invoke-virtual {v8}, Lcom/google/zxing/client/android/history/HistoryManager;->buildHistory()Ljava/lang/CharSequence;

    move-result-object v2

    .line 120
    .local v2, "history":Ljava/lang/CharSequence;
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/client/android/history/HistoryManager;->saveHistory(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 121
    .local v3, "historyFile":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 122
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    sget-object v8, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "string"

    const-string v10, "msg_unmount_usb"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 124
    sget-object v8, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "string"

    const-string v10, "button_ok"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 157
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "history":Ljava/lang/CharSequence;
    .end local v3    # "historyFile":Landroid/net/Uri;
    :goto_0
    return v7

    .line 127
    .restart local v2    # "history":Ljava/lang/CharSequence;
    .restart local v3    # "historyFile":Landroid/net/Uri;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    const-string v9, "mailto:"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v8, 0x80000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v10, "string"

    const-string v11, "history_email_title"

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "subject":Ljava/lang/String;
    const-string v8, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {v4, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v4, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const-string v8, "text/csv"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/google/zxing/client/android/history/HistoryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    sget-object v8, Lcom/google/zxing/client/android/history/HistoryActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v0    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v2    # "history":Ljava/lang/CharSequence;
    .end local v3    # "historyFile":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "subject":Ljava/lang/String;
    :cond_1
    sget-object v8, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "id"

    const-string v10, "menu_history_clear_text"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-ne v5, v8, :cond_2

    .line 141
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    sget-object v8, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "string"

    const-string v10, "msg_sure"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 144
    sget-object v8, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "string"

    const-string v10, "button_ok"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Lcom/google/zxing/client/android/history/HistoryActivity$1;

    invoke-direct {v9, p0}, Lcom/google/zxing/client/android/history/HistoryActivity$1;-><init>(Lcom/google/zxing/client/android/history/HistoryActivity;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    sget-object v8, Lcom/google/zxing/client/android/history/HistoryActivity;->fakeR:Lcom/google/zxing/FakeR;

    const-string v9, "string"

    const-string v10, "button_cancel"

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/FakeR;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v1, v8, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 155
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 64
    invoke-direct {p0}, Lcom/google/zxing/client/android/history/HistoryActivity;->reloadHistoryItems()V

    .line 65
    return-void
.end method
