.class public Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;
.super Landroid/widget/LinearLayout;
.source "ActivityTitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final INTERVAL_MILLIS:J

.field private final ONE_DAY_MILLIS:J

.field private final ONE_HOUR_MILLIS:J

.field private final TAG:Ljava/lang/String;

.field private final activityStatus:Landroid/widget/TextView;

.field private final activityTitle:Landroid/widget/TextView;

.field private cellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;",
            ">;"
        }
    .end annotation
.end field

.field private clickParam:Ljava/lang/String;

.field private delegate:Ljava/lang/Runnable;

.field private gmtDataMillis:J

.field private gmtEndMillis:J

.field private gmtStartMillis:J

.field private final line0:Landroid/view/View;

.field private final line1:Landroid/view/View;

.field private promoSchema:Ljava/lang/String;

.field private tickCountMillis:J

.field private timerRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->INTERVAL_MILLIS:J

    .line 44
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->ONE_HOUR_MILLIS:J

    .line 45
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->ONE_DAY_MILLIS:J

    .line 46
    const-string/jumbo v0, "ActivityTitleView"

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->TAG:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    .line 60
    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    .line 61
    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    .line 62
    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    .line 63
    iput-wide v2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->tickCountMillis:J

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->clickParam:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$layout;->view_activity_title:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 71
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_activity_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityTitle:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_activity_status:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->line_0:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line0:Landroid/view/View;

    .line 74
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->line_1:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line1:Landroid/view/View;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    .line 78
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_0:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    .line 79
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->icon_0:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->imageViewId:I

    .line 80
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_0:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->richTextId:I

    .line 81
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_0:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    .line 82
    iget-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    .line 86
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_1:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    .line 87
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->icon_1:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->imageViewId:I

    .line 88
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_1:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->richTextId:I

    .line 89
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_1:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    .line 90
    iget-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    .line 94
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_2:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    .line 95
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->icon_2:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->imageViewId:I

    .line 96
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->text_2:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->richTextId:I

    .line 97
    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->discount_2:I

    iput v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    .line 98
    iget-object v1, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$id;->layout_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    new-instance v1, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$1;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Z
    .locals 1

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->executeBizTask()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    return-object v0
.end method

.method private executeBizTask()Z
    .locals 14

    .prologue
    const-wide/32 v11, 0x36ee80

    const/4 v1, 0x0

    const/16 v10, 0xc

    const/4 v0, 0x1

    const/16 v9, 0xd

    .line 281
    .line 285
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 286
    const-string/jumbo v3, "GMT+8"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 288
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->tickCountMillis:J

    sub-long/2addr v5, v7

    add-long/2addr v3, v5

    .line 289
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_a

    .line 290
    add-long v5, v3, v11

    iget-wide v7, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 292
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 293
    const-string/jumbo v1, "HH:mm:ss"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat0(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8ddd\u79bb\u5f00\u59cb <font color=#f85800>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v0

    .line 359
    :goto_0
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    if-eqz v0, :cond_11

    .line 362
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->activity_shape_rectangle:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 369
    :cond_0
    :goto_1
    return v2

    .line 295
    :cond_1
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    sub-long/2addr v5, v3

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 297
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 298
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 299
    const-string/jumbo v3, "HH\u70b9\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_3

    .line 302
    const-string/jumbo v3, "HH:mm\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto :goto_0

    .line 304
    :cond_3
    const-string/jumbo v3, "HH:mm:ss\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto :goto_0

    .line 306
    :cond_4
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    sub-long v3, v5, v3

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 308
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 309
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_5

    .line 310
    const-string/jumbo v3, "\u660e\u5929HH\u70b9\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 312
    :cond_5
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_6

    .line 313
    const-string/jumbo v3, "\u660e\u5929HH:mm\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 315
    :cond_6
    const-string/jumbo v3, "\u660e\u5929HH:mm:ss\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 318
    :cond_7
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 319
    const-string/jumbo v3, "%d\u6708%d\u65e5"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_8

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "HH\u70b9\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 323
    :cond_8
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_9

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "HH:mm\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 326
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "HH:mm:ss\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 329
    :cond_a
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    sub-long/2addr v5, v11

    cmp-long v5, v3, v5

    if-gez v5, :cond_d

    .line 331
    iget-wide v3, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 332
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_b

    .line 333
    const-string/jumbo v3, "HH\u70b9\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 335
    :cond_b
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_c

    .line 336
    const-string/jumbo v3, "HH:mm\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 338
    :cond_c
    const-string/jumbo v3, "HH:mm:ss\u51c6\u65f6\u5f00\u62a2"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 340
    :cond_d
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_e

    .line 342
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 343
    const-string/jumbo v1, "HH:mm:ss"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat0(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8ddd\u79bb\u5f00\u59cb <font color=#f85800>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v0

    goto/16 :goto_0

    .line 346
    :cond_e
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    sub-long/2addr v5, v11

    cmp-long v5, v3, v5

    if-gez v5, :cond_f

    .line 347
    const-string/jumbo v2, "\u6d3b\u52a8\u8fdb\u884c\u4e2d"

    move v13, v1

    move-object v1, v2

    move v2, v0

    move v0, v13

    goto/16 :goto_0

    .line 348
    :cond_f
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_10

    .line 350
    iget-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    sub-long v3, v5, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 351
    const-string/jumbo v1, "HH:mm:ss"

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat0(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8ddd\u79bb\u7ed3\u675f <font color=#f85800>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v0

    goto/16 :goto_0

    .line 354
    :cond_10
    const-string/jumbo v0, "\u6d3b\u52a8\u7ed3\u675f"

    move v2, v1

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    .line 355
    goto/16 :goto_0

    .line 364
    :cond_11
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityStatus:Landroid/widget/TextView;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_1
.end method

.method private getTimeFormat0(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 269
    const-string/jumbo v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 270
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 275
    const-string/jumbo v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 276
    invoke-virtual {v0, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initActivityBody(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line0:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line1:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    move v1, v2

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 182
    const-string/jumbo v0, "details"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    const-string/jumbo v0, "details"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 184
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v3, v2

    .line 185
    :goto_1
    if-lt v3, v4, :cond_4

    .line 189
    const/4 v0, 0x1

    if-le v4, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line0:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    :cond_0
    const/4 v0, 0x2

    if-le v4, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->line1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_1
    return-void

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    iget-object v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    iget-object v3, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    iget v0, v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_3

    .line 178
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 186
    :cond_4
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->cellList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;

    invoke-direct {p0, v5, v1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->setActivityCell(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;)V

    .line 185
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1
.end method

.method private initActivityTitle(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ActivityTitleView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "currentTimer  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->tickCountMillis:J

    .line 131
    const-string/jumbo v0, "promoSchema"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string/jumbo v0, "promoSchema"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;

    .line 137
    :goto_0
    const-string/jumbo v0, "gmtStart"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    const-string/jumbo v0, "gmtStart"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    .line 143
    :goto_1
    const-string/jumbo v0, "gmtEnd"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const-string/jumbo v0, "gmtEnd"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    .line 149
    :goto_2
    const-string/jumbo v0, "currentTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    const-string/jumbo v0, "currentTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    .line 155
    :goto_3
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "promoName"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->activityTitle:Landroid/widget/TextView;

    const-string/jumbo v0, "promoName"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 161
    iget-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ActivityTitleView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "gmtStart: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 164
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ActivityTitleView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "gmtEnd: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-wide v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ActivityTitleView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "gmtDate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getTimeFormat8(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 134
    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->promoSchema:Ljava/lang/String;

    goto/16 :goto_0

    .line 140
    :cond_2
    iput-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtStartMillis:J

    goto/16 :goto_1

    .line 146
    :cond_3
    iput-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtEndMillis:J

    goto/16 :goto_2

    .line 152
    :cond_4
    iput-wide v5, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->gmtDataMillis:J

    goto/16 :goto_3
.end method

.method private launchDelegate()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$2;-><init>(Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;)V

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    .line 263
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->startTimer()V

    .line 264
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->executeBizTask()Z

    .line 265
    return-void
.end method

.method private setActivityCell(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 199
    iget-object v6, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->layoutView:Landroid/view/View;

    .line 200
    iget v0, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->imageViewId:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 202
    const-string/jumbo v0, "logoUrl"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->activity_icon_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 208
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/alipay/android/phone/discovery/o2ohome/R$dimen;->activity_icon_width:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 207
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 209
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->getExtServiceByInterface(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 210
    const-string/jumbo v1, "logoUrl"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->placeholder:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move v5, v4

    .line 210
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 217
    :goto_0
    iget v0, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->richTextId:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 218
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :goto_1
    iget v0, p2, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView$CellViewId;->discountId:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    if-eqz v0, :cond_1

    .line 226
    const-string/jumbo v1, ""

    .line 227
    const-string/jumbo v2, "discount"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const-string/jumbo v1, "discount"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :cond_1
    :goto_2
    invoke-virtual {v6, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 246
    return-void

    .line 214
    :cond_2
    sget v0, Lcom/alipay/android/phone/discovery/o2ohome/R$drawable;->placeholder:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 221
    :cond_3
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 233
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "<font size=\"12\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</font>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v2, v1}, Lcom/alipay/tag/html/Html;->fromHtml(FLjava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 238
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private startTimer()V
    .locals 3

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    .line 375
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 377
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 381
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 382
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 394
    if-eqz v0, :cond_3

    const-string/jumbo v1, "jumpUrl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    const-string/jumbo v1, "jumpUrl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->decoderUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->clickParam:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&_merchantName="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/discovery/o2ohome/util/UrlCoderHelper;->encoderUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    :cond_0
    const-string/jumbo v2, "logoUrl"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&_logo="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "logoUrl"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    :cond_1
    const-string/jumbo v2, "discountRate"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&_discountNum="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "discountRate"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 412
    :cond_2
    invoke-static {v1}, Lcom/alipay/android/phone/discovery/o2ohome/util/OpenPageHelper;->goUrl(Ljava/lang/String;)V

    .line 414
    :cond_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 386
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 387
    invoke-virtual {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->stopTimer()V

    .line 388
    return-void
.end method

.method public startTimerHandler(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->initActivityTitle(Ljava/util/Map;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->initActivityBody(Ljava/util/Map;)V

    .line 118
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->clickParam:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->launchDelegate()V

    .line 120
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->timerRunning:Z

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->delegate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/discovery/o2ohome/view/ActivityTitleView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method
