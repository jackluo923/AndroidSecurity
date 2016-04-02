.class public final enum Lcom/alipay/android/app/template/view/DecorationType;
.super Ljava/lang/Enum;
.source "DecorationType.java"


# static fields
.field private static final synthetic b:[Lcom/alipay/android/app/template/view/DecorationType;

.field public static final enum line_through:Lcom/alipay/android/app/template/view/DecorationType;

.field public static final enum normal:Lcom/alipay/android/app/template/view/DecorationType;

.field public static final enum overline:Lcom/alipay/android/app/template/view/DecorationType;

.field public static final enum underline:Lcom/alipay/android/app/template/view/DecorationType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/alipay/android/app/template/view/DecorationType;

    const-string/jumbo v1, "normal"

    const-string/jumbo v2, "normal"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/android/app/template/view/DecorationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/template/view/DecorationType;->normal:Lcom/alipay/android/app/template/view/DecorationType;

    new-instance v0, Lcom/alipay/android/app/template/view/DecorationType;

    const-string/jumbo v1, "line_through"

    const-string/jumbo v2, "line-through"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/app/template/view/DecorationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/template/view/DecorationType;->line_through:Lcom/alipay/android/app/template/view/DecorationType;

    new-instance v0, Lcom/alipay/android/app/template/view/DecorationType;

    const-string/jumbo v1, "overline"

    const-string/jumbo v2, "overline"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/app/template/view/DecorationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/template/view/DecorationType;->overline:Lcom/alipay/android/app/template/view/DecorationType;

    new-instance v0, Lcom/alipay/android/app/template/view/DecorationType;

    const-string/jumbo v1, "underline"

    .line 8
    const-string/jumbo v2, "underline"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/app/template/view/DecorationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/template/view/DecorationType;->underline:Lcom/alipay/android/app/template/view/DecorationType;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/android/app/template/view/DecorationType;

    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->normal:Lcom/alipay/android/app/template/view/DecorationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->line_through:Lcom/alipay/android/app/template/view/DecorationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->overline:Lcom/alipay/android/app/template/view/DecorationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/template/view/DecorationType;->underline:Lcom/alipay/android/app/template/view/DecorationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/android/app/template/view/DecorationType;->b:[Lcom/alipay/android/app/template/view/DecorationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/alipay/android/app/template/view/DecorationType;->a:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/DecorationType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/view/DecorationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/DecorationType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/view/DecorationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/view/DecorationType;->b:[Lcom/alipay/android/app/template/view/DecorationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/view/DecorationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static valuesOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/DecorationType;
    .locals 5

    .prologue
    .line 21
    invoke-static {}, Lcom/alipay/android/app/template/view/DecorationType;->values()[Lcom/alipay/android/app/template/view/DecorationType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 27
    sget-object v0, Lcom/alipay/android/app/template/view/DecorationType;->normal:Lcom/alipay/android/app/template/view/DecorationType;

    :cond_0
    return-object v0

    .line 21
    :cond_1
    aget-object v0, v2, v1

    .line 22
    iget-object v4, v0, Lcom/alipay/android/app/template/view/DecorationType;->a:Ljava/lang/String;

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alipay/android/app/template/view/DecorationType;->a:Ljava/lang/String;

    return-object v0
.end method
