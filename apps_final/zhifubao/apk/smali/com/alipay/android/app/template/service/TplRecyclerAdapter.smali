.class public Lcom/alipay/android/app/template/service/TplRecyclerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TplRecyclerAdapter.java"


# instance fields
.field context:Landroid/app/Activity;

.field listener:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field templateItems:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "template to be displayed is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    if-nez p3, :cond_1

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_1
    iput-object p1, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->templateItems:Ljava/util/List;

    .line 42
    iput-object p3, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->context:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->listener:Lcom/alipay/android/app/template/event/TElementEventHandler;

    .line 44
    return-void
.end method

.method public static from(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplRecyclerAdapter;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;-><init>(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)V

    return-object v0
.end method

.method private parsePageDataToJson(Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageDataCache:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageDataCache:Lcom/alibaba/fastjson/JSONObject;

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/android/app/template/service/TplRecyclerAdapter$TplViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->onBindViewHolder(Lcom/alipay/android/app/template/service/TplRecyclerAdapter$TplViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/alipay/android/app/template/service/TplRecyclerAdapter$TplViewHolder;I)V
    .locals 8

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;

    .line 64
    invoke-direct {p0, v2}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->parsePageDataToJson(Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;)V

    .line 65
    iget-object v0, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->dynamicTemplateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->id:Ljava/lang/String;

    .line 66
    iget-object v2, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageDataCache:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->listener:Lcom/alipay/android/app/template/event/TElementEventHandler;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->context:Landroid/app/Activity;

    iget-object v6, p1, Lcom/alipay/android/app/template/service/TplRecyclerAdapter$TplViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x1

    .line 65
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    .line 67
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alipay/android/app/template/service/TplRecyclerAdapter$TplViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/alipay/android/app/template/service/TplRecyclerAdapter$TplViewHolder;
    .locals 8

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;

    .line 49
    invoke-direct {p0, v2}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->parsePageDataToJson(Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;)V

    .line 50
    iget-object v0, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->dynamicTemplateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->id:Ljava/lang/String;

    .line 51
    iget-object v2, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageDataCache:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->listener:Lcom/alipay/android/app/template/event/TElementEventHandler;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->context:Landroid/app/Activity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 50
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/alipay/android/app/template/service/TplRecyclerAdapter$TplViewHolder;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter$TplViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public updateTemplates(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->templateItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    invoke-virtual {p0}, Lcom/alipay/android/app/template/service/TplRecyclerAdapter;->notifyDataSetChanged()V

    .line 85
    :cond_0
    return-void
.end method
