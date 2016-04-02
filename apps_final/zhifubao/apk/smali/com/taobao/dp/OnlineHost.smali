.class public final enum Lcom/taobao/dp/OnlineHost;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/dp/OnlineHost;

.field public static final enum GENERAL:Lcom/taobao/dp/OnlineHost;

.field public static final enum USA:Lcom/taobao/dp/OnlineHost;


# instance fields
.field private mHost:Ljava/lang/String;

.field private mIndex:I

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/taobao/dp/OnlineHost;

    const-string/jumbo v1, "GENERAL"

    const-string/jumbo v3, "GENERAL"

    const-string/jumbo v4, "ynuf.alipay.com"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/taobao/dp/OnlineHost;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/dp/OnlineHost;->GENERAL:Lcom/taobao/dp/OnlineHost;

    new-instance v3, Lcom/taobao/dp/OnlineHost;

    const-string/jumbo v4, "USA"

    const-string/jumbo v6, "USA"

    const-string/jumbo v7, "us.ynuf.alipay.com"

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/taobao/dp/OnlineHost;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/taobao/dp/OnlineHost;->USA:Lcom/taobao/dp/OnlineHost;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/taobao/dp/OnlineHost;

    sget-object v1, Lcom/taobao/dp/OnlineHost;->GENERAL:Lcom/taobao/dp/OnlineHost;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/dp/OnlineHost;->USA:Lcom/taobao/dp/OnlineHost;

    aput-object v1, v0, v9

    sput-object v0, Lcom/taobao/dp/OnlineHost;->$VALUES:[Lcom/taobao/dp/OnlineHost;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/taobao/dp/OnlineHost;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/taobao/dp/OnlineHost;->mHost:Ljava/lang/String;

    iput p5, p0, Lcom/taobao/dp/OnlineHost;->mIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/dp/OnlineHost;
    .locals 1

    const-class v0, Lcom/taobao/dp/OnlineHost;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/taobao/dp/OnlineHost;

    return-object v0
.end method

.method public static values()[Lcom/taobao/dp/OnlineHost;
    .locals 1

    sget-object v0, Lcom/taobao/dp/OnlineHost;->$VALUES:[Lcom/taobao/dp/OnlineHost;

    invoke-virtual {v0}, [Lcom/taobao/dp/OnlineHost;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/dp/OnlineHost;

    return-object v0
.end method


# virtual methods
.method public final getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/OnlineHost;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/taobao/dp/OnlineHost;->mIndex:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/taobao/dp/OnlineHost;->mName:Ljava/lang/String;

    return-object v0
.end method
