.class public final enum Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLIENT_CONFIRM:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum FORCE_EXIT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum INITIAL_INVALID:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum MIX_OLDCARD_PAY_ILLEGAL:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum NOT_POP_TYPE:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum PAYMENT_RESULT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum POP_TYPE:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum QUERY_RESULT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum SUCCESS:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field public static final enum TID_REFRESH:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

.field private static final synthetic b:[Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "SUCCESS"

    const-string/jumbo v2, "0"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->SUCCESS:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "FORCE_EXIT"

    const-string/jumbo v2, "force_exit"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->FORCE_EXIT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "INITIAL_INVALID"

    const-string/jumbo v2, "initial_invalid"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->INITIAL_INVALID:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "TID_REFRESH"

    const-string/jumbo v2, "tid_refresh_invalid"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->TID_REFRESH:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "PAYMENT_RESULT"

    const-string/jumbo v2, "payment_result"

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->PAYMENT_RESULT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "QUERY_RESULT"

    const/4 v2, 0x5

    const-string/jumbo v3, "query_result"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->QUERY_RESULT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "MIX_OLDCARD_PAY_ILLEGAL"

    const/4 v2, 0x6

    const-string/jumbo v3, "mix_oldcard_pay_illegal"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->MIX_OLDCARD_PAY_ILLEGAL:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "POP_TYPE"

    const/4 v2, 0x7

    const-string/jumbo v3, "pop_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->POP_TYPE:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "NOT_POP_TYPE"

    const/16 v2, 0x8

    const-string/jumbo v3, "not_pop_type"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->NOT_POP_TYPE:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const-string/jumbo v1, "CLIENT_CONFIRM"

    const/16 v2, 0x9

    const-string/jumbo v3, "client_confirm"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->CLIENT_CONFIRM:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->SUCCESS:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->FORCE_EXIT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->INITIAL_INVALID:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->TID_REFRESH:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->PAYMENT_RESULT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->QUERY_RESULT:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->MIX_OLDCARD_PAY_ILLEGAL:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->POP_TYPE:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->NOT_POP_TYPE:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->CLIENT_CONFIRM:Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->b:[Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->values()[Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget-object v5, v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->a:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;
    .locals 1

    const-class v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->b:[Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/ui/quickpay/data/MiniStatus;

    return-object v0
.end method
