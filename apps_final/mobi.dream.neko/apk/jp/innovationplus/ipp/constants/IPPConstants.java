package jp.innovationplus.ipp.constants;

public class IPPConstants
{
  public static String descriptionErrorCode(int paramInt)
  {
    if (paramInt < 64636)
    {
      switch (paramInt)
      {
      default: 
        return "IPP_ERROR_CODE : UNEXPECTED_ERROR";
      case -1000: 
        return "IPP_KIT_ERROR : MALFORMED_URL";
      case -1001: 
        return "IPP_KIT_ERROR : FAILURE_OPEN_CONNECTION";
      case -1002: 
        return "IPP_KIT_ERROR : INVALID_PROTOCOL";
      case -1003: 
        return "IPP_KIT_ERROR : UNSET_APPLICATION_KEY";
      case -1004: 
        return "IPP_KIT_ERROR : FAILURE_JSON_GENERATION";
      case -1005: 
        return "IPP_KIT_ERROR : INVALID_JSON_MAPPING";
      case -1006: 
        return "IPP_KIT_ERROR : FAILURE_OPEN_JSON_DATA";
      case -1007: 
        return "IPP_KIT_ERROR : FAILURE_IO_STREAM";
      case -10000: 
        return "PLATFORM_SERVER_ERROR : NG_RESOURCE_NOT_FOUND";
      case -10003: 
        return "PLATFORM_SERVER_ERROR : NG_UNAUTHORIZED";
      case -10004: 
        return "PLATFORM_SERVER_ERROR : NG_PERMISSION_DENIED";
      case -10005: 
        return "PLATFORM_SERVER_ERROR : NG_UNEXPECTED_ERROR";
      }
      return "PLATFORM_SERVER_ERROR : NG_BAD_REQUEST";
    }
    return "HTTP RESPONSE CODE : " + -paramInt;
  }
  
  public class IPP_ERROR_CODE
  {
    public IPP_ERROR_CODE() {}
    
    public class IPP_KIT_ERROR
    {
      public static final int FAILURE_IO_STREAM = -1007;
      public static final int FAILURE_JSON_GENERATION = -1004;
      public static final int FAILURE_OPEN_CONNECTION = -1001;
      public static final int FAILURE_OPEN_JSON_DATA = -1006;
      public static final int INVALID_JSON_MAPPING = -1005;
      public static final int INVALID_PROTOCOL = -1002;
      public static final int MALFORMED_URL = -1000;
      public static final int UNSET_APPLICATION_KEY = -1003;
      
      public IPP_KIT_ERROR() {}
    }
    
    public class PLATFORM_SERVER_ERROR
    {
      public static final int INTERNAL_SERVER_ERROR = -100;
      public static final int NG_BAD_REQUEST = -10006;
      public static final int NG_PERMISSION_DENIED = -10004;
      public static final int NG_RESOURCE_NOT_FOUND = -10000;
      public static final int NG_UNAUTHORIZED = -10003;
      public static final int NG_UNEXPECTED_ERROR = -10005;
      
      public PLATFORM_SERVER_ERROR() {}
    }
  }
  
  public class IPP_PROFILE_FIELD_ELEMENT
  {
    public static final String ADDRESS = "address";
    public static final String BIRTH = "birth";
    public static final String FIRST_NAME = "firstName";
    public static final String GENDER = "gender";
    public static final String LAST_NAME = "lastName";
    public static final String PHONE_NUMBER = "phoneNumber";
    public static final String SCREEN_NAME = "screenName";
    
    public IPP_PROFILE_FIELD_ELEMENT() {}
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.constants.IPPConstants
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */