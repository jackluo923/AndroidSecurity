.class public Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;
.super Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;
.source "FastLoginAppAdapter.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;

.field private final c:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field private d:Landroid/content/res/ColorStateList;

.field private e:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/ScrollMoreListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 56
    iput-object p3, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/R$drawable;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->d:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/R$drawable;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->e:Landroid/content/res/ColorStateList;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Landroid/view/View;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 298
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp()V

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/AppCenterLogUtil;->b(Ljava/lang/String;)V

    check-cast p1, Landroid/widget/Button;

    sget v0, Lcom/alipay/mobile/openplatform/R$drawable;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    sget v0, Lcom/alipay/mobile/openplatform/R$string;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/R$color;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/AppCenterLogUtil;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\u6709\u65b0\u7248\u672c\uff0c\u9700\u8981\u66f4\u65b0\u624d\u80fd\u4f7f\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u66f4\u65b0"

    new-instance v4, Lcom/alipay/mobile/appstoreapp/adapter/d;

    invoke-direct {v4, p0, p2}, Lcom/alipay/mobile/appstoreapp/adapter/d;-><init>(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 3

    .prologue
    .line 320
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->c:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 348
    move v1, v0

    move v2, v0

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->notifyDataSetChanged()V

    .line 358
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 353
    add-int/lit8 v2, v2, 0x1

    .line 355
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;

    .line 52
    return-void
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 253
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v0

    if-nez v0, :cond_4

    .line 261
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    instance-of v0, v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_8

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_4
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_5

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 268
    if-eqz v1, :cond_7

    instance-of v0, v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 269
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 271
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 272
    if-eq p1, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 265
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_7
    move-object v0, v3

    goto :goto_3

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    :cond_1
    return-void

    .line 287
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 288
    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFailView()Landroid/view/View;
    .locals 4

    .prologue
    .line 196
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;-><init>(Landroid/content/Context;)V

    .line 197
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 198
    const/4 v2, -0x1

    .line 199
    const/4 v3, -0x2

    .line 197
    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 200
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/openplatform/R$dimen;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 201
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setGravity(I)V

    .line 204
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/openplatform/R$string;->g:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 163
    if-nez p2, :cond_1

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 166
    sget v1, Lcom/alipay/mobile/openplatform/R$layout;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 167
    new-instance v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;-><init>(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;)V

    .line 168
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->c:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 169
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->d:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 170
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->f:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 171
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->m:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 172
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->a:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 173
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mListDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 178
    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getSlogan()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isRecommend()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v3, Lcom/alipay/mobile/openplatform/R$drawable;->b:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v3, Lcom/alipay/mobile/openplatform/R$string;->b:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(I)V

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_2
    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_3
    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v3, Lcom/alipay/mobile/appstoreapp/adapter/a;

    invoke-direct {v3, p0, v0, p1}, Lcom/alipay/mobile/appstoreapp/adapter/a;-><init>(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;I)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/appstoreapp/util/IconLoadHelper;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/alipay/mobile/appstoreapp/adapter/b;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/appstoreapp/adapter/b;-><init>(Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V

    .line 179
    :cond_0
    return-object p2

    .line 175
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 178
    :cond_2
    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->d:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v3, Lcom/alipay/mobile/openplatform/R$drawable;->a:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v3, Lcom/alipay/mobile/openplatform/R$string;->e:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(I)V

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/openplatform/R$color;->a:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(I)V

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_3

    :cond_5
    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v3, Lcom/alipay/mobile/openplatform/R$drawable;->d:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v3, Lcom/alipay/mobile/openplatform/R$string;->h:I

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setText(I)V

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->d:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_4
    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_3

    :cond_6
    iget-object v2, v1, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter$ViewHolder;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setTextColor(I)V

    goto :goto_4
.end method

.method protected getLoadingView()Landroid/view/View;
    .locals 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/ui/R$layout;->refresh_loading:I

    .line 185
    const/4 v2, 0x0

    .line 184
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 186
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 187
    const/4 v2, -0x1

    .line 188
    const/4 v3, -0x2

    .line 186
    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 189
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/openplatform/R$dimen;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    return-object v0
.end method

.method protected hasMore()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;->a()Z

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected itemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 218
    return-void
.end method

.method protected onMore()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapter;->b:Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;

    invoke-interface {v0}, Lcom/alipay/mobile/appstoreapp/adapter/FastLoginAppAdapterCallback;->b()V

    .line 225
    :cond_0
    return-void
.end method

.method protected onRetry()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method
