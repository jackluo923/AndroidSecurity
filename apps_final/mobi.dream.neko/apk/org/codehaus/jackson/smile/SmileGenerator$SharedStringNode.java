package org.codehaus.jackson.smile;

public final class SmileGenerator$SharedStringNode
{
  public final int index;
  public SharedStringNode next;
  public final String value;
  
  public SmileGenerator$SharedStringNode(String paramString, int paramInt, SharedStringNode paramSharedStringNode)
  {
    value = paramString;
    index = paramInt;
    next = paramSharedStringNode;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.smile.SmileGenerator.SharedStringNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */