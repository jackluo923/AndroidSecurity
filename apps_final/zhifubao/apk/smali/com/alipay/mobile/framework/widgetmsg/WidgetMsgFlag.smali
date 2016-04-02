.class public Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "WidgetMsgFlag.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static MSG_STYLE_NEW:I

.field protected static MSG_STYLE_NUM:I

.field protected static MSG_STYLE_POINT:I

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Lcom/alipay/mobile/commonui/widget/APImageView;

.field private f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field private g:Z

.field protected mDescendantCount:I

.field protected mMsgStyle:I

.field protected mPersistenceMsgCount:I

.field protected mTemporaryMsgCount:I

.field protected maxCount:I

.field protected widgetId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NUM:I

    .line 22
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NEW:I

    .line 23
    const-string/jumbo v0, "point"

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->a:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "new"

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->b:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "num"

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->c:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/16 v5, 0x63

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    .line 33
    iput v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    .line 34
    iput v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    .line 35
    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    .line 37
    iput-boolean v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->g:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    .line 39
    iput v5, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    .line 60
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$layout;->widget_msg_flag_layout:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 63
    sget-object v0, Lcom/alipay/mobile/base/commonbiz/R$styleable;->widgetMsgFlag:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->g:Z

    .line 66
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    .line 67
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/16 v1, 0x9

    iput v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    .line 70
    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->widgetMsgBg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 76
    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->widgetMsgText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean p2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->g:Z

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Lcom/alipay/mobile/commonui/widget/APTextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    return-object v0
.end method


# virtual methods
.method public ackClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WidgetMsgFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ackClick,id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput v4, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    .line 133
    iput v4, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->refreshMsgFlag()V

    .line 136
    return-void
.end method

.method protected calculateMsgCount(III)I
    .locals 1

    .prologue
    .line 208
    add-int v0, p1, p2

    add-int/2addr v0, p3

    return v0
.end method

.method public clearBindingWidget(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->reset()V

    .line 268
    :cond_0
    return-void
.end method

.method public clearBindingWidget(Z)V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->reset()V

    .line 281
    :cond_0
    return-void
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    return-object v0
.end method

.method public hideMsgFlag()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 197
    return-void
.end method

.method protected refreshMsgFlag()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag$1;-><init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->post(Ljava/lang/Runnable;)Z

    .line 257
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    .line 110
    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    .line 111
    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    .line 112
    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    .line 114
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->refreshMsgFlag()V

    .line 115
    return-void
.end method

.method public setBindingWidget(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->g:Z

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMsgCount(III)V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "WidgetMsgFlag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setMsgCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    add-int v3, p1, p2

    add-int/2addr v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    const-string/jumbo v3, ",id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->widgetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mTemporaryMsgCount:I

    .line 98
    iput p2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mPersistenceMsgCount:I

    .line 99
    iput p3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mDescendantCount:I

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->refreshMsgFlag()V

    .line 101
    return-void
.end method

.method public setMsgStyle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NUM:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_POINT:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    goto :goto_0

    .line 123
    :cond_2
    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->MSG_STYLE_NEW:I

    iput v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->mMsgStyle:I

    goto :goto_0
.end method

.method public setNeedAck(Z)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public setRedPoindDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 288
    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Landroid/graphics/drawable/Drawable;

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    :cond_0
    return-void
.end method

.method public showMsgFlag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->redpoint:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 155
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    .line 156
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public showMsgFlag(I)V
    .locals 2

    .prologue
    .line 161
    iget v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->maxCount:I

    if-le p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_more_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    .line 169
    return-void

    .line 166
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showMsgFlag(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_txt_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setBackgroundResource(I)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 179
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    .line 182
    :cond_0
    return-void
.end method

.method public showMsgFlagNew()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/mobile/base/commonbiz/R$drawable;->msg_new_bg:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->e:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    .line 191
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->postInvalidate()V

    .line 192
    return-void
.end method
