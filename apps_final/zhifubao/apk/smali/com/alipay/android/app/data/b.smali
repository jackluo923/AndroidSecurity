.class final enum Lcom/alipay/android/app/data/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/data/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ClearInvalid:Lcom/alipay/android/app/data/b;

.field public static final enum Exit:Lcom/alipay/android/app/data/b;

.field public static final enum Next:Lcom/alipay/android/app/data/b;

.field public static final enum PrevStep:Lcom/alipay/android/app/data/b;

.field public static final enum PrevWindow:Lcom/alipay/android/app/data/b;

.field public static final enum Reset:Lcom/alipay/android/app/data/b;

.field public static final enum Wait:Lcom/alipay/android/app/data/b;

.field private static final synthetic a:[Lcom/alipay/android/app/data/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/app/data/b;

    const-string/jumbo v1, "Next"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/app/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/b;->Next:Lcom/alipay/android/app/data/b;

    new-instance v0, Lcom/alipay/android/app/data/b;

    const-string/jumbo v1, "PrevWindow"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/app/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/b;->PrevWindow:Lcom/alipay/android/app/data/b;

    new-instance v0, Lcom/alipay/android/app/data/b;

    const-string/jumbo v1, "Exit"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/app/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    new-instance v0, Lcom/alipay/android/app/data/b;

    const-string/jumbo v1, "ClearInvalid"

    invoke-direct {v0, v1, v6}, Lcom/alipay/android/app/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/b;->ClearInvalid:Lcom/alipay/android/app/data/b;

    new-instance v0, Lcom/alipay/android/app/data/b;

    const-string/jumbo v1, "PrevStep"

    invoke-direct {v0, v1, v7}, Lcom/alipay/android/app/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/b;->PrevStep:Lcom/alipay/android/app/data/b;

    new-instance v0, Lcom/alipay/android/app/data/b;

    const-string/jumbo v1, "Wait"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/b;->Wait:Lcom/alipay/android/app/data/b;

    new-instance v0, Lcom/alipay/android/app/data/b;

    const-string/jumbo v1, "Reset"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/data/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/app/data/b;->Reset:Lcom/alipay/android/app/data/b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/android/app/data/b;

    sget-object v1, Lcom/alipay/android/app/data/b;->Next:Lcom/alipay/android/app/data/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/data/b;->PrevWindow:Lcom/alipay/android/app/data/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/data/b;->Exit:Lcom/alipay/android/app/data/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/data/b;->ClearInvalid:Lcom/alipay/android/app/data/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/data/b;->PrevStep:Lcom/alipay/android/app/data/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/data/b;->Wait:Lcom/alipay/android/app/data/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/data/b;->Reset:Lcom/alipay/android/app/data/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/data/b;->a:[Lcom/alipay/android/app/data/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/data/b;
    .locals 1

    const-class v0, Lcom/alipay/android/app/data/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/data/b;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/data/b;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/data/b;->a:[Lcom/alipay/android/app/data/b;

    invoke-virtual {v0}, [Lcom/alipay/android/app/data/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/data/b;

    return-object v0
.end method
