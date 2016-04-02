.class Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;
.super Ljava/lang/Object;
.source "TemplateNormalList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;

    .line 332
    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    move-result-object v1

    .line 333
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2}, Lcom/alipay/android/app/template/TemplateWindow;->getGlobalClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v2}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v2, v7}, Lcom/alipay/android/app/template/TemplateWindow;->setGlobalClick(Z)V

    .line 340
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 341
    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 342
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->j(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->j(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->e(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 343
    const-string/jumbo v0, "name"

    const-string/jumbo v1, "loc:back"

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string/jumbo v0, "action"

    invoke-virtual {v2, v0, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getDocument()Lcom/alipay/android/app/template/TemplateDocument;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/template/TemplateDocument;->submit(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "paychannel"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 350
    const-string/jumbo v4, "name"

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->g(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 352
    const-string/jumbo v4, "name"

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->h(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_3
    const-string/jumbo v4, "loadtxt"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 356
    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "deposit"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 357
    const-string/jumbo v5, "choosed_channel_no"

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->k(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;I)V

    .line 363
    :goto_1
    const-string/jumbo v5, "params"

    invoke-virtual {v3, v5, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 364
    const-string/jumbo v4, "action"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 377
    :goto_2
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v3}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)V

    .line 378
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 379
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 380
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;Z)V

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->i(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->notifyDataSetChanged()V

    .line 383
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getDocument()Lcom/alipay/android/app/template/TemplateDocument;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "template_normal_list_func_key"

    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;

    invoke-static {v3}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/template/TemplateDocument;->nativeAsyncSubmit(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/view/widget/TElement;)V

    goto/16 :goto_0

    .line 359
    :cond_5
    const-string/jumbo v5, "resultStatus"

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->l(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v5, "result"

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->j(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v5, "memo"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 366
    :cond_6
    new-instance v4, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v4}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 367
    const-string/jumbo v5, "name"

    const-string/jumbo v6, "/cashier/switchChannelSel"

    invoke-virtual {v3, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 369
    const-string/jumbo v5, "l2rmode"

    const-string/jumbo v6, "1"

    invoke-virtual {v3, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_7
    const-string/jumbo v5, "loadtxt"

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v5, "selected_channel"

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->j(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v5, "first_enter_cashier"

    invoke-virtual {v4, v5, v7}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Z)V

    .line 374
    const-string/jumbo v5, "action"

    invoke-virtual {v2, v5, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    .line 375
    const-string/jumbo v3, "param"

    invoke-virtual {v2, v3, v4}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    goto/16 :goto_2
.end method
