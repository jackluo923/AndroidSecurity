.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;
.super Ljava/lang/Object;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c()V

    .line 137
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(J)V

    .line 142
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    .line 143
    instance-of v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "WALLET-SEARCH|MoreCell"

    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->templateId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    check-cast v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;

    .line 145
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->groupId:Ljava/lang/String;

    const-string/jumbo v2, "bill"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-static {v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->searchMore(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_4
    iget-object v1, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    const-string/jumbo v2, "alipays://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 151
    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    iget-object v0, v0, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->d:Ljava/lang/String;

    .line 155
    const-string/jumbo v2, ""

    .line 154
    invoke-static {v1, v0, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_6
    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v1, "search"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onItemClick : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " onClick ,action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 162
    const-string/jumbo v1, "text"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v1, "group"

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->group:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v1, "bizId"

    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->bizId:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v1, "index"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "jiushi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "map : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sput p3, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    .line 168
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionType:Ljava/lang/String;

    const-string/jumbo v3, "chatGroup"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->getChatMessageClickListener()Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;

    move-result-object v1

    .line 170
    iget-object v3, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;->getChatMessageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 171
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->groupId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/globalsearch/api/ChatMessageClickListener;->getChatName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 173
    iget-object v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-static {v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v4, "Models"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v3, "titleName"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v0, "keyWord"

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;

    invoke-static {v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;->d(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ac;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v0, "chatGroup"

    const-string/jumbo v3, "y"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v0, "group"

    const-string/jumbo v3, "chatGroup"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/alipay/android/phone/globalsearch/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 182
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 185
    :cond_7
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 188
    const-string/jumbo v3, "local"

    iget-boolean v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->fromServer:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "y"

    :goto_1
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/alipay/android/phone/globalsearch/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    const-string/jumbo v2, "alipays://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 191
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->a(Ljava/lang/String;)V

    .line 196
    :goto_2
    const-string/jumbo v1, "jiushi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "scheme : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_8
    const-string/jumbo v1, "n"

    goto :goto_1

    .line 194
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->actionParam:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/j;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
