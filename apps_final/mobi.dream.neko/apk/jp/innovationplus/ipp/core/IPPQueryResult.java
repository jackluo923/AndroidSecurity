package jp.innovationplus.ipp.core;

public class IPPQueryResult<T>
{
  private T result;
  private int resultCode;
  private int resultCount;
  private String resultMessage;
  
  public T getResult()
  {
    return (T)result;
  }
  
  public int getResultCode()
  {
    return resultCode;
  }
  
  public int getResultCount()
  {
    return resultCount;
  }
  
  public String getResultMessage()
  {
    return resultMessage;
  }
  
  public void setResult(T paramT)
  {
    result = paramT;
  }
  
  public void setResultCode(int paramInt)
  {
    resultCode = paramInt;
  }
  
  public void setResultCount(int paramInt)
  {
    resultCount = paramInt;
  }
  
  public void setResultMessage(String paramString)
  {
    resultMessage = paramString;
  }
  
  public String toString()
  {
    return "IPPQueryResult [result=" + result + ", resultCode=" + resultCode + ", resultMessage=" + resultMessage + ", resultCount=" + resultCount + "]";
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.core.IPPQueryResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */