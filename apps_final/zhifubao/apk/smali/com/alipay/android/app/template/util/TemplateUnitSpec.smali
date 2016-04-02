.class public Lcom/alipay/android/app/template/util/TemplateUnitSpec;
.super Ljava/lang/Object;
.source "TemplateUnitSpec.java"


# static fields
.field public static final T_UNIT_DP:I = 0x0

.field public static final T_UNIT_INVALID:I = -0x40000000

.field public static final T_UNIT_PER:I = 0x40000000

.field public static final T_UNIT_PX:I = 0x20000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMode(I)I
    .locals 1

    .prologue
    .line 42
    const/high16 v0, -0x20000000

    and-int/2addr v0, p0

    .line 43
    sparse-switch v0, :sswitch_data_0

    .line 54
    :goto_0
    return v0

    .line 45
    :sswitch_0
    const/4 v0, 0x0

    .line 46
    goto :goto_0

    .line 48
    :sswitch_1
    const/high16 v0, 0x40000000    # 2.0f

    .line 49
    goto :goto_0

    .line 51
    :sswitch_2
    const/high16 v0, 0x20000000

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        -0x60000000 -> :sswitch_1
        0x60000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getValue(I)I
    .locals 3

    .prologue
    .line 58
    const/high16 v0, -0x20000000

    and-int v1, p0, v0

    .line 59
    const/4 v0, 0x1

    .line 60
    const/high16 v2, 0x60000000

    if-eq v1, v2, :cond_0

    const/high16 v2, -0x60000000

    if-eq v1, v2, :cond_0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 61
    :cond_0
    const/4 v0, -0x1

    .line 63
    :cond_1
    const v1, 0x1fffffff

    and-int/2addr v1, p0

    mul-int/2addr v0, v1

    return v0
.end method

.method public static makeUnitSpec(II)I
    .locals 1

    .prologue
    .line 24
    if-gez p0, :cond_0

    .line 25
    sparse-switch p1, :sswitch_data_0

    .line 36
    :goto_0
    neg-int p0, p0

    .line 38
    :cond_0
    add-int v0, p0, p1

    return v0

    .line 27
    :sswitch_0
    const/high16 p1, 0x60000000

    .line 28
    goto :goto_0

    .line 30
    :sswitch_1
    const/high16 p1, -0x60000000

    .line 31
    goto :goto_0

    .line 33
    :sswitch_2
    const/high16 p1, -0x80000000

    goto :goto_0

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20000000 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v0

    .line 68
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v1

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TemplateUnitSpec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "UNIT DP "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    const/high16 v3, 0x20000000

    if-ne v0, v3, :cond_1

    .line 75
    const-string/jumbo v0, "UNIT PX "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_2

    .line 77
    const-string/jumbo v0, "UNIT PERCENT "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
