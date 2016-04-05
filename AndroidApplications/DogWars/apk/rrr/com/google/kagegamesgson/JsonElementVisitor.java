package com.google.kagegamesgson;

import java.io.IOException;

abstract interface JsonElementVisitor
{
  public abstract void endArray(JsonArray paramJsonArray)
    throws IOException;
  
  public abstract void endObject(JsonObject paramJsonObject)
    throws IOException;
  
  public abstract void startArray(JsonArray paramJsonArray)
    throws IOException;
  
  public abstract void startObject(JsonObject paramJsonObject)
    throws IOException;
  
  public abstract void visitArrayMember(JsonArray paramJsonArray1, JsonArray paramJsonArray2, boolean paramBoolean)
    throws IOException;
  
  public abstract void visitArrayMember(JsonArray paramJsonArray, JsonObject paramJsonObject, boolean paramBoolean)
    throws IOException;
  
  public abstract void visitArrayMember(JsonArray paramJsonArray, JsonPrimitive paramJsonPrimitive, boolean paramBoolean)
    throws IOException;
  
  public abstract void visitNull()
    throws IOException;
  
  public abstract void visitNullArrayMember(JsonArray paramJsonArray, boolean paramBoolean)
    throws IOException;
  
  public abstract void visitNullObjectMember(JsonObject paramJsonObject, String paramString, boolean paramBoolean)
    throws IOException;
  
  public abstract void visitObjectMember(JsonObject paramJsonObject, String paramString, JsonArray paramJsonArray, boolean paramBoolean)
    throws IOException;
  
  public abstract void visitObjectMember(JsonObject paramJsonObject1, String paramString, JsonObject paramJsonObject2, boolean paramBoolean)
    throws IOException;
  
  public abstract void visitObjectMember(JsonObject paramJsonObject, String paramString, JsonPrimitive paramJsonPrimitive, boolean paramBoolean)
    throws IOException;
  
  public abstract void visitPrimitive(JsonPrimitive paramJsonPrimitive)
    throws IOException;
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonElementVisitor
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */