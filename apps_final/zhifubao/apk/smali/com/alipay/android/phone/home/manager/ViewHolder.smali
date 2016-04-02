.class public Lcom/alipay/android/phone/home/manager/ViewHolder;
.super Ljava/lang/Object;
.source "ViewHolder.java"


# static fields
.field private static m:I

.field private static n:I


# instance fields
.field public a:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field public c:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public d:Lcom/alipay/android/phone/home/ui/PieProgressView;

.field public e:Lcom/alipay/mobile/commonui/widget/APTextView;

.field public f:Lcom/alipay/android/phone/home/widget/AdCornerView;

.field public g:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public h:Lcom/alipay/android/phone/home/ui/CommonBadgeView;

.field public i:Lcom/alipay/android/phone/home/ui/MoreBadgeView;

.field public j:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public k:Lcom/alipay/mobile/commonui/widget/APImageView;

.field public l:Lcom/alipay/mobile/commonui/widget/APFrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x4c

    sput v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->m:I

    .line 49
    const/16 v0, 0xff

    sput v0, Lcom/alipay/android/phone/home/manager/ViewHolder;->n:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/android/phone/home/manager/ViewHolder;)V
    .locals 2

    .prologue
    .line 74
    if-nez p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->m:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method public static a(Lcom/alipay/android/phone/home/manager/ViewHolder;I)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 135
    return-void
.end method

.method public static a(Lcom/alipay/android/phone/home/manager/ViewHolder;Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 52
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ViewHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setBgAlpha, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->m:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAlpha(I)V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$color;->h:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_4

    .line 63
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->m:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAlpha(I)V

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_5

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->m:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAlpha(I)V

    .line 68
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->m:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setAlpha(I)V

    goto :goto_0
.end method

.method public static a(ZLcom/alipay/android/phone/home/manager/ViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    if-eqz p0, :cond_0

    .line 115
    iget-object v0, p1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p1, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 117
    iget-object v0, p1, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p1, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 120
    iget-object v0, p1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    .line 121
    iget-object v0, p1, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static b(Lcom/alipay/android/phone/home/manager/ViewHolder;)V
    .locals 2

    .prologue
    .line 83
    if-nez p0, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAlpha(I)V

    goto :goto_0
.end method

.method public static b(Lcom/alipay/android/phone/home/manager/ViewHolder;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 92
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->a:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAlpha(I)V

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/openplatform/R$color;->g:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    .line 102
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->c:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAlpha(I)V

    .line 105
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_5

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->g:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setAlpha(I)V

    .line 108
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/ViewHolder;->f:Lcom/alipay/android/phone/home/widget/AdCornerView;

    sget v1, Lcom/alipay/android/phone/home/manager/ViewHolder;->n:I

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/widget/AdCornerView;->setAlpha(I)V

    goto :goto_0
.end method
