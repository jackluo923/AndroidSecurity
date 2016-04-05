package jp.innovationplus.ipp.jsontype;

public class IPPProfile
{
  private IPPAddress address;
  private long birth;
  private String firstName;
  private int gender;
  private String lastName;
  private String phoneNumber;
  private String screenName;
  private long timestamp = System.currentTimeMillis();
  
  public IPPAddress getAddress()
  {
    return address;
  }
  
  public long getBirth()
  {
    return birth;
  }
  
  public String getFirstName()
  {
    return firstName;
  }
  
  public int getGender()
  {
    return gender;
  }
  
  public String getLastName()
  {
    return lastName;
  }
  
  public String getPhoneNumber()
  {
    return phoneNumber;
  }
  
  public String getScreenName()
  {
    return screenName;
  }
  
  public long getTimestamp()
  {
    return timestamp;
  }
  
  public void setAddress(IPPAddress paramIPPAddress)
  {
    address = paramIPPAddress;
  }
  
  public void setBirth(long paramLong)
  {
    birth = paramLong;
  }
  
  public void setFirstName(String paramString)
  {
    firstName = paramString;
  }
  
  public void setGender(int paramInt)
  {
    gender = paramInt;
  }
  
  public void setLastName(String paramString)
  {
    lastName = paramString;
  }
  
  public void setPhoneNumber(String paramString)
  {
    phoneNumber = paramString;
  }
  
  public void setScreenName(String paramString)
  {
    screenName = paramString;
  }
  
  public void setTimestamp(long paramLong)
  {
    timestamp = paramLong;
  }
  
  public String toString()
  {
    return "IPPProfile [birth=" + birth + ", firstName=" + firstName + ", lastName=" + lastName + ", phoneNumber=" + phoneNumber + ", screenName=" + screenName + ", gender=" + gender + ", address=" + address + ", timestamp=" + timestamp + "]";
  }
  
  public static class IPPAddress
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
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.jsontype.IPPProfile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */