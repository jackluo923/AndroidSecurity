.class final enum Lcom/alipay/android/app/json/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/json/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSED:Lcom/alipay/android/app/json/a;

.field public static final enum DANGLING_NAME:Lcom/alipay/android/app/json/a;

.field public static final enum EMPTY_ARRAY:Lcom/alipay/android/app/json/a;

.field public static final enum EMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

.field public static final enum EMPTY_OBJECT:Lcom/alipay/android/app/json/a;

.field public static final enum NONEMPTY_ARRAY:Lcom/alipay/android/app/json/a;

.field public static final enum NONEMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

.field public static final enum NONEMPTY_OBJECT:Lcom/alipay/android/app/json/a;

.field private static final synthetic a:[Lcom/alipay/android/app/json/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "EMPTY_ARRAY"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/json/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/a;->EMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    new-instance v0, Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "NONEMPTY_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/json/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    new-instance v0, Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "EMPTY_OBJECT"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/json/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/a;->EMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    new-instance v0, Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "DANGLING_NAME"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/json/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/a;->DANGLING_NAME:Lcom/alipay/android/app/json/a;

    new-instance v0, Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "NONEMPTY_OBJECT"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/json/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    new-instance v0, Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "EMPTY_DOCUMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/json/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/a;->EMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    new-instance v0, Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "NONEMPTY_DOCUMENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/json/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/a;->NONEMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    new-instance v0, Lcom/alipay/android/app/json/a;

    const-string/jumbo v1, "CLOSED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/json/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/json/a;->CLOSED:Lcom/alipay/android/app/json/a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/alipay/android/app/json/a;

    sget-object v1, Lcom/alipay/android/app/json/a;->EMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/json/a;->NONEMPTY_ARRAY:Lcom/alipay/android/app/json/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/json/a;->EMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/json/a;->DANGLING_NAME:Lcom/alipay/android/app/json/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/json/a;->NONEMPTY_OBJECT:Lcom/alipay/android/app/json/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/json/a;->EMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/json/a;->NONEMPTY_DOCUMENT:Lcom/alipay/android/app/json/a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/json/a;->CLOSED:Lcom/alipay/android/app/json/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/json/a;->a:[Lcom/alipay/android/app/json/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/json/a;
    .locals 1

    const-class v0, Lcom/alipay/android/app/json/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/json/a;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/json/a;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/json/a;->a:[Lcom/alipay/android/app/json/a;

    invoke-virtual {v0}, [Lcom/alipay/android/app/json/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/json/a;

    return-object v0
.end method
