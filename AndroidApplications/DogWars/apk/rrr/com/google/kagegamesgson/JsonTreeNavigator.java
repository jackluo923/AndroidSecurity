package com.google.kagegamesgson;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

final class JsonTreeNavigator
{
  private final boolean visitNulls;
  private final JsonElementVisitor visitor;
  
  JsonTreeNavigator(JsonElementVisitor paramJsonElementVisitor, boolean paramBoolean)
  {
    visitor = paramJsonElementVisitor;
    visitNulls = paramBoolean;
  }
  
  public void navigate(JsonElement paramJsonElement)
    throws IOException
  {
    boolean bool3 = paramJsonElement.isJsonNull();
    if (bool3)
    {
      JsonElementVisitor localJsonElementVisitor1 = visitor;
      localJsonElementVisitor1.visitNull();
    }
    for (;;)
    {
      return;
      boolean bool4 = paramJsonElement.isJsonArray();
      boolean bool1;
      Iterator localIterator;
      if (bool4)
      {
        JsonArray localJsonArray = paramJsonElement.getAsJsonArray();
        JsonElementVisitor localJsonElementVisitor2 = visitor;
        localJsonElementVisitor2.startArray(localJsonArray);
        bool1 = true;
        localIterator = localJsonArray.iterator();
        for (;;)
        {
          boolean bool5 = localIterator.hasNext();
          if (!bool5) {
            break;
          }
          Object localObject1 = localIterator.next();
          localObject1 = (JsonElement)localObject1;
          visitChild(localJsonArray, (JsonElement)localObject1, bool1);
          if (bool1) {
            bool1 = false;
          }
        }
        JsonElementVisitor localJsonElementVisitor3 = visitor;
        localJsonElementVisitor3.endArray(localJsonArray);
      }
      else
      {
        boolean bool6 = paramJsonElement.isJsonObject();
        Object localObject4;
        Object localObject5;
        if (bool6)
        {
          JsonObject localJsonObject = paramJsonElement.getAsJsonObject();
          Object localObject3 = visitor;
          ((JsonElementVisitor)localObject3).startObject(localJsonObject);
          bool1 = true;
          localObject3 = localJsonObject.entrySet();
          localIterator = ((Set)localObject3).iterator();
          for (;;)
          {
            boolean bool7 = localIterator.hasNext();
            if (!bool7) {
              break;
            }
            Object localObject2 = localIterator.next();
            localObject2 = (Map.Entry)localObject2;
            localObject4 = ((Map.Entry)localObject2).getKey();
            localObject4 = (String)localObject4;
            localObject5 = ((Map.Entry)localObject2).getValue();
            localObject5 = (JsonElement)localObject5;
            boolean bool2 = visitChild(localJsonObject, (String)localObject4, (JsonElement)localObject5, bool1);
            if ((bool2) && (bool1)) {
              bool1 = false;
            }
          }
          localObject4 = visitor;
          ((JsonElementVisitor)localObject4).endObject(localJsonObject);
        }
        else
        {
          localObject4 = visitor;
          localObject5 = paramJsonElement.getAsJsonPrimitive();
          ((JsonElementVisitor)localObject4).visitPrimitive((JsonPrimitive)localObject5);
        }
      }
    }
  }
  
  private void visitChild(JsonArray paramJsonArray, JsonElement paramJsonElement, boolean paramBoolean)
    throws IOException
  {
    boolean bool1 = paramJsonElement.isJsonNull();
    if (bool1)
    {
      JsonElementVisitor localJsonElementVisitor1 = visitor;
      localJsonElementVisitor1.visitNullArrayMember(paramJsonArray, paramBoolean);
      navigate(paramJsonElement);
    }
    for (;;)
    {
      return;
      boolean bool2 = paramJsonElement.isJsonArray();
      if (bool2)
      {
        JsonArray localJsonArray = paramJsonElement.getAsJsonArray();
        JsonElementVisitor localJsonElementVisitor2 = visitor;
        localJsonElementVisitor2.visitArrayMember(paramJsonArray, localJsonArray, paramBoolean);
        navigate(localJsonArray);
      }
      else
      {
        boolean bool3 = paramJsonElement.isJsonObject();
        JsonElementVisitor localJsonElementVisitor3;
        if (bool3)
        {
          JsonObject localJsonObject = paramJsonElement.getAsJsonObject();
          localJsonElementVisitor3 = visitor;
          localJsonElementVisitor3.visitArrayMember(paramJsonArray, localJsonObject, paramBoolean);
          navigate(localJsonObject);
        }
        else
        {
          localJsonElementVisitor3 = visitor;
          JsonPrimitive localJsonPrimitive = paramJsonElement.getAsJsonPrimitive();
          localJsonElementVisitor3.visitArrayMember(paramJsonArray, localJsonPrimitive, paramBoolean);
        }
      }
    }
  }
  
  private boolean visitChild(JsonObject paramJsonObject, String paramString, JsonElement paramJsonElement, boolean paramBoolean)
    throws IOException
  {
    boolean bool1 = paramJsonElement.isJsonNull();
    if (bool1)
    {
      bool1 = visitNulls;
      if (bool1)
      {
        Object localObject = visitor;
        ((JsonElementVisitor)localObject).visitNullObjectMember(paramJsonObject, paramString, paramBoolean);
        localObject = paramJsonElement.getAsJsonNull();
        navigate((JsonElement)localObject);
      }
    }
    for (;;)
    {
      for (boolean bool2 = true;; bool2 = false) {
        return bool2;
      }
      bool2 = paramJsonElement.isJsonArray();
      if (bool2)
      {
        JsonArray localJsonArray = paramJsonElement.getAsJsonArray();
        JsonElementVisitor localJsonElementVisitor1 = visitor;
        localJsonElementVisitor1.visitObjectMember(paramJsonObject, paramString, localJsonArray, paramBoolean);
        navigate(localJsonArray);
      }
      else
      {
        boolean bool3 = paramJsonElement.isJsonObject();
        JsonElementVisitor localJsonElementVisitor2;
        if (bool3)
        {
          JsonObject localJsonObject = paramJsonElement.getAsJsonObject();
          localJsonElementVisitor2 = visitor;
          localJsonElementVisitor2.visitObjectMember(paramJsonObject, paramString, localJsonObject, paramBoolean);
          navigate(localJsonObject);
        }
        else
        {
          localJsonElementVisitor2 = visitor;
          JsonPrimitive localJsonPrimitive = paramJsonElement.getAsJsonPrimitive();
          localJsonElementVisitor2.visitObjectMember(paramJsonObject, paramString, localJsonPrimitive, paramBoolean);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.JsonTreeNavigator
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */