.class public final enum Lcom/alipay/android/app/data/Orientation;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/data/Orientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LeftInAndRightOut:Lcom/alipay/android/app/data/Orientation;

.field public static final enum LeftInOnly:Lcom/alipay/android/app/data/Orientation;

.field public static final enum RightInAndLeftOut:Lcom/alipay/android/app/data/Orientation;

.field public static final enum RightInOnly:Lcom/alipay/android/app/data/Orientation;

.field private static final synthetic d:[Lcom/alipay/android/app/data/Orientation;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/android/app/data/Orientation;

    const-string/jumbo v1, "LeftInOnly"

    const-string/jumbo v3, "left_in"

    const-string/jumbo v4, "msp_left_in"

    invoke-static {v4}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "msp_alpha_out"

    invoke-static {v5}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/data/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/app/data/Orientation;->LeftInOnly:Lcom/alipay/android/app/data/Orientation;

    new-instance v3, Lcom/alipay/android/app/data/Orientation;

    const-string/jumbo v4, "RightInOnly"

    const-string/jumbo v6, "right_in"

    const-string/jumbo v0, "msp_right_in"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v0, "msp_alpha_out"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v8

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/app/data/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/alipay/android/app/data/Orientation;->RightInOnly:Lcom/alipay/android/app/data/Orientation;

    new-instance v3, Lcom/alipay/android/app/data/Orientation;

    const-string/jumbo v4, "LeftInAndRightOut"

    const-string/jumbo v6, "left_in_right_out"

    const-string/jumbo v0, "msp_left_in"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v0, "msp_right_out"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v8

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/app/data/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/alipay/android/app/data/Orientation;->LeftInAndRightOut:Lcom/alipay/android/app/data/Orientation;

    new-instance v3, Lcom/alipay/android/app/data/Orientation;

    const-string/jumbo v4, "RightInAndLeftOut"

    const-string/jumbo v6, "right_in_left_out"

    const-string/jumbo v0, "msp_right_in"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v0, "msp_left_out"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->b(Ljava/lang/String;)I

    move-result v8

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/app/data/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/alipay/android/app/data/Orientation;->RightInAndLeftOut:Lcom/alipay/android/app/data/Orientation;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/android/app/data/Orientation;

    sget-object v1, Lcom/alipay/android/app/data/Orientation;->LeftInOnly:Lcom/alipay/android/app/data/Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/app/data/Orientation;->RightInOnly:Lcom/alipay/android/app/data/Orientation;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alipay/android/app/data/Orientation;->LeftInAndRightOut:Lcom/alipay/android/app/data/Orientation;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alipay/android/app/data/Orientation;->RightInAndLeftOut:Lcom/alipay/android/app/data/Orientation;

    aput-object v1, v0, v11

    sput-object v0, Lcom/alipay/android/app/data/Orientation;->d:[Lcom/alipay/android/app/data/Orientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/app/data/Orientation;->a:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/android/app/data/Orientation;->b:I

    iput p5, p0, Lcom/alipay/android/app/data/Orientation;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/data/Orientation;
    .locals 1

    const-class v0, Lcom/alipay/android/app/data/Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/Orientation;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/data/Orientation;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/Orientation;->d:[Lcom/alipay/android/app/data/Orientation;

    invoke-virtual {v0}, [Lcom/alipay/android/app/data/Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/data/Orientation;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/Orientation;->c:I

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/data/Orientation;->b:I

    return v0
.end method
