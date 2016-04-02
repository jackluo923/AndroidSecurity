.class public Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
.super Ljava/lang/Object;
.source "LogEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final ALL_INT:I = -0x80000000

.field public static final DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final DEBUG_INT:I = 0x2710

.field public static final ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final ERROR_INT:I = 0x9c40

.field public static final INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final INFO_INT:I = 0x4e20

.field public static final OFF:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final OFF_INT:I = 0x1388

.field public static final VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final VERBOSE_INT:I = 0x1388

.field public static final WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

.field public static final WARN_INT:I = 0x7530

.field private static final serialVersionUID:J = -0xb4c3d0f032cb399L


# instance fields
.field public final levelInt:I

.field public final levelStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1388

    .line 111
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const v1, 0x9c40

    const-string/jumbo v2, "E"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 116
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/16 v1, 0x7530

    const-string/jumbo v2, "W"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 122
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/16 v1, 0x4e20

    const-string/jumbo v2, "I"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 128
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/16 v1, 0x2710

    const-string/jumbo v2, "D"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 134
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v1, "V"

    invoke-direct {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 139
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const-string/jumbo v1, "OFF"

    invoke-direct {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->OFF:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    .line 144
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    const/high16 v1, -0x80000000

    const-string/jumbo v2, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ALL:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelInt:I

    .line 154
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelStr:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static toLevel(I)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->toLevel(ILcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(ILcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 0

    .prologue
    .line 213
    sparse-switch p0, :sswitch_data_0

    .line 225
    :goto_0
    return-object p1

    .line 215
    :sswitch_0
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 217
    :sswitch_1
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 219
    :sswitch_2
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 221
    :sswitch_3
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 223
    :sswitch_4
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x1388 -> :sswitch_0
        0x2710 -> :sswitch_1
        0x4e20 -> :sswitch_2
        0x7530 -> :sswitch_3
        0x9c40 -> :sswitch_4
    .end sparse-switch
.end method

.method public static toLevel(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->toLevel(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    return-object v0
.end method

.method public static toLevel(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 234
    if-nez p0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-object p1

    .line 238
    :cond_1
    const-string/jumbo v0, "ALL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ALL:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 241
    :cond_2
    const-string/jumbo v0, "TRACE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->VERBOSE:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 244
    :cond_3
    const-string/jumbo v0, "DEBUG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 247
    :cond_4
    const-string/jumbo v0, "INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 248
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 250
    :cond_5
    const-string/jumbo v0, "WARN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 251
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->WARN:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 253
    :cond_6
    const-string/jumbo v0, "ERROR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0

    .line 256
    :cond_7
    const-string/jumbo v0, "OFF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    sget-object p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->OFF:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->DEBUG:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->toLevel(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isGreaterOrEqual(Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Z
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelInt:I

    iget v1, p1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelInt:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toInt()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelInt:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->levelStr:Ljava/lang/String;

    return-object v0
.end method
