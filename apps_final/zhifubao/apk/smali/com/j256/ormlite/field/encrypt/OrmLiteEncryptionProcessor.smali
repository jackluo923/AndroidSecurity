.class public Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;
.super Ljava/lang/Object;


# static fields
.field private static ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static decrypt([B)[B
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;->decrypt([B)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static encrypt([B)[B
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;->encrypt([B)[B

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getOrmLiteEncryptionAgent()Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;
    .locals 1

    sget-object v0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    return-object v0
.end method

.method public static setOrmLiteEncryptionAgent(Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;)V
    .locals 0

    sput-object p0, Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionProcessor;->ormLiteEncryptionAgent:Lcom/j256/ormlite/field/encrypt/OrmLiteEncryptionAgent;

    return-void
.end method
