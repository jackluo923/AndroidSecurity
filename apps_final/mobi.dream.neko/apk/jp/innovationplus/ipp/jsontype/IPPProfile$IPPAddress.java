package jp.innovationplus.ipp.jsontype;

public class IPPProfile$IPPAddress
{
  private String city;
  private String state;
  private String streetAddress;
  private String zipcode;
  
  public String getCity()
  {
    return city;
  }
  
  public String getState()
  {
    return state;
  }
  
  public String getStreetAddress()
  {
    return streetAddress;
  }
  
  public String getZipcode()
  {
    return zipcode;
  }
  
  public void setCity(String paramString)
  {
    city = paramString;
  }
  
  public void setState(String paramString)
  {
    state = paramString;
  }
  
  public void setStreetAddress(String paramString)
  {
    streetAddress = paramString;
  }
  
  public void setZipcode(String paramString)
  {
    zipcode = paramString;
  }
  
  public String toString()
  {
    return "IPPAdress [zipcode=" + zipcode + ", city=" + city + ", streetAddress=" + streetAddress + ", state=" + state + "]";
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.jsontype.IPPProfile.IPPAddress
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */