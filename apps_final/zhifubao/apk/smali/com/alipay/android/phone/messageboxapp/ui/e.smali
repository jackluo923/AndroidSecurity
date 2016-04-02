.class final Lcom/alipay/android/phone/messageboxapp/ui/e;
.super Ljava/lang/Object;
.source "MsgboxAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Ljava/util/ArrayList;

.field private final synthetic d:Ljava/util/ArrayList;

.field private final synthetic e:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iput-object p2, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->c:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->d:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->e:Ljava/util/ArrayList;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 338
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/commonui/widget/APTitleBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->stopProgressBar()V

    .line 341
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e:Ljava/util/ArrayList;

    .line 342
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 343
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 344
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 345
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fragmentList = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v3, v3, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a:Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v1, v1, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->setOffscreenPageLimit(I)V

    .line 348
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    new-instance v1, Lcom/alipay/android/phone/messageboxapp/ui/p;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-virtual {v2}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v3, v3, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/alipay/android/phone/messageboxapp/ui/p;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Lcom/alipay/android/phone/messageboxapp/ui/p;)V

    .line 349
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a:Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->h(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 351
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a:Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

    invoke-virtual {v0, v4}, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->setCurrentItem(I)V

    .line 356
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->selectTab(I)V

    .line 357
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    const v1, 0xf423f

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(I)V

    .line 390
    :cond_2
    :goto_0
    return-void

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a:Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;

    invoke-virtual {v0, v5}, Lcom/alipay/android/phone/messageboxapp/ui/SelectScrollViewPage;->setCurrentItem(I)V

    .line 374
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c:I

    .line 375
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c:I

    if-lez v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    new-instance v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Lcom/alipay/mobile/mpass/badge/ui/BadgeView;)V

    .line 378
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->i(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget v2, v2, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 379
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->i(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->addTextRightView(Landroid/view/View;I)V

    .line 382
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d:I

    .line 383
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d:I

    if-lez v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    new-instance v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;Lcom/alipay/mobile/mpass/badge/ui/BadgeView;)V

    .line 386
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget v2, v2, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->setStyleAndMsgCount(Ljava/lang/String;I)V

    .line 387
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->b:Lcom/alipay/mobile/commonui/widget/APSwitchTab;

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/e;->a:Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;->a(Lcom/alipay/android/phone/messageboxapp/ui/MsgboxAppActivity;)Lcom/alipay/mobile/mpass/badge/ui/BadgeView;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/commonui/widget/APSwitchTab;->addTextRightView(Landroid/view/View;I)V

    goto :goto_0
.end method
