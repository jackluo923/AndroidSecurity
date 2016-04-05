package com.google.kagegamesgson;

import java.io.IOException;

class DelegatingJsonElementVisitor
  implements JsonElementVisitor
{
  private final JsonElementVisitor delegate;
  
  protected DelegatingJsonElementVisitor(JsonElementVisitor paramJsonElementVisitor)
  {
    Preconditions.checkNotNull(paramJsonElementVisitor);
    delegate = paramJsonElementVisitor;
  }
  
  public void endArray(JsonArray paramJsonArray)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.endArray(paramJsonArray);
  }
  
  public void endObject(JsonObject paramJsonObject)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.endObject(paramJsonObject);
  }
  
  public void startArray(JsonArray paramJsonArray)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.startArray(paramJsonArray);
  }
  
  public void startObject(JsonObject paramJsonObject)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.startObject(paramJsonObject);
  }
  
  public void visitArrayMember(JsonArray paramJsonArray1, JsonArray paramJsonArray2, boolean paramBoolean)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitArrayMember(paramJsonArray1, paramJsonArray2, paramBoolean);
  }
  
  public void visitArrayMember(JsonArray paramJsonArray, JsonObject paramJsonObject, boolean paramBoolean)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitArrayMember(paramJsonArray, paramJsonObject, paramBoolean);
  }
  
  public void visitArrayMember(JsonArray paramJsonArray, JsonPrimitive paramJsonPrimitive, boolean paramBoolean)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitArrayMember(paramJsonArray, paramJsonPrimitive, paramBoolean);
  }
  
  public void visitNull()
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitNull();
  }
  
  public void visitNullArrayMember(JsonArray paramJsonArray, boolean paramBoolean)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitNullArrayMember(paramJsonArray, paramBoolean);
  }
  
  public void visitNullObjectMember(JsonObject paramJsonObject, String paramString, boolean paramBoolean)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitNullObjectMember(paramJsonObject, paramString, paramBoolean);
  }
  
  public void visitObjectMember(JsonObject paramJsonObject, String paramString, JsonArray paramJsonArray, boolean paramBoolean)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitObjectMember(paramJsonObject, paramString, paramJsonArray, paramBoolean);
  }
  
  public void visitObjectMember(JsonObject paramJsonObject1, String paramString, JsonObject paramJsonObject2, boolean paramBoolean)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitObjectMember(paramJsonObject1, paramString, paramJsonObject2, paramBoolean);
  }
  
  public void visitObjectMember(JsonObject paramJsonObject, String paramString, JsonPrimitive paramJsonPrimitive, boolean paramBoolean)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitObjectMember(paramJsonObject, paramString, paramJsonPrimitive, paramBoolean);
  }
  
  public void visitPrimitive(JsonPrimitive paramJsonPrimitive)
    throws IOException
  {
    JsonElementVisitor localJsonElementVisitor = delegate;
    localJsonElementVisitor.visitPrimitive(paramJsonPrimitive);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.DelegatingJsonElementVisitor
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */