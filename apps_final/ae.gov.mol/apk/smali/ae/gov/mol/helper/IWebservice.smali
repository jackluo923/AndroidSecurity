.class public interface abstract Lae/gov/mol/helper/IWebservice;
.super Ljava/lang/Object;
.source "IWebservice.java"


# virtual methods
.method public abstract checkInternetConnection(Ljava/lang/String;Lorg/ksoap2/serialization/SoapSerializationEnvelope;)Z
.end method

.method public abstract checkInternetConnectivity()Z
.end method

.method public abstract getSoapObject(Ljava/lang/String;Ljava/lang/String;)Lorg/ksoap2/serialization/SoapObject;
.end method

.method public abstract getWebReponse(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)Ljava/lang/Object;
.end method
