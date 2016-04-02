.class public interface abstract Lcom/j256/ormlite/field/FieldConverter;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getSqlType()Lcom/j256/ormlite/field/SqlType;
.end method

.method public abstract isStreamType()Z
.end method

.method public abstract javaToSqlArg(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract parseDefaultString(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract resultStringToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/String;I)Ljava/lang/Object;
.end method

.method public abstract resultToJava(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
.end method

.method public abstract resultToSqlArg(Lcom/j256/ormlite/field/FieldType;Lcom/j256/ormlite/support/DatabaseResults;I)Ljava/lang/Object;
.end method

.method public abstract sqlArgToJava(Lcom/j256/ormlite/field/FieldType;Ljava/lang/Object;I)Ljava/lang/Object;
.end method
