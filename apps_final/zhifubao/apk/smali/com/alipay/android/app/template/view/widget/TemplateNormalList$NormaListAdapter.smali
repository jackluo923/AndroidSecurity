.class public Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TemplateNormalList.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)Lcom/alipay/android/app/template/view/widget/TemplateNormalList;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x0

    .line 252
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 260
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 265
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 271
    .line 272
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;

    move-object v1, v0

    .line 292
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;

    .line 293
    if-nez v0, :cond_2

    .line 389
    :goto_1
    return-object p2

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v2

    .line 277
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-virtual {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->getWindow()Lcom/alipay/android/app/template/TemplateWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 279
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "template_channel_item"

    invoke-static {v5, v6}, Lcom/alipay/android/app/template/ResUtils;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;I)V

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 282
    new-instance v1, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)V

    .line 283
    const-string/jumbo v0, "checked"

    invoke-static {v2, v0}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;Landroid/widget/ImageView;)V

    .line 284
    const-string/jumbo v0, "detail"

    invoke-static {v2, v0}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;Landroid/widget/TextView;)V

    .line 285
    const-string/jumbo v0, "fan"

    invoke-static {v2, v0}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;Landroid/widget/ImageView;)V

    .line 286
    const-string/jumbo v0, "hui"

    invoke-static {v2, v0}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;Landroid/widget/ImageView;)V

    .line 287
    const-string/jumbo v0, "name"

    invoke-static {v2, v0}, Lcom/alipay/android/app/template/ResUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;Landroid/widget/TextView;)V

    .line 288
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 296
    :cond_2
    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 297
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 298
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v5, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    invoke-static {v5}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 303
    :goto_2
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 305
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->e(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->e(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->f(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_5
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    invoke-static {v1, v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)V

    .line 310
    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->g(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 311
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    :goto_6
    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->d(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 317
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    iget-object v4, v4, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "indicatior_loading"

    invoke-static {v4, v5}, Lcom/alipay/android/app/template/ResUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 326
    :cond_4
    :goto_7
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->h(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->i(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_8
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 328
    new-instance v0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter$1;-><init>(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 300
    :cond_5
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->a(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 304
    :cond_6
    const/4 v2, 0x4

    goto/16 :goto_3

    :cond_7
    move v2, v4

    .line 306
    goto/16 :goto_4

    :cond_8
    move v2, v4

    .line 308
    goto :goto_5

    .line 313
    :cond_9
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->g(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 318
    :cond_a
    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 319
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/ImageView;

    move-result-object v2

    .line 320
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    iget-object v4, v4, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "arrow_right"

    const-string/jumbo v6, "drawable"

    .line 319
    invoke-static {v4, v5, v6}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 321
    :cond_b
    invoke-static {v0}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;->b(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$Channel;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 322
    invoke-static {v1}, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;->c(Lcom/alipay/android/app/template/view/widget/TemplateNormalList$ChannelHolder;)Landroid/widget/ImageView;

    move-result-object v2

    .line 323
    iget-object v4, p0, Lcom/alipay/android/app/template/view/widget/TemplateNormalList$NormaListAdapter;->a:Lcom/alipay/android/app/template/view/widget/TemplateNormalList;

    iget-object v4, v4, Lcom/alipay/android/app/template/view/widget/TemplateNormalList;->k:Lcom/alipay/android/app/template/TemplateWindow;

    invoke-virtual {v4}, Lcom/alipay/android/app/template/TemplateWindow;->getContext()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "gou"

    const-string/jumbo v6, "drawable"

    .line 322
    invoke-static {v4, v5, v6}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    .line 327
    :cond_c
    const/4 v3, 0x1

    goto :goto_8
.end method
