.class final Lcom/alipay/mobile/socialwidget/ui/aa;
.super Ljava/lang/Object;
.source "StrangerSessionPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    new-instance v1, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iget-object v3, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v3}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v4}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iget-object v0, v0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iget-object v0, v0, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->e(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    iget-object v1, v1, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    iget-object v2, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v2}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->notifyDataSetChanged()V

    .line 220
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v0}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->c(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialwidget/ui/aa;->a:Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;

    invoke-static {v1}, Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;->d(Lcom/alipay/mobile/socialwidget/ui/StrangerSessionPage;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialwidget/adapter/RecentSessionCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
