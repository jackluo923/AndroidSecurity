.class public final Lcom/taobao/wireless/security/adapter/j/a$b;
.super Ljava/lang/Enum;


# static fields
.field public static a:[I

.field private static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/wireless/security/adapter/j/a$b;->b:[I

    invoke-static {}, Lcom/taobao/wireless/security/adapter/j/a$b;->a()[I

    move-result-object v0

    sput-object v0, Lcom/taobao/wireless/security/adapter/j/a$b;->a:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public static a()[I
    .locals 1

    sget-object v0, Lcom/taobao/wireless/security/adapter/j/a$b;->b:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
