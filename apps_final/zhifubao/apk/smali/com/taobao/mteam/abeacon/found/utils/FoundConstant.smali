.class public Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[B

.field public static final c:[B

.field public static d:I

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x61a8

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    sput-object v0, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->a:[B

    new-array v0, v2, [B

    aput-byte v2, v0, v3

    sput-object v0, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->b:[B

    new-array v0, v2, [B

    sput-object v0, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->c:[B

    sput v4, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->d:I

    sput v4, Lcom/taobao/mteam/abeacon/found/utils/FoundConstant;->e:I

    return-void
.end method
