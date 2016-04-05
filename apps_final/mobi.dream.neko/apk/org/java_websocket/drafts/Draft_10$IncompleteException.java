package org.java_websocket.drafts;

class Draft_10$IncompleteException
  extends Throwable
{
  private static final long serialVersionUID = 7330519489840500997L;
  private int preferedsize;
  
  public Draft_10$IncompleteException(Draft_10 paramDraft_10, int paramInt)
  {
    preferedsize = paramInt;
  }
  
  public int getPreferedSize()
  {
    return preferedsize;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.drafts.Draft_10.IncompleteException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */