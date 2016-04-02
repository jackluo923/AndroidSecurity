.class public Lcom/alipay/android/phone/home/ads/Advert;
.super Ljava/lang/Object;
.source "Advert.java"


# static fields
.field private static final DEFAULT_LOOP_TIME:J = 0x36ee80L


# instance fields
.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private drawableId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private index:I

.field private isDefault:Z

.field private loopTime:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->loopTime:J

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->isDefault:Z

    .line 9
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getDrawableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->drawableId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->index:I

    return v0
.end method

.method public getLoopTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->loopTime:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alipay/android/phone/home/ads/Advert;->isDefault:Z

    return v0
.end method

.method public setDefault(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alipay/android/phone/home/ads/Advert;->isDefault:Z

    .line 82
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/Advert;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 50
    return-void
.end method

.method public setDrawableId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/Advert;->drawableId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/Advert;->id:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/Advert;->imageUrl:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/alipay/android/phone/home/ads/Advert;->index:I

    .line 26
    return-void
.end method

.method public setLoopTime(J)V
    .locals 0

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/alipay/android/phone/home/ads/Advert;->loopTime:J

    .line 66
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alipay/android/phone/home/ads/Advert;->url:Ljava/lang/String;

    .line 42
    return-void
.end method
