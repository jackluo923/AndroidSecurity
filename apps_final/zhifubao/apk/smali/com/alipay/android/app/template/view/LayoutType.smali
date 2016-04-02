.class public final enum Lcom/alipay/android/app/template/view/LayoutType;
.super Ljava/lang/Enum;
.source "LayoutType.java"


# static fields
.field public static final enum BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

.field public static final enum INLINE:Lcom/alipay/android/app/template/view/LayoutType;

.field public static final enum INLINE_BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

.field public static final enum NONE:Lcom/alipay/android/app/template/view/LayoutType;

.field public static final enum WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

.field private static b:Ljava/util/Map;

.field private static final synthetic c:[Lcom/alipay/android/app/template/view/LayoutType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 9
    new-instance v1, Lcom/alipay/android/app/template/view/LayoutType;

    const-string/jumbo v2, "INLINE"

    const-string/jumbo v3, "inline"

    invoke-direct {v1, v2, v0, v3}, Lcom/alipay/android/app/template/view/LayoutType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/android/app/template/view/LayoutType;->INLINE:Lcom/alipay/android/app/template/view/LayoutType;

    new-instance v1, Lcom/alipay/android/app/template/view/LayoutType;

    const-string/jumbo v2, "BLOCK"

    const-string/jumbo v3, "block"

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/android/app/template/view/LayoutType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/android/app/template/view/LayoutType;->BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    new-instance v1, Lcom/alipay/android/app/template/view/LayoutType;

    const-string/jumbo v2, "INLINE_BLOCK"

    const-string/jumbo v3, "inline-block"

    invoke-direct {v1, v2, v5, v3}, Lcom/alipay/android/app/template/view/LayoutType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/android/app/template/view/LayoutType;->INLINE_BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    new-instance v1, Lcom/alipay/android/app/template/view/LayoutType;

    const-string/jumbo v2, "WEBKIT_BOX"

    .line 10
    const-string/jumbo v3, "-webkit-box"

    invoke-direct {v1, v2, v6, v3}, Lcom/alipay/android/app/template/view/LayoutType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    new-instance v1, Lcom/alipay/android/app/template/view/LayoutType;

    const-string/jumbo v2, "NONE"

    const-string/jumbo v3, "none"

    invoke-direct {v1, v2, v7, v3}, Lcom/alipay/android/app/template/view/LayoutType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/alipay/android/app/template/view/LayoutType;

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->INLINE:Lcom/alipay/android/app/template/view/LayoutType;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->INLINE_BLOCK:Lcom/alipay/android/app/template/view/LayoutType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->WEBKIT_BOX:Lcom/alipay/android/app/template/view/LayoutType;

    aput-object v2, v1, v6

    sget-object v2, Lcom/alipay/android/app/template/view/LayoutType;->NONE:Lcom/alipay/android/app/template/view/LayoutType;

    aput-object v2, v1, v7

    sput-object v1, Lcom/alipay/android/app/template/view/LayoutType;->c:[Lcom/alipay/android/app/template/view/LayoutType;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/alipay/android/app/template/view/LayoutType;->b:Ljava/util/Map;

    .line 15
    invoke-static {}, Lcom/alipay/android/app/template/view/LayoutType;->values()[Lcom/alipay/android/app/template/view/LayoutType;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_0

    .line 8
    return-void

    .line 15
    :cond_0
    aget-object v3, v1, v0

    .line 16
    sget-object v4, Lcom/alipay/android/app/template/view/LayoutType;->b:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/android/app/template/view/LayoutType;->a:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput-object p3, p0, Lcom/alipay/android/app/template/view/LayoutType;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/LayoutType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/view/LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/LayoutType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/view/LayoutType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/view/LayoutType;->c:[Lcom/alipay/android/app/template/view/LayoutType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/view/LayoutType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static valuesOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/LayoutType;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/view/LayoutType;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/LayoutType;

    goto :goto_0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/app/template/view/LayoutType;->a:Ljava/lang/String;

    return-object v0
.end method
