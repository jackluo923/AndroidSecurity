.class public final Lcom/inmobi/androidsdk/impl/AdException;
.super Ljava/lang/Exception;


# static fields
.field public static final INTERNAL_ERROR:I = 0xc8

.field public static final INVALID_APP_ID:I = 0x190

.field public static final INVALID_REQUEST:I = 0x12c

.field public static final NO_FILL:I = 0x64

.field private static final serialVersionUID:J = -0x367500f272604013L


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->b:Ljava/lang/String;

    const/16 v0, 0x257

    iput v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->c:I

    iput p2, p0, Lcom/inmobi/androidsdk/impl/AdException;->a:I

    iput-object p3, p0, Lcom/inmobi/androidsdk/impl/AdException;->b:Ljava/lang/String;

    iput p4, p0, Lcom/inmobi/androidsdk/impl/AdException;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->b:Ljava/lang/String;

    const/16 v0, 0x257

    iput v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->c:I

    iput p3, p0, Lcom/inmobi/androidsdk/impl/AdException;->a:I

    iput-object p4, p0, Lcom/inmobi/androidsdk/impl/AdException;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->a:I

    return v0
.end method

.method public final getErrorCode()Lcom/inmobi/androidsdk/AdRequest$ErrorCode;
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->a:I

    sparse-switch v0, :sswitch_data_0

    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INVALID_APP_ID:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->NO_FILL:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getHttpCode()I
    .locals 1

    iget v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->c:I

    return v0
.end method

.method public final getImpressionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/inmobi/androidsdk/impl/AdException;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(I)V
    .locals 0

    iput p1, p0, Lcom/inmobi/androidsdk/impl/AdException;->a:I

    return-void
.end method
