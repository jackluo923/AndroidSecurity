.class public final enum Lcom/alipay/android/app/template/view/AlignType;
.super Ljava/lang/Enum;
.source "AlignType.java"


# static fields
.field private static final synthetic a:[Lcom/alipay/android/app/template/view/AlignType;

.field public static final enum baseline:Lcom/alipay/android/app/template/view/AlignType;

.field public static final enum center:Lcom/alipay/android/app/template/view/AlignType;

.field public static final enum center_horizontal:Lcom/alipay/android/app/template/view/AlignType;

.field public static final enum center_vertical:Lcom/alipay/android/app/template/view/AlignType;

.field public static final enum end:Lcom/alipay/android/app/template/view/AlignType;

.field public static final enum left:Lcom/alipay/android/app/template/view/AlignType;

.field public static final enum right:Lcom/alipay/android/app/template/view/AlignType;

.field public static final enum start:Lcom/alipay/android/app/template/view/AlignType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/alipay/android/app/template/view/AlignType;

    const-string/jumbo v1, "center"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/template/view/AlignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->center:Lcom/alipay/android/app/template/view/AlignType;

    new-instance v0, Lcom/alipay/android/app/template/view/AlignType;

    const-string/jumbo v1, "left"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/template/view/AlignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->left:Lcom/alipay/android/app/template/view/AlignType;

    new-instance v0, Lcom/alipay/android/app/template/view/AlignType;

    const-string/jumbo v1, "right"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/template/view/AlignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->right:Lcom/alipay/android/app/template/view/AlignType;

    new-instance v0, Lcom/alipay/android/app/template/view/AlignType;

    const-string/jumbo v1, "end"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/template/view/AlignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->end:Lcom/alipay/android/app/template/view/AlignType;

    new-instance v0, Lcom/alipay/android/app/template/view/AlignType;

    const-string/jumbo v1, "start"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/template/view/AlignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    new-instance v0, Lcom/alipay/android/app/template/view/AlignType;

    const-string/jumbo v1, "center_vertical"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/view/AlignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->center_vertical:Lcom/alipay/android/app/template/view/AlignType;

    new-instance v0, Lcom/alipay/android/app/template/view/AlignType;

    const-string/jumbo v1, "center_horizontal"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/view/AlignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->center_horizontal:Lcom/alipay/android/app/template/view/AlignType;

    new-instance v0, Lcom/alipay/android/app/template/view/AlignType;

    const-string/jumbo v1, "baseline"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/template/view/AlignType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->baseline:Lcom/alipay/android/app/template/view/AlignType;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/android/app/template/view/AlignType;

    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->center:Lcom/alipay/android/app/template/view/AlignType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->left:Lcom/alipay/android/app/template/view/AlignType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->right:Lcom/alipay/android/app/template/view/AlignType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->end:Lcom/alipay/android/app/template/view/AlignType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/template/view/AlignType;->start:Lcom/alipay/android/app/template/view/AlignType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->center_vertical:Lcom/alipay/android/app/template/view/AlignType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->center_horizontal:Lcom/alipay/android/app/template/view/AlignType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/template/view/AlignType;->baseline:Lcom/alipay/android/app/template/view/AlignType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/template/view/AlignType;->a:[Lcom/alipay/android/app/template/view/AlignType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/template/view/AlignType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/app/template/view/AlignType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/view/AlignType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/template/view/AlignType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/app/template/view/AlignType;->a:[Lcom/alipay/android/app/template/view/AlignType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/app/template/view/AlignType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
