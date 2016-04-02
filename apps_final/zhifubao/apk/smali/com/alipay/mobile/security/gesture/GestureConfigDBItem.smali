.class public Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "hrdyutr"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private data:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private udrtif:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        id = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getUdrtif()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->udrtif:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->data:Ljava/lang/String;

    return-void
.end method

.method public setUdrtif(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/GestureConfigDBItem;->udrtif:Ljava/lang/String;

    return-void
.end method
