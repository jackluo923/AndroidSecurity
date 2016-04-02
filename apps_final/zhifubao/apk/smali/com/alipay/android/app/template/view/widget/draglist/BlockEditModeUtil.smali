.class public Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;
.super Ljava/lang/Object;
.source "BlockEditModeUtil.java"


# static fields
.field private static a:Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;


# instance fields
.field private b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->a:Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->a:Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;

    invoke-direct {v0}, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->a:Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;

    .line 14
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->a:Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;

    return-object v0
.end method


# virtual methods
.method public getSubmitValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 65
    const-string/jumbo v0, ""

    .line 66
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    array-length v3, v1

    .line 68
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 75
    :cond_0
    return-object v0

    .line 69
    :cond_1
    if-eqz v1, :cond_2

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    aget v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public isSubmitValueChange()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 32
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    array-length v2, v1

    move v1, v0

    .line 34
    :goto_0
    if-lt v1, v2, :cond_1

    .line 40
    :cond_0
    :goto_1
    return v0

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    aget v3, v3, v1

    if-eq v3, v1, :cond_2

    .line 36
    const/4 v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public startEditMode(I)V
    .locals 2

    .prologue
    .line 20
    if-nez p1, :cond_1

    .line 29
    :cond_0
    return-void

    .line 24
    :cond_1
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    .line 26
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    aput v0, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public switchItem(II)V
    .locals 4

    .prologue
    .line 44
    if-ne p1, p2, :cond_0

    .line 62
    :goto_0
    return-void

    .line 48
    :cond_0
    if-ge p1, p2, :cond_2

    .line 49
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    aget v0, v0, p1

    .line 50
    :goto_1
    if-lt p1, p2, :cond_1

    .line 53
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    aput v0, v1, p2

    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    aput v2, v1, p1

    .line 50
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    aget v0, v0, p1

    .line 56
    :goto_2
    if-gt p1, p2, :cond_3

    .line 59
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    aput v0, v1, p2

    goto :goto_0

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    iget-object v2, p0, Lcom/alipay/android/app/template/view/widget/draglist/BlockEditModeUtil;->b:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    aput v2, v1, p1

    .line 56
    add-int/lit8 p1, p1, -0x1

    goto :goto_2
.end method
