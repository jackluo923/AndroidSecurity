.class public final Lcom/alipay/android/phone/globalsearch/c/a;
.super Ljava/lang/Object;
.source "BillItemView.java"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/a;->b:[I

    .line 22
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/c/a;->a:Landroid/app/Activity;

    .line 23
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/a;->b:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/a;->b:[I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/businesscommon/globalsearch/d;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v1

    .line 25
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/globalsearch/c/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/g;->b:I

    invoke-virtual {v0, v1, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance v1, Lcom/alipay/android/phone/globalsearch/c/b;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/globalsearch/c/b;-><init>(Lcom/alipay/android/phone/globalsearch/c/a;)V

    .line 32
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->p:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/b;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 33
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->b:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/b;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 34
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->N:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/b;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 35
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->e:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/b;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 36
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->d:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/android/phone/globalsearch/c/b;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 37
    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 41
    :goto_0
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 42
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->s:I

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 44
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v2, Lcom/alipay/android/phone/businesscommon/globalsearch/f;->r:I

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setTag(ILjava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a()Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/b;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v3, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/phone/globalsearch/c/a;->b:[I

    sget v5, Lcom/alipay/android/phone/businesscommon/globalsearch/e;->b:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/b;->a(Landroid/widget/ImageView;Ljava/lang/String;[II)V

    .line 47
    :cond_0
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_2

    .line 79
    :goto_1
    return-object p1

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/c/b;

    goto :goto_0

    .line 51
    :cond_2
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "createTime"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "createTime"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 58
    :goto_2
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "consumeFee"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "consumeFee"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 64
    :goto_3
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 65
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "status"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "statusColor"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    :try_start_0
    iget-object v1, p3, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;->extJson:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v2, "statusColor"

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 69
    iget-object v2, v0, Lcom/alipay/android/phone/globalsearch/c/b;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_3
    :goto_4
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/b;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_1

    .line 55
    :cond_4
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_2

    .line 62
    :cond_5
    iget-object v1, v0, Lcom/alipay/android/phone/globalsearch/c/b;->e:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto :goto_3

    .line 70
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 76
    :cond_6
    iget-object v0, v0, Lcom/alipay/android/phone/globalsearch/c/b;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    goto/16 :goto_1
.end method
