.class public Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[I

.field private final c:I


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The sections and counts arrays must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->a:[Ljava/lang/String;

    array-length v1, p2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->b:[I

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->a:[Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v2, v0

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->b:[I

    aput v1, v2, v0

    aget v2, p2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->a:[Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->c:I

    return-void
.end method


# virtual methods
.method public getPositionForSection(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->b:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->c:I

    if-lt p1, v0, :cond_2

    :cond_0
    const/4 v0, -0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->a:[Ljava/lang/String;

    return-object v0
.end method
