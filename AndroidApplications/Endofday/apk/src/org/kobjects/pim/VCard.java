package org.kobjects.pim;

public class VCard
  extends PimItem
{
  public VCard() {}
  
  public VCard(VCard paramVCard)
  {
    super(paramVCard);
  }
  
  public int getArraySize(String paramString)
  {
    String str1 = "n";
    boolean bool1 = paramString.equals(str1);
    int i;
    if (bool1) {
      i = 5;
    }
    for (;;)
    {
      return i;
      String str2 = "adr";
      boolean bool2 = paramString.equals(str2);
      int j;
      if (bool2) {
        j = 6;
      } else {
        j = -1;
      }
    }
  }
  
  public String getType()
  {
    String str = "vcard";
    return str;
  }
}

/* Location:
 * Qualified Name:     org.kobjects.pim.VCard
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */