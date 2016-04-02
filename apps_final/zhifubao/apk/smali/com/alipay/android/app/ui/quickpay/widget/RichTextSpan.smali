.class public Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Landroid/text/ParcelableSpan;
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private a:I

.field private b:F

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IFLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->a:I

    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->a:I

    iput p2, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->b:F

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    const/16 v0, -0x64

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->b:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->c:Ljava/lang/String;

    const-string/jumbo v1, "line-through"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/widget/RichTextSpan;->c:Ljava/lang/String;

    const-string/jumbo v1, "underline"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
