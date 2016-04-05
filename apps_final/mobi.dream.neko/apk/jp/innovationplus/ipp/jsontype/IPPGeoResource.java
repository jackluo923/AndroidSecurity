package jp.innovationplus.ipp.jsontype;

import java.util.ArrayList;
import java.util.List;
import org.codehaus.jackson.annotate.JsonIgnore;

public abstract class IPPGeoResource<T extends IPPApplicationResource>
{
  private List<IPPGeoLocation> geolocations = new ArrayList();
  private T resource;
  
  public List<IPPGeoLocation> getGeolocations()
  {
    return geolocations;
  }
  
  public T getResource()
  {
    return resource;
  }
  
  @JsonIgnore
  public abstract String getResourceName();
  
  public void setGeolocations(List<IPPGeoLocation> paramList)
  {
    geolocations = paramList;
  }
  
  public void setResource(T paramT)
  {
    resource = paramT;
  }
  
  public String toString()
  {
    return "IPPGeoResource [resource=" + resource + ", geolocations=" + geolocations + "]";
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.jsontype.IPPGeoResource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */