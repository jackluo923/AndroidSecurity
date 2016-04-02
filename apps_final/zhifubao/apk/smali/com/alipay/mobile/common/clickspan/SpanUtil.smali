.class public Lcom/alipay/mobile/common/clickspan/SpanUtil;
.super Ljava/lang/Object;


# static fields
.field public static final MAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

.field public static final PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field public static final URL_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "\\d{7,23}|\\d+(\\-|\\x20)\\d{1,23}((\\-|\\x20)\\d{6,23}|((\\-|\\x20)\\d{3,23}){2})|\\d+(\\-|\\x20)\\d{3,23}((\\-|\\x20)\\d{6,23}|((\\-|\\x20)\\d{3,23}){1,2})|\\d+(\\-|\\x20)\\d{6,23}|\\+\\d+(\\-|\\x20)(\\d{1,23}((\\-|\\x20)\\d{6,23}|((\\-|\\x20)\\d{3,23}){2})|\\d{6,23})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/clickspan/SpanUtil;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "([A-Za-z0-9_]-*\\.*)+@([A-Za-z0-9_]-?)+(\\.[A-Za-z0-9_]{2,})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/clickspan/SpanUtil;->MAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "((?:(http|https|ftp|rtsp|alipay|alipays):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|(?:local)|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnprwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdeghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eosuw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agksyz]|v[aceginu]|w[fs]|(?:xn\\-\\-0zwm56d|xn\\-\\-11b5bs3a9aj6g|xn\\-\\-80akhbyknj4f|xn\\-\\-9t4b11yi5a|xn\\-\\-deba0ad|xn\\-\\-g6w251d|xn\\-\\-hgbk6aj7f53bba|xn\\-\\-hlcj6aya9esc7a|xn\\-\\-jxalpdlp|xn\\-\\-kgbechtv|xn\\-\\-zckzah)|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:([a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))|(?:\\[(?=(?:([a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2})))))*)?(?![a-zA-Z0-9])"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/clickspan/SpanUtil;->URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static highlightEmailSpan(Landroid/content/Context;Landroid/text/Spannable;IILcom/alipay/mobile/common/clickspan/ClickableSpanListener;)V
    .locals 6

    const/16 v5, 0x21

    sget-object v0, Lcom/alipay/mobile/common/clickspan/SpanUtil;->MAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v3, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p1, v1, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;

    invoke-direct {v4, p0, v3, p3, p4}, Lcom/alipay/mobile/common/clickspan/EmailClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/mobile/common/clickspan/ClickableSpanListener;)V

    invoke-interface {p1, v4, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static highlightPhoneSpan(Landroid/content/Context;Landroid/text/Spannable;IILcom/alipay/mobile/common/clickspan/ClickableSpanListener;)V
    .locals 6

    const/16 v5, 0x21

    sget-object v0, Lcom/alipay/mobile/common/clickspan/SpanUtil;->PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v3, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p1, v1, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/common/clickspan/PhoneClickableSpan;

    invoke-direct {v4, p0, v3, p3, p4}, Lcom/alipay/mobile/common/clickspan/PhoneClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/mobile/common/clickspan/ClickableSpanListener;)V

    invoke-interface {p1, v4, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static highlightUrlSpan(Landroid/content/Context;Landroid/text/Spannable;IILcom/alipay/mobile/common/clickspan/WebClickableSpanListener;)V
    .locals 6

    const/16 v5, 0x21

    sget-object v0, Lcom/alipay/mobile/common/clickspan/SpanUtil;->URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v3, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {p1, v1, v2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/common/clickspan/WebClickableSpan;

    invoke-direct {v4, p0, v3, p3, p4}, Lcom/alipay/mobile/common/clickspan/WebClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/mobile/common/clickspan/WebClickableSpanListener;)V

    invoke-interface {p1, v4, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-void
.end method
