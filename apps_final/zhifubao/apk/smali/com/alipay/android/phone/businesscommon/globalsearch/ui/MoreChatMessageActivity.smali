.class public Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "MoreChatMessageActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "activity_more_msg"
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field protected b:Landroid/widget/ListView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field protected c:Lcom/alipay/mobile/commonui/widget/APTextView;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getTitleTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setSupportEmoji(Z)V

    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 55
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    iget-object v1, v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->b:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->a(Ljava/util/List;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u5171"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u6761\u4e0e\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"\u76f8\u5173\u7684\u804a\u5929\u8bb0\u5f55"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 43
    :try_start_0
    const-string/jumbo v1, "titleName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->d:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "Models"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->f:Ljava/util/List;

    .line 45
    const-string/jumbo v1, "keyWord"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
