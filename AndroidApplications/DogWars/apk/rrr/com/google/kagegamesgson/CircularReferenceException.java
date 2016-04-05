package com.google.kagegamesgson;

final class CircularReferenceException
  extends RuntimeException
{
  private static final long serialVersionUID = 7444343294106513081L;
  private final Object offendingNode;
  
  CircularReferenceException(Object paramObject)
  {
    super(str);
    offendingNode = paramObject;
  }
  
  public IllegalStateException createDetailedException(FieldAttributes paramFieldAttributes)
  {
    StringBuilder localStringBuilder = new java/lang/StringBuilder;
    Object localObject1 = getMessage();
    localStringBuilder.<init>((String)localObject1);
    if (paramFieldAttributes != null)
    {
      localObject1 = "\n  ";
      localObject1 = localStringBuilder.append((String)localObject1);
      localObject2 = "Offending field: ";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      String str = paramFieldAttributes.getName();
      localObject2 = ((StringBuilder)localObject2).append(str);
      str = "\n";
      localObject2 = ((StringBuilder)localObject2).append(str);
      localObject2 = ((StringBuilder)localObject2).toString();
      ((StringBuilder)localObject1).append((String)localObject2);
    }
    localObject1 = offendingNode;
    if (localObject1 != null)
    {
      localObject1 = "\n  ";
      localObject1 = localStringBuilder.append((String)localObject1);
      localObject2 = "Offending object: ";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = offendingNode;
      ((StringBuilder)localObject1).append(localObject2);
    }
    localObject1 = new java/lang/IllegalStateException;
    Object localObject2 = localStringBuilder.toString();
    ((IllegalStateException)localObject1).<init>((String)localObject2, this);
    return (IllegalStateException)localObject1;
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.CircularReferenceException
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */