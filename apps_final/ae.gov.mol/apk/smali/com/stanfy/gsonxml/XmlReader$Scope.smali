.class final enum Lcom/stanfy/gsonxml/XmlReader$Scope;
.super Ljava/lang/Enum;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/stanfy/gsonxml/XmlReader$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_OBJECT"

    invoke-direct {v0, v1, v3}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;I)V

    .line 21
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 22
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_ARRAY"

    invoke-direct {v0, v1, v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 24
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_EMBEDDED_ARRAY"

    invoke-direct {v0, v1, v5}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;I)V

    .line 25
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 26
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_PRIMITIVE_EMBEDDED_ARRAY"

    invoke-direct {v0, v1, v6}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 28
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_PRIMITIVE_ARRAY"

    invoke-direct {v0, v1, v7}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 30
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "PRIMITIVE_VALUE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 32
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "NAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/stanfy/gsonxml/XmlReader$Scope;

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v3

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v4

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v5

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v6

    sget-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object v2, v0, v1

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->ENUM$VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stanfy/gsonxml/XmlReader$Scope;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    return-object v0
.end method

.method public static values()[Lcom/stanfy/gsonxml/XmlReader$Scope;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->ENUM$VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    array-length v1, v0

    new-array v2, v1, [Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
