.class public Lcom/inmobi/monetization/internal/LtvpErrorCode;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/inmobi/monetization/internal/LtvpErrorCode;->a:I

    iput-object p2, p0, Lcom/inmobi/monetization/internal/LtvpErrorCode;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lcom/inmobi/monetization/internal/LtvpErrorCode;->a:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/monetization/internal/LtvpErrorCode;->b:Ljava/lang/String;

    return-object v0
.end method
