.class public Lcom/alipay/asset/common/InputValidator;
.super Ljava/lang/Object;
.source "InputValidator.java"


# static fields
.field public static final ERROR_INVALID_FORMAT:I = -0x2

.field public static final ERROR_NULL_INPUT:I = -0x4

.field public static final ERROR_OUTOF_RANGE:I = -0x3

.field public static final NO_ERROR:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAmount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/asset/common/ValidateResult;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/alipay/asset/common/ValidateResult;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/ValidateResult;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 30
    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/android/phone/wealth/common/R$string;->amount_empty_err:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    .line 40
    :goto_0
    return-object v0

    .line 33
    :cond_0
    const-string/jumbo v4, "^[1-9]\\d*(([\\.]?[0-9]{1,2})?)$|^[0][\\.][1-9]$|^[0][\\.]([0-9][0-9])$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 34
    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/android/phone/wealth/common/R$string;->amount_format_err:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v1, v3

    .line 33
    goto :goto_1

    .line 38
    :cond_2
    iput-boolean v2, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    goto :goto_0
.end method

.method public static checkPaymentPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/asset/common/ValidateResult;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/alipay/asset/common/ValidateResult;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/ValidateResult;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    sget v2, Lcom/alipay/android/phone/wealth/common/R$string;->pay_password_empty_tip:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    .line 70
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    goto :goto_0
.end method

.method public static checkSmsCode(Landroid/content/Context;Ljava/lang/String;I)Lcom/alipay/asset/common/ValidateResult;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    new-instance v0, Lcom/alipay/asset/common/ValidateResult;

    invoke-direct {v0, p0}, Lcom/alipay/asset/common/ValidateResult;-><init>(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 85
    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    .line 86
    sget v1, Lcom/alipay/android/phone/wealth/common/R$string;->check_code_empty_err:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    .line 101
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, p2, :cond_1

    .line 89
    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    .line 91
    sget v1, Lcom/alipay/android/phone/wealth/common/R$string;->check_code_length_err:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 90
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_1
    const-string/jumbo v4, "^[0-9]*$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    .line 95
    iput-boolean v3, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    .line 96
    sget v1, Lcom/alipay/android/phone/wealth/common/R$string;->pay_passwd_format_err:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/asset/common/ValidateResult;->strErr:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v1, v3

    .line 94
    goto :goto_1

    .line 99
    :cond_3
    iput-boolean v2, v0, Lcom/alipay/asset/common/ValidateResult;->bRet:Z

    goto :goto_0
.end method
