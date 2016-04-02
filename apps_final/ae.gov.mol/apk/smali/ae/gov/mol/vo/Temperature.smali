.class public Lae/gov/mol/vo/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"


# instance fields
.field public icon:Ljava/lang/String;

.field public tempValue:Ljava/lang/String;

.field public weather:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Temperature;->tempValue:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Temperature;->weather:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lae/gov/mol/vo/Temperature;->icon:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lae/gov/mol/vo/Temperature;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTempValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lae/gov/mol/vo/Temperature;->tempValue:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lae/gov/mol/vo/Temperature;->weather:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lae/gov/mol/vo/Temperature;->icon:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTempValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "tempValue"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lae/gov/mol/vo/Temperature;->tempValue:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .locals 0
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lae/gov/mol/vo/Temperature;->weather:Ljava/lang/String;

    .line 45
    return-void
.end method
