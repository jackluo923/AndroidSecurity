.class public Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;


# instance fields
.field private b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseComponent;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a:Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(II)V
    .locals 4

    if-ne p1, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ge p1, p2, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aget v0, v0, p1

    :goto_1
    if-ge p1, p2, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    add-int/lit8 v3, p1, 0x1

    aget v2, v2, v3

    aput v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aput v0, v1, p2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aget v0, v0, p1

    :goto_2
    if-le p1, p2, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    aput v2, v1, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aput v0, v1, p2

    goto :goto_0
.end method

.method public final b()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aget v3, v3, v1

    if-eq v3, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    array-length v3, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method
