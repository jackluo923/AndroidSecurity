package com.inmobi.commons;

public enum MaritalStatus
{
  static
  {
    RELATIONSHIP = new MaritalStatus("RELATIONSHIP", 1);
    ENGAGED = new MaritalStatus("ENGAGED", 2);
  }
  
  private MaritalStatus() {}
}

/* Location:
 * Qualified Name:     com.inmobi.commons.MaritalStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */