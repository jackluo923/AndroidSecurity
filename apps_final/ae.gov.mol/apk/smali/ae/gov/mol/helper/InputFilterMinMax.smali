.class public Lae/gov/mol/helper/InputFilterMinMax;
.super Ljava/lang/Object;
.source "InputFilterMinMax.java"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field private max:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Lae/gov/mol/helper/InputFilterMinMax;->max:I

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "min"    # Ljava/lang/String;
    .param p2, "max"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lae/gov/mol/helper/InputFilterMinMax;->max:I

    .line 29
    return-void
.end method

.method private isInRange(III)Z
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 51
    if-le p2, p1, :cond_2

    if-lt p3, p1, :cond_1

    if-gt p3, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-lt p3, p2, :cond_3

    if-le p3, p1, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 34
    :try_start_0
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    .line 35
    .local v0, "input":I
    iget v1, p0, Lae/gov/mol/helper/InputFilterMinMax;->max:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v1, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 39
    .end local v0    # "input":I
    :goto_0
    return-object v1

    .line 37
    :catch_0
    move-exception v1

    .line 39
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
