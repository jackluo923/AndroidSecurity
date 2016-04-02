.class public Lcom/alipay/android/app/template/service/TplListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TplListAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_METHOD_PROFILING:Z

.field private static count:I


# instance fields
.field context:Landroid/app/Activity;

.field private currentScrollState:I

.field listener:Lcom/alipay/android/app/template/event/TElementEventHandler;

.field private previousEventTime:J

.field private previousFirstVisibleItem:I

.field private scrollDeltaTime:J

.field templateItems:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/template/service/TplListAdapter;->count:I

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    iput v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->currentScrollState:I

    .line 39
    iput v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->previousFirstVisibleItem:I

    .line 40
    iput-wide v1, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->previousEventTime:J

    .line 41
    iput-wide v1, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->scrollDeltaTime:J

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "template to be displayed is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    if-nez p3, :cond_1

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->templateItems:Ljava/util/List;

    .line 57
    iput-object p3, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->context:Landroid/app/Activity;

    .line 58
    iput-object p2, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->listener:Lcom/alipay/android/app/template/event/TElementEventHandler;

    .line 59
    return-void
.end method

.method public static from(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)Lcom/alipay/android/app/template/service/TplListAdapter;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/alipay/android/app/template/service/TplListAdapter;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/app/template/service/TplListAdapter;-><init>(Ljava/util/List;Lcom/alipay/android/app/template/event/TElementEventHandler;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;

    .line 79
    iget-object v0, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageDataCache:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageDataCache:Lcom/alibaba/fastjson/JSONObject;

    .line 82
    :cond_0
    if-eqz p2, :cond_2

    .line 83
    iget v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->currentScrollState:I

    if-eqz v0, :cond_2

    .line 88
    iget-wide v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->scrollDeltaTime:J

    const-wide/16 v3, 0x28

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 110
    :goto_0
    return-object p2

    .line 93
    :cond_1
    iget-wide v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->scrollDeltaTime:J

    const-wide/16 v3, 0x6e

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/alipay/android/app/template/service/TplListAdapter;->notifyDataSetChanged()V

    .line 101
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 102
    iget-object v0, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->dynamicTemplateService:Lcom/alipay/android/app/template/service/DynamicTemplateService;

    iget-object v1, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->id:Ljava/lang/String;

    .line 103
    iget-object v2, v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateItem;->pageDataCache:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->listener:Lcom/alipay/android/app/template/event/TElementEventHandler;

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->context:Landroid/app/Activity;

    const/4 v7, 0x1

    move-object v6, p2

    .line 102
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->generateView(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/event/TElementEventHandler;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .prologue
    .line 136
    iget v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->previousFirstVisibleItem:I

    if-eq v0, p2, :cond_0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    iget-wide v2, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->previousEventTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->scrollDeltaTime:J

    .line 139
    iput p2, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->previousFirstVisibleItem:I

    .line 140
    iput-wide v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->previousEventTime:J

    .line 142
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->currentScrollState:I

    if-eq v0, p2, :cond_0

    .line 124
    if-nez p2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/alipay/android/app/template/service/TplListAdapter;->notifyDataSetChanged()V

    .line 127
    :cond_0
    iput p2, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->currentScrollState:I

    .line 131
    return-void
.end method

.method public updateTemplates(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 114
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->templateItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/template/service/TplListAdapter;->templateItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    invoke-virtual {p0}, Lcom/alipay/android/app/template/service/TplListAdapter;->notifyDataSetChanged()V

    .line 119
    :cond_0
    return-void
.end method
