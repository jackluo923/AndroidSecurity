.class public Lcom/alipay/mobile/wealth/common/component/IconSetter;
.super Ljava/lang/Object;
.source "IconSetter.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I


# instance fields
.field private c:Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;

.field private d:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "wealth-common-icon"

    sput-object v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;

    .line 31
    const/16 v0, 0x64

    sput v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->e:I

    .line 41
    sget v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b:I

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->f:I

    .line 42
    sget v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b:I

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->g:I

    .line 45
    iput p1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->e:I

    .line 46
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->e:I

    .line 41
    sget v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b:I

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->f:I

    .line 42
    sget v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b:I

    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->g:I

    .line 49
    iput p1, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->e:I

    .line 50
    if-lez p2, :cond_0

    move v0, p2

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->f:I

    .line 51
    if-lez p3, :cond_1

    move v0, p3

    :goto_1
    iput v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->g:I

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "defaultIcon="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 53
    const-string/jumbo v3, ",height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 50
    :cond_0
    sget v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b:I

    goto :goto_0

    .line 51
    :cond_1
    sget v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b:I

    goto :goto_1
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setDefaultImage:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 124
    new-instance v0, Lcom/alipay/mobile/wealth/common/component/IconSetter$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/wealth/common/component/IconSetter$1;-><init>(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setImageAction:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    const-string/jumbo v4, ",path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Landroid/view/View;)V

    .line 104
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->current_drawable_tag:I

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 119
    :goto_0
    return-void

    .line 107
    :cond_0
    sget v0, Lcom/alipay/android/phone/wealth/common/R$id;->url_tag:I

    invoke-virtual {p2, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 108
    new-instance v0, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;-><init>(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->c:Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;

    .line 110
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    .line 112
    const-class v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    .line 111
    iput-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->d:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    .line 114
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->d:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iget-object v4, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->c:Lcom/alipay/mobile/wealth/common/component/IconSetter$BankLogoLoaderListener;

    .line 116
    iget v5, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->f:I

    iget v6, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->g:I

    move-object v2, v1

    move-object v3, p1

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    .line 117
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startLoad:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 118
    const-string/jumbo v3, ",path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 145
    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APTableView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftImage(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/wealth/common/component/IconSetter;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->b(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 136
    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APTableView;

    if-eqz v0, :cond_1

    .line 137
    check-cast p1, Lcom/alipay/mobile/commonui/widget/APTableView;

    iget v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->e:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APTableView;->setLeftImage(I)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    instance-of v0, p1, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    if-eqz v0, :cond_2

    .line 139
    check-cast p1, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    iget v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->e:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftImage(I)V

    goto :goto_0

    .line 140
    :cond_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Landroid/widget/ImageView;

    iget v0, p0, Lcom/alipay/mobile/wealth/common/component/IconSetter;->e:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public setBankIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public setBankIcon(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public setBankIcon(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APTableView;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 64
    return-void
.end method

.method public setIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public setIcon(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 80
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;Z)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APTableView;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APTableView;Z)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/wealth/common/component/IconSetter;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 88
    return-void
.end method
